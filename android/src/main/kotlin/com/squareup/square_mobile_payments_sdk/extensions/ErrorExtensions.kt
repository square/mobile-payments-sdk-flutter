package com.squareup.square_mobile_payments_sdk.extensions

import com.squareup.sdk.mobilepayments.authorization.AuthorizeErrorCode
import com.squareup.sdk.mobilepayments.settings.SettingsErrorCode
import com.squareup.sdk.mobilepayments.core.ErrorDetails

fun ErrorDetails.toErrorDetailsMap(): Map<String, Any?> {
    return mapOf("category" to category, "code" to code, "detail" to detail, "field" to field)
}

// Auth

fun AuthorizeErrorCode.toAuthorizeErrorCodeName(): String {
    return when (this) {
        AuthorizeErrorCode.NO_NETWORK -> "noNetwork"
        AuthorizeErrorCode.UNSUPPORTED_COUNTRY -> "unsupportedCountry"
        AuthorizeErrorCode.USAGE_ERROR -> "usageError"
        else -> "unknown"
    }
}

// settings

fun SettingsErrorCode.toSettingsErrorCodeName(): String {
    return when (this) {
        SettingsErrorCode.USAGE_ERROR -> "usageError"
        else -> "unknown"
    }
}
