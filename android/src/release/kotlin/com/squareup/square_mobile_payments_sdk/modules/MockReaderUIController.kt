package com.squareup.square_mobile_payments_sdk.modules

import io.flutter.plugin.common.MethodChannel

internal object MockReaderUIController {
    fun show(result: MethodChannel.Result) {
        result.error(
            "unavailable",
            "MockReaderUI is not available in this build configuration.",
            null,
        )
    }

    fun hide(result: MethodChannel.Result) {
        result.error(
            "unavailable",
            "MockReaderUI is not available in this build configuration.",
            null,
        )
    }
}
