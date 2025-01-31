package com.squareup.square_mobile_payments_sdk.modules

import io.flutter.plugin.common.MethodChannel
import com.squareup.sdk.mobilepayments.MobilePaymentsSdk
import com.squareup.sdk.mobilepayments.core.Result as SdkResult

import com.squareup.square_mobile_payments_sdk.mappers.PaymentMapper

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
                        result.success(null)
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
    }
}
