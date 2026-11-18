package com.squareup.square_mobile_payments_sdk.modules

import com.squareup.square_mobile_payments_sdk.EngineEventStream
import android.os.Handler
import android.os.Looper
import io.flutter.plugin.common.MethodChannel

import com.squareup.sdk.mobilepayments.MobilePaymentsSdk
import com.squareup.sdk.mobilepayments.core.Result as SdkResult
import com.squareup.sdk.mobilepayments.payment.Payment
import com.squareup.sdk.mobilepayments.payment.PaymentHandle
import com.squareup.sdk.mobilepayments.payment.PromptMode
import com.squareup.sdk.mobilepayments.payment.AdditionalPaymentMethod

import com.squareup.square_mobile_payments_sdk.mappers.PaymentMapper
import com.squareup.square_mobile_payments_sdk.extensions.toOfflineMap
import com.squareup.square_mobile_payments_sdk.extensions.toOnlineMap
import com.squareup.square_mobile_payments_sdk.extensions.toMoneyMap
import com.squareup.square_mobile_payments_sdk.extensions.toOfflineMap
import com.squareup.square_mobile_payments_sdk.extensions.toPaymentErrorCodeName
import com.squareup.square_mobile_payments_sdk.extensions.toErrorDetailsMap
import com.squareup.square_mobile_payments_sdk.extensions.toIdempotencyKeyDataMap
import com.squareup.square_mobile_payments_sdk.extensions.toEntryMethodName
import com.squareup.square_mobile_payments_sdk.extensions.toPaymentHandleMap

class PaymentModule {
    private data class ActivePayment(
        val id: String,
        val handle: PaymentHandle,
        val promptMode: PromptMode
    )

    companion object {
        private val paymentManager = MobilePaymentsSdk.paymentManager()

        private val mainHandler = Handler(Looper.getMainLooper())
        private var activePayment: ActivePayment? = null

        private fun trackedPayment(): ActivePayment? =
            activePayment?.takeIf { it.handle === paymentManager.currentPaymentHandle }

        private fun resolveHandle(id: String?): PaymentHandle? =
            if (id == null) paymentManager.currentPaymentHandle
            else trackedPayment()?.takeIf { it.id == id }?.handle

        fun getCurrentPaymentHandleId(result: MethodChannel.Result) {
            result.success(trackedPayment()?.id)
        }

        internal val availableCardEntryMethodEvents = EngineEventStream { emit ->
            paymentManager.setAvailableCardEntryMethodChangedCallback { methods ->
                emit(mapOf(
                    "type" to "availableCardEntryMethodsChange",
                    "payload" to methods.map { it.toEntryMethodName() }
                ))
            }
        }

        @JvmStatic
        fun startPayment(
            result: MethodChannel.Result,
            paymentParameters: HashMap<String, Any>?,
            promptParameters: HashMap<String, Any>?,
            handleId: String?
        ) {
            if (paymentParameters == null || promptParameters == null) {
                result.error(
                    "missingParameters",
                    "paymentParameters or promptParameters must not be null",
                    null
                )
                return
            }
            // The mapper throws on bad input (unknown currency, unknown processingMode, a mistyped
            // field). Report that as a proper PaymentErrorCode instead of letting Flutter wrap it as
            // code "error", which Dart's PaymentError cannot parse and so loses the real message.
            val nativePaymentParameters = try {
                PaymentMapper.getPaymentParameters(paymentParameters)
            } catch (e: RuntimeException) {
                result.error("invalidPaymentParameters", e.message ?: "Invalid payment parameters", null)
                return
            }
            val nativePromptParameters = PaymentMapper.getPromptParameters(promptParameters)

            val id = handleId ?: java.util.UUID.randomUUID().toString()
            val promptMode = PaymentMapper.getPromptMode(promptParameters["mode"] as? String)
            val payment = paymentManager.startPaymentActivity(nativePaymentParameters, nativePromptParameters) { sdkResult ->
                mainHandler.post {
                    if (activePayment?.id == id) {
                        activePayment = null
                    }
                    when (sdkResult) {
                        is SdkResult.Success -> {
                            when (val payment = sdkResult.value) {
                                is Payment.OnlinePayment -> {
                                    val mappedPayment = payment.toOnlineMap()
                                    result.success(mappedPayment)
                                }
                                is Payment.OfflinePayment -> {
                                    val mappedPayment = payment.toOfflineMap()
                                    result.success(mappedPayment)
                                }
                            }
                        }
                        is SdkResult.Failure -> {
                            result.error(
                                sdkResult.errorCode.toPaymentErrorCodeName(),
                                sdkResult.errorMessage,
                                sdkResult.details.map { d -> d.toErrorDetailsMap() }
                            )
                        }
                    }
                }
            }
            if (payment === paymentManager.currentPaymentHandle) {
                activePayment = ActivePayment(id, payment, promptMode)
            }
        }

        @JvmStatic
        fun cancelPayment(result: MethodChannel.Result, handleId: String?) {
            val cancelResult = when (resolveHandle(handleId)?.cancel()) {
                PaymentHandle.CancelResult.CANCELED -> "canceled"
                PaymentHandle.CancelResult.NOT_CANCELABLE -> "notCancelable"
                PaymentHandle.CancelResult.NO_PAYMENT_IN_PROGRESS, null -> "noPaymentInProgress"
            }
            result.success(cancelResult)
        }

        @JvmStatic
        fun getPaymentHandleParams(result: MethodChannel.Result, handleId: String?) {
            val handle = resolveHandle(handleId)
            if (handle == null) {
                result.success(null)
                return
            }
            result.success(handle.toPaymentHandleMap())
        }

        @JvmStatic
        fun triggerAdditionalPaymentMethod(result: MethodChannel.Result, type: String?, handleId: String?) {
            if (trackedPayment()?.promptMode != PromptMode.CUSTOM) {
                result.success(false)
                return
            }
            val methodType = PaymentMapper.getAdditionalPaymentMethodType(type)
            val method = methodType?.let { resolveHandle(handleId)?.findMethod(it) }
            when (method) {
                is AdditionalPaymentMethod.KeyedMethod -> method.trigger()
                is AdditionalPaymentMethod.CashMethod -> method.trigger()
                else -> {
                    result.success(false)
                    return
                }
            }
            result.success(true)
        }

        @JvmStatic
        fun completePayment(result: MethodChannel.Result, paymentId: String) {
            paymentManager.completePayment(paymentId) { sdkResult ->
                when (sdkResult) {
                    is SdkResult.Success -> {
                        when (val payment = sdkResult.value) {
                            is Payment.OnlinePayment -> result.success(payment.toOnlineMap())
                            is Payment.OfflinePayment -> result.success(payment.toOfflineMap())
                        }
                    }
                    is SdkResult.Failure -> {
                        result.error(
                            sdkResult.errorCode.toPaymentErrorCodeName(),
                            sdkResult.errorMessage,
                            sdkResult.details.map { d -> d.toErrorDetailsMap() }
                        )
                    }
                }
            }
        }

        @JvmStatic
        fun getIdempotencyKey(result: MethodChannel.Result, paymentAttemptId: String) {
            when (val sdkResult = paymentManager.getIdempotencyKey(paymentAttemptId)) {
                is SdkResult.Success -> result.success(sdkResult.value)
                is SdkResult.Failure -> result.error(
                    sdkResult.errorCode.toPaymentErrorCodeName(),
                    sdkResult.errorMessage,
                    sdkResult.details.map { d -> d.toErrorDetailsMap() }
                )
            }
        }

        @JvmStatic
        fun getAllIdempotencyKeys(result: MethodChannel.Result) {
            paymentManager.getAllIdempotencyKeys { sdkResult ->
                when (sdkResult) {
                    is SdkResult.Success -> result.success(sdkResult.value.map { it.toIdempotencyKeyDataMap() })
                    is SdkResult.Failure -> result.error(
                        sdkResult.errorCode.toPaymentErrorCodeName(),
                        sdkResult.errorMessage,
                        sdkResult.details.map { d -> d.toErrorDetailsMap() }
                    )
                }
            }
        }

        @JvmStatic
        fun getAvailableCardEntryMethods(result: MethodChannel.Result) {
            result.success(paymentManager.getAvailableCardEntryMethods().map { it.toEntryMethodName() })
        }

        @JvmStatic
        fun getTotalStoredPaymentAmount(result: MethodChannel.Result) {
            val offlinePaymentQueue = paymentManager.getOfflinePaymentQueue()
            val sdkResult = offlinePaymentQueue.getTotalStoredPaymentAmount()
            when (sdkResult) {
                is SdkResult.Success -> {
                    result.success(sdkResult.value.toMoneyMap())
                }
                is SdkResult.Failure -> {
                    result.error(
                        sdkResult.errorCode.toPaymentErrorCodeName(),
                        sdkResult.errorMessage,
                        sdkResult.details.map { d -> d.toErrorDetailsMap() }
                    )
                }
            }
        }

        @JvmStatic
        fun getPayments(result: MethodChannel.Result) {
            val offlinePaymentQueue = paymentManager.getOfflinePaymentQueue()
            offlinePaymentQueue.getPayments { sdkResult ->
                when (sdkResult) {
                    is SdkResult.Success -> {
                        val paymentList = ArrayList<Map<String, Any?>>()
                        sdkResult.value.forEach { payment ->
                            paymentList.add(payment.toOfflineMap())
                        }
                        result.success(paymentList)
                    }
                    is SdkResult.Failure -> {
                        result.error(
                            sdkResult.errorCode.toPaymentErrorCodeName(),
                            sdkResult.errorMessage,
                            sdkResult.details.map { d -> d.toErrorDetailsMap() }
                        )
                    }
                }
            }
        }
    }
}
