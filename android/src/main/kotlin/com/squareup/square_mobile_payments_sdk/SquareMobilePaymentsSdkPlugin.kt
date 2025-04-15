package com.squareup.square_mobile_payments_sdk

import androidx.annotation.NonNull

import io.flutter.embedding.engine.plugins.FlutterPlugin
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugin.common.MethodChannel.MethodCallHandler
import io.flutter.plugin.common.MethodChannel.Result

import com.squareup.sdk.mobilepayments.MobilePaymentsSdk
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
    when (call.method) {
      "getPlatformVersion" ->
        result.success("Android Testing ${android.os.Build.VERSION.RELEASE}")

      "getSdkVersion" ->
        SettingsModule.getSdkVersion(result)

      "getEnvironment" ->
        SettingsModule.getEnvironment(result)

      "getAuthorizationState" ->
        AuthModule.getAuthorizationState(result)

      "getAuthorizedLocation" ->
        AuthModule.getAuthorizedLocation(result)

      "authorize" -> {
        val accessToken = call.argument<String>("accessToken") ?: ""
        val locationId = call.argument<String>("locationId") ?: ""
        AuthModule.authorize(result, accessToken, locationId)
      }

      "deauthorize" ->
        AuthModule.deAuthorize(result)

      "showMockReaderUI" ->
        ReaderModule.showMockReaderUI(result)

      "hideMockReaderUI" ->
        ReaderModule.hideMockReaderUI(result)

      "showSettings" ->
        SettingsModule.showSettings(result)

      "startPayment" -> {
        val paymentParameters = call.argument<HashMap<String, Any>>("paymentParameters")
        val promptParameters = call.argument<HashMap<String, Any>>("promptParameters")

        if (paymentParameters == null || promptParameters == null) {
          result.error("INVALID_PARAMETERS", "Null params", null)
        } else {
          PaymentModule.startPayment(result, paymentParameters, promptParameters)
        }
      }

      "isOfflineProcessingAllowed" ->
        SettingsModule.isOfflineProcessingAllowed(result)

      "getOfflineTotalStoredAmountLimit" ->
        SettingsModule.getOfflineTotalStoredAmountLimit(result)

      "getOfflineTransactionAmountLimit" ->
        SettingsModule.getOfflineTransactionAmountLimit(result)

      "getPayments" ->
        PaymentModule.getPayments(result)

      "getTotalStoredPaymentAmount" ->
        PaymentModule.getTotalStoredPaymentAmount(result)

      else ->
        result.notImplemented()
    }
  }

  override fun onDetachedFromEngine(binding: FlutterPlugin.FlutterPluginBinding) {
    channel.setMethodCallHandler(null)
  }
}
