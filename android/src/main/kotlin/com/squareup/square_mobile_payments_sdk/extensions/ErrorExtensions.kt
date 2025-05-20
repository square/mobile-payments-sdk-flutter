package com.squareup.square_mobile_payments_sdk.extensions

import com.squareup.sdk.mobilepayments.authorization.AuthorizeErrorCode
import com.squareup.sdk.mobilepayments.settings.SettingsErrorCode
import com.squareup.sdk.mobilepayments.payment.PaymentErrorCode
import com.squareup.sdk.mobilepayments.core.ErrorDetails

fun ErrorDetails.toErrorDetailsMap(): Map<String, Any?> {
    return mapOf("category" to category, "code" to code, "detail" to detail, "field" to field)
}

// Auth

fun AuthorizeErrorCode.toAuthorizeErrorCodeName(): String = when (this) {
    AuthorizeErrorCode.NO_NETWORK -> "noNetwork"
    AuthorizeErrorCode.UNSUPPORTED_COUNTRY -> "unsupportedCountry"
    AuthorizeErrorCode.USAGE_ERROR -> "usageError"
}

// settings

fun SettingsErrorCode.toSettingsErrorCodeName(): String = when (this) {
        SettingsErrorCode.USAGE_ERROR -> "usageError"
}

// Payment

fun PaymentErrorCode.toPaymentErrorCodeName(): String = when (this) {
        PaymentErrorCode.CANCELED -> "canceled"
        PaymentErrorCode.NOT_AUTHORIZED -> "notAuthorized"
        PaymentErrorCode.TIMEOUT -> "timeout"
        PaymentErrorCode.LOCATION_SERVICES_DISABLED -> "locationServicesDisabled"
        PaymentErrorCode.DEVICE_CLOCK_SKEWED -> "deviceClockSkewed"
        PaymentErrorCode.USAGE_ERROR -> "usageError"
}