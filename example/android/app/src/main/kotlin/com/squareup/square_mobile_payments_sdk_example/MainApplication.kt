package com.squareup.square_mobile_payments_sdk_example

import android.app.Application
import com.squareup.sdk.mobilepayments.MobilePaymentsSdk

class MainApplication : Application() {
    override fun onCreate() {
        super.onCreate()
        MobilePaymentsSdk.initialize(MOBILE_PAYMENT_SDK_APPLICATION_ID, this)
    }
companion object {
      private const val MOBILE_PAYMENT_SDK_APPLICATION_ID = "REPLACE ME!"
  }
}
