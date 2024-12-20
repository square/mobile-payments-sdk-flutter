package com.squareup.square_mobile_payments_sdk_example

import android.app.Application
import com.facebook.soloader.SoLoader
import com.squareup.sdk.mobilepayments.MobilePaymentsSdk

class MainApplication : Application() {
    override fun onCreate() {
        super.onCreate()
        SoLoader.init(this, false)
        MobilePaymentsSdk.initialize("your-square-application-id", this)
    }
}
