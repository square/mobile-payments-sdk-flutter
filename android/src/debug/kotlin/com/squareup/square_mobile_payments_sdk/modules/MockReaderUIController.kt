package com.squareup.square_mobile_payments_sdk.modules

import io.flutter.plugin.common.MethodChannel
import com.squareup.sdk.mobilepayments.MobilePaymentsSdk
import com.squareup.sdk.mobilepayments.mockreader.ui.MockReaderUI
import com.squareup.sdk.mobilepayments.settings.Environment

internal object MockReaderUIController {
    fun show(result: MethodChannel.Result) {
        try {
            MockReaderUI.show()
            result.success(null)
        } catch (e: IllegalStateException) {
            val errorMessage = e.message ?: "Unknown error"
            val authManager = MobilePaymentsSdk.authorizationManager()
            val settingsManager = MobilePaymentsSdk.settingsManager()
            val errorCode = when {
                settingsManager.getSdkSettings().sdkEnvironment == Environment.SANDBOX -> "invalidApplicationId"
                !authManager.authorizationState.isAuthorized -> "notAuthorized"
                else -> "unknown"
            }
            result.error(errorCode, errorMessage, null)
        }
    }

    fun hide(result: MethodChannel.Result) {
        MockReaderUI.hide()
        result.success(null)
    }
}
