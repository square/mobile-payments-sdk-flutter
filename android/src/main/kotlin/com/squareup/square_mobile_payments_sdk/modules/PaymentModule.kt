package com.squareup.square_mobile_payments_sdk.modules

import io.flutter.plugin.common.MethodChannel

import com.squareup.sdk.mobilepayments.MobilePaymentsSdk
import com.squareup.sdk.mobilepayments.core.Result as SdkResult
import com.squareup.sdk.mobilepayments.payment.Payment

import com.squareup.square_mobile_payments_sdk.mappers.PaymentMapper
import com.squareup.square_mobile_payments_sdk.extensions.toOfflineMap
import com.squareup.square_mobile_payments_sdk.extensions.toOnlineMap
import com.squareup.square_mobile_payments_sdk.extensions.toMoneyMap
import com.squareup.square_mobile_payments_sdk.extensions.toOfflineMap
import com.squareup.square_mobile_payments_sdk.extensions.toPaymentErrorCodeName
import com.squareup.square_mobile_payments_sdk.extensions.toErrorDetailsMap

class PaymentModule {
    companion object {
        private val paymentManager = MobilePaymentsSdk.paymentManager()

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
                    else -> {
                        result.error("unknown", null, null)
                    }
                }
            }
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
                            paymentList.add(payment.toOfflineMap().mapKeys { it.key.toString() })
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
