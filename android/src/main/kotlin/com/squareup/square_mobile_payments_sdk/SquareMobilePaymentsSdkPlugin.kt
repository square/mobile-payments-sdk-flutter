package com.squareup.square_mobile_payments_sdk

import androidx.annotation.NonNull

import io.flutter.embedding.engine.plugins.FlutterPlugin
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugin.common.MethodChannel.MethodCallHandler
import io.flutter.plugin.common.MethodChannel.Result

import com.squareup.sdk.mobilepayments.MobilePaymentsSdk
import com.squareup.sdk.mobilepayments.authorization.AuthorizeErrorCode
import com.squareup.sdk.mobilepayments.core.Result as SdkResult
import com.squareup.sdk.mobilepayments.mockreader.ui.MockReaderUI

/** SquareMobilePaymentsSdkPlugin */
class SquareMobilePaymentsSdkPlugin: FlutterPlugin, MethodCallHandler {
  /// The MethodChannel that will the communication between Flutter and native Android
  ///
  /// This local reference serves to register the plugin with the Flutter Engine and unregister it
  /// when the Flutter Engine is detached from the Activity
  private lateinit var channel : MethodChannel

  override fun onAttachedToEngine(flutterPluginBinding: FlutterPlugin.FlutterPluginBinding) {
    channel = MethodChannel(flutterPluginBinding.binaryMessenger, "square_mobile_payments_sdk")
    channel.setMethodCallHandler(this)
  }

  override fun onMethodCall(call: MethodCall, result: Result) {

    val authManager =  MobilePaymentsSdk.authorizationManager()

    if (call.method == "getPlatformVersion") {
      result.success("Android Testing ${android.os.Build.VERSION.RELEASE}")
    } else if (call.method == "authorize") {
      val accessToken = call.argument<String>("accessToken") ?: "";
      val locationId = call.argument<String>("locationId") ?: "";


        authManager.authorize(accessToken, locationId) { sdkResult ->
          when (sdkResult) {
              is SdkResult.Success -> {
                result.success(sdkResult.value.toString())
              }
              is SdkResult.Failure -> {
                result.error(sdkResult.errorCode.toString(), sdkResult.errorMessage, sdkResult.debugCode)
              }
          }
        }



    } else if (call.method == "deauthorize") {
      authManager.deauthorize()
      result.success("Deauthorized")
    }else {
      result.notImplemented()
    }
  }

  override fun onDetachedFromEngine(binding: FlutterPlugin.FlutterPluginBinding) {
    channel.setMethodCallHandler(null)
  }
}
