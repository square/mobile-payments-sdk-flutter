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

class PaymentModule {
    companion object {
        private val paymentManager = MobilePaymentsSdk.paymentManager()

        @JvmStatic
        fun startPayment(result: MethodChannel.Result, paymentParameters: HashMap<String, Any>, promptParameters: HashMap<String, Any>) {

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
                        result.error(sdkResult.errorCode.toString(), sdkResult.errorMessage, sdkResult.debugCode)
                    }
                    else -> {
                        result.error("Unknown", "Unknown error occurred", "Unknown")
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
                    result.error(sdkResult.errorCode.toString(), sdkResult.errorMessage, sdkResult.debugCode)
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
                        result.error(sdkResult.errorCode.toString(), sdkResult.errorMessage, sdkResult.debugCode)
                    }
                }
            }
        }
    }
}
