package com.squareup.square_mobile_payments_sdk.modules

import io.flutter.plugin.common.MethodChannel
import com.squareup.sdk.mobilepayments.mockreader.ui.MockReaderUI
import com.squareup.sdk.mobilepayments.MobilePaymentsSdk
import com.squareup.sdk.mobilepayments.settings.Environment

class ReaderModule {
    companion object {
        private val authManager = MobilePaymentsSdk.authorizationManager()
        private val settingsManager = MobilePaymentsSdk.settingsManager()

        @JvmStatic
        fun showMockReaderUI(result: MethodChannel.Result) {
            try {
                MockReaderUI.show() //has 2 checks func, with no code
                result.success(null)
            } catch (e: IllegalStateException) {
                // first invalid Id
                val errorMessage = e.message ?: "Unknown error"
                val errorCode = when {
                    settingsManager.getSdkSettings().sdkEnvironment == Environment.SANDBOX -> "invalidApplicationId"
                    !authManager.authorizationState.isAuthorized -> "notAuthorized"
                    else -> "unknown"
                }

                result.error(errorCode, errorMessage, null)
            }
        }

        @JvmStatic
        fun hideMockReaderUI(result: MethodChannel.Result) {
            MockReaderUI.hide()
            result.success(null)
        }
    }
}