package com.squareup.square_mobile_payments_sdk.modules

import io.flutter.plugin.common.MethodChannel
import com.squareup.sdk.mobilepayments.mockreader.ui.MockReaderUI

class ReaderModule {
    companion object {
        @JvmStatic
        fun showMockReaderUI(result: MethodChannel.Result) {
            MockReaderUI.show()
            result.success(null)
        }

        @JvmStatic
        fun hideMockReaderUI(result: MethodChannel.Result) {
            MockReaderUI.hide()
            result.success(null)
        }
    }
}