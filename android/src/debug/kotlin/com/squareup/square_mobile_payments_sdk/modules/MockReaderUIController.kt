package com.squareup.square_mobile_payments_sdk.modules

import io.flutter.plugin.common.MethodChannel
import com.squareup.sdk.mobilepayments.MobilePaymentsSdk
import com.squareup.sdk.mobilepayments.mockreader.ui.MockReaderUI
import com.squareup.sdk.mobilepayments.settings.Environment

internal object MockReaderUIController {
    fun show(result: MethodChannel.Result) {
        val settingsManager = MobilePaymentsSdk.settingsManager()
        val authManager = MobilePaymentsSdk.authorizationManager()

        if (settingsManager.getSdkSettings().sdkEnvironment != Environment.SANDBOX) {
            result.error(
                "invalidApplicationId",
                "MockReaderUI is only available in the Sandbox environment.",
                null,
            )
            return
        }

        if (!authManager.authorizationState.isAuthorized) {
            result.error(
                "notAuthorized",
                "MockReaderUI requires the SDK to be authorized.",
                null,
            )
            return
        }

        try {
            MockReaderUI.show()
            result.success(null)
        } catch (e: IllegalStateException) {
            val errorMessage = e.message ?: "Unknown error"
            val errorCode = when {
                settingsManager.getSdkSettings().sdkEnvironment != Environment.SANDBOX -> "invalidApplicationId"
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
