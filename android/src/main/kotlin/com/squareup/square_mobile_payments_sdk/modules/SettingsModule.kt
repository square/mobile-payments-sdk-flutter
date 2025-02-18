package com.squareup.square_mobile_payments_sdk.modules

import io.flutter.plugin.common.MethodChannel
import com.squareup.sdk.mobilepayments.MobilePaymentsSdk
import com.squareup.sdk.mobilepayments.core.Result as SdkResult

class SettingsModule {
    companion object {
        val settingsManager = MobilePaymentsSdk.settingsManager()

        @JvmStatic
        fun showSettings(result: MethodChannel.Result) {
            settingsManager.showSettings { 
                sdkResult -> when (sdkResult) {
                  is SdkResult.Success -> {}
                  is SdkResult.Failure -> {
                    result.error(sdkResult.errorCode.toString(), sdkResult.errorMessage, sdkResult.debugCode)
                  }
                } 
              }
        }
    }
}