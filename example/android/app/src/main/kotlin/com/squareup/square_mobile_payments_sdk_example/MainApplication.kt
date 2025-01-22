package com.squareup.square_mobile_payments_sdk_example

import android.app.Application
import com.squareup.sdk.mobilepayments.MobilePaymentsSdk

class MainApplication : Application() {
    override fun onCreate() {
        super.onCreate()
        //Put your application ID
        MobilePaymentsSdk.initialize("", this)
    }
}
