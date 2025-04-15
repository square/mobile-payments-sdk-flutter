package com.squareup.square_mobile_payments_sdk.modules

import io.flutter.plugin.common.MethodChannel
import com.squareup.sdk.mobilepayments.MobilePaymentsSdk
import com.squareup.sdk.mobilepayments.core.Result as SdkResult

import com.squareup.square_mobile_payments_sdk.extensions.toMoneyMap

class SettingsModule {
    companion object {
        val settingsManager = MobilePaymentsSdk.settingsManager()


        @JvmStatic
        fun getSdkVersion(result: MethodChannel.Result) {
          result.success(settingsManager.getSdkSettings().sdkVersion)
        }

        @JvmStatic
        fun getEnvironment(result: MethodChannel.Result) {
          result.success(settingsManager.getSdkSettings().sdkEnvironment.name)
        }

        @JvmStatic
        fun showSettings(result: MethodChannel.Result) {
            settingsManager.showSettings {
                sdkResult -> when (sdkResult) {
                  is SdkResult.Success -> {
                    result.success(null)
                  }
                  is SdkResult.Failure -> {
                    result.error(sdkResult.errorCode.toString(), sdkResult.errorMessage, sdkResult.debugCode)
                  }
                }
              }
        }

        @JvmStatic
        fun isOfflineProcessingAllowed(result: MethodChannel.Result) {
          val paymentSettings = settingsManager.getPaymentSettings()
          result.success(paymentSettings.isOfflineProcessingAllowed)
        }

        @JvmStatic
        fun getOfflineTotalStoredAmountLimit(result: MethodChannel.Result) {
          val paymentSettings = settingsManager.getPaymentSettings()
          result.success(paymentSettings.offlineTotalStoredAmountLimit?.toMoneyMap())
        }

        @JvmStatic
        fun getOfflineTransactionAmountLimit(result: MethodChannel.Result) {
          val paymentSettings = settingsManager.getPaymentSettings()
          result.success(paymentSettings.offlineTransactionAmountLimit?.toMoneyMap())
        }
    }
}