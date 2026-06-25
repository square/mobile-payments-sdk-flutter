package com.squareup.square_mobile_payments_sdk.extensions

import com.squareup.sdk.mobilepayments.settings.Environment
import com.squareup.sdk.mobilepayments.settings.TrackingConsentState

fun Environment.toEnvironmentName() : String {
  return when(this) {
    Environment.PRODUCTION -> "production"
    Environment.SANDBOX -> "sandbox"
  }
}

fun TrackingConsentState.toConsentName() : String {
  return when(this) {
    TrackingConsentState.PENDING -> "pending"
    TrackingConsentState.GRANTED -> "granted"
    TrackingConsentState.DENIED -> "denied"
    TrackingConsentState.NOT_REQUIRED -> "notRequired"
  }
}