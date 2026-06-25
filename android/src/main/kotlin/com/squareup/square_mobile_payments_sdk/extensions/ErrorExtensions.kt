package com.squareup.square_mobile_payments_sdk.extensions

import com.squareup.sdk.mobilepayments.authorization.AuthorizeErrorCode
import com.squareup.sdk.mobilepayments.cardreader.PairingErrorCode
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
    AuthorizeErrorCode.OBSOLETE_SDK -> "obsoleteSdk"
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
        PaymentErrorCode.CONSENT_NOT_PROVIDED -> "consentNotProvided"
        PaymentErrorCode.OBSOLETE_SDK -> "obsoleteSdk"
}

// Reader Pairing

fun PairingErrorCode.toPairingErrorCodeName(): String = when (this) {
    PairingErrorCode.BLUETOOTH_ALREADY_SCANNING -> "bluetoothAlreadyScanning"
    PairingErrorCode.BLUETOOTH_DISABLED -> "bluetoothDisabled"
    PairingErrorCode.BLUETOOTH_UNSUPPORTED -> "bluetoothUnsupported"
    PairingErrorCode.BLUETOOTH_PERMISSION_DENIED -> "bluetoothPermissionDenied"
    PairingErrorCode.BOND_FAILED -> "bondFailed"
    PairingErrorCode.NOT_AUTHORIZED -> "notAuthorized"
    PairingErrorCode.TIMEOUT -> "timeout"
    PairingErrorCode.USAGE_ERROR -> "usageError"
    PairingErrorCode.APP_UPDATE_REQUIRED -> "updateRequired"
    PairingErrorCode.INTERNAL_FIRMWARE_ERROR -> "internalFirmwareError"
    PairingErrorCode.UNKNOWN_ERROR -> "unknown"
}