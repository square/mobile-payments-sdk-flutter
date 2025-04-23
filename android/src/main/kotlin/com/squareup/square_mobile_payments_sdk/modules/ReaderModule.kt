package com.squareup.square_mobile_payments_sdk.modules

import io.flutter.plugin.common.MethodChannel
import com.squareup.sdk.mobilepayments.mockreader.ui.MockReaderUI
import com.squareup.sdk.mobilepayments.MobilePaymentsSdk
import com.squareup.sdk.mobilepayments.settings.Environment

class ReaderModule {
    companion object {
        val settingsManager = MobilePaymentsSdk.settingsManager()

        @JvmStatic
        fun showMockReaderUI(result: MethodChannel.Result) {
            when (settingsManager.getSdkSettings().sdkEnvironment) {
                Environment.SANDBOX -> {
                    try {
                        MockReaderUI.show()
                        result.success(null)
                    } catch (e) {
                        //FIXME
                        result.error('unknown', null, null)
                    }
                }
                else -> {
                    result.success(null)
                }
            }
        }

        @JvmStatic
        fun hideMockReaderUI(result: MethodChannel.Result) {
            when (settingsManager.getSdkSettings().sdkEnvironment) {
                Environment.SANDBOX -> {
                    MockReaderUI.hide()
                    result.success(null)
                }
                else -> {
                    result.success(null)
                }
            }
        }
    }
}