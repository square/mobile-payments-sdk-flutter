package com.squareup.square_mobile_payments_sdk

import androidx.annotation.NonNull

import io.flutter.embedding.engine.plugins.FlutterPlugin
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugin.common.MethodChannel.MethodCallHandler
import io.flutter.plugin.common.MethodChannel.Result

import com.squareup.square_mobile_payments_sdk.modules.PaymentModule
import com.squareup.square_mobile_payments_sdk.modules.AuthModule
import com.squareup.square_mobile_payments_sdk.modules.ReaderModule
import com.squareup.square_mobile_payments_sdk.modules.SettingsModule


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
    if (call.method == "getPlatformVersion") {
      result.success("Android Testing ${android.os.Build.VERSION.RELEASE}")
    } else if (call.method == "getAuthorizationState") {
      AuthModule.getAuthorizationState(result)
    } else if (call.method == "getAuthorizedLocation") {
      AuthModule.getAuthorizedLocation(result)
    } else if (call.method == "authorize") {
      val accessToken = call.argument<String>("accessToken") ?: "";
      val locationId = call.argument<String>("locationId") ?: "";
      AuthModule.authorize(result, accessToken, locationId)
    } else if (call.method == "deauthorize") {
      AuthModule.deAuthorize(result)
    } else if (call.method == "showMockReaderUI") {
      ReaderModule.showMockReaderUI(result)
    } else if (call.method == "hideMockReaderUI") {
      ReaderModule.hideMockReaderUI(result)
    } else if (call.method == "showSettings") {
      SettingsModule.showSettings(result)
    } else if (call.method == "startPayment") {
      val paymentParameters = call.argument<HashMap<String, Any>>("paymentParameters");
      val promptParameters = call.argument<HashMap<String, Any>>("promptParameters");
      if (paymentParameters == null || promptParameters == null) {
        result.error("INVALID_PARAMETERS", "Null params", null)
      } else {
        PaymentModule.startPayment(result, paymentParameters, promptParameters)
      }
    } else {
      result.notImplemented()
    }
  }

  override fun onDetachedFromEngine(binding: FlutterPlugin.FlutterPluginBinding) {
    channel.setMethodCallHandler(null)
  }
}
