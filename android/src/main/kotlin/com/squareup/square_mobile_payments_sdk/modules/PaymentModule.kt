package com.squareup.square_mobile_payments_sdk.modules

import io.flutter.plugin.common.EventChannel.EventSink
import io.flutter.plugin.common.MethodChannel

import com.squareup.sdk.mobilepayments.MobilePaymentsSdk
import com.squareup.sdk.mobilepayments.core.CallbackReference
import com.squareup.sdk.mobilepayments.core.Result as SdkResult
import com.squareup.sdk.mobilepayments.payment.Payment
import com.squareup.sdk.mobilepayments.payment.PaymentHandle

import com.squareup.square_mobile_payments_sdk.mappers.PaymentMapper
import com.squareup.square_mobile_payments_sdk.extensions.toOfflineMap
import com.squareup.square_mobile_payments_sdk.extensions.toOnlineMap
import com.squareup.square_mobile_payments_sdk.extensions.toMoneyMap
import com.squareup.square_mobile_payments_sdk.extensions.toOfflineMap
import com.squareup.square_mobile_payments_sdk.extensions.toPaymentErrorCodeName
import com.squareup.square_mobile_payments_sdk.extensions.toErrorDetailsMap
import com.squareup.square_mobile_payments_sdk.extensions.toIdempotencyKeyDataMap
import com.squareup.square_mobile_payments_sdk.extensions.toEntryMethodName

class PaymentModule {
    companion object {
        private val paymentManager = MobilePaymentsSdk.paymentManager()
        private var availableCardEntryMethodCallbackReference: CallbackReference? = null

        @JvmStatic
        fun startPayment(
            result: MethodChannel.Result,
            paymentParameters: HashMap<String, Any>?,
            promptParameters: HashMap<String, Any>?
        ) {
            if (paymentParameters == null || promptParameters == null) {
                result.error(
                    "missingParameters",
                    "paymentParameters or promptParameters must not be null",
                    null
                )
                return
            }
            val nativePaymentParameters = PaymentMapper.getPaymentParameters(paymentParameters)
            val nativePromptParameters = PaymentMapper.getPromptParameters(promptParameters)

            paymentManager.startPaymentActivity(nativePaymentParameters, nativePromptParameters) { sdkResult ->
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

        @JvmStatic
        fun cancelPayment(result: MethodChannel.Result) {
            val cancelResult = when (paymentManager.currentPaymentHandle?.cancel()) {
                PaymentHandle.CancelResult.CANCELED -> "canceled"
                PaymentHandle.CancelResult.NOT_CANCELABLE -> "notCancelable"
                PaymentHandle.CancelResult.NO_PAYMENT_IN_PROGRESS, null -> "noPaymentInProgress"
            }
            result.success(cancelResult)
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
        fun setAvailableCardEntryMethodChangedCallback(result: MethodChannel.Result, sink: EventSink?) {
            if (availableCardEntryMethodCallbackReference == null) {
                availableCardEntryMethodCallbackReference = paymentManager.setAvailableCardEntryMethodChangedCallback { methods ->
                    sink?.success(
                        mapOf(
                            "type" to "availableCardEntryMethodsChange",
                            "payload" to methods.map { it.toEntryMethodName() }
                        )
                    )
                }
            }
            result.success(null)
        }

        @JvmStatic
        fun removeAvailableCardEntryMethodChangedCallback(result: MethodChannel.Result) {
            availableCardEntryMethodCallbackReference?.clear()
            availableCardEntryMethodCallbackReference = null
            result.success(null)
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
