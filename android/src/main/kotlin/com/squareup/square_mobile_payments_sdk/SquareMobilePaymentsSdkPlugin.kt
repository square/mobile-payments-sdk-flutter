package com.squareup.square_mobile_payments_sdk

import com.squareup.sdk.mobilepayments.MobilePaymentsSdk
import com.squareup.square_mobile_payments_sdk.modules.AuthModule
import com.squareup.square_mobile_payments_sdk.modules.PaymentModule
import com.squareup.square_mobile_payments_sdk.modules.ReaderModule
import com.squareup.square_mobile_payments_sdk.modules.SettingsModule
import io.flutter.embedding.engine.plugins.FlutterPlugin
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugin.common.MethodChannel.MethodCallHandler
import io.flutter.plugin.common.MethodChannel.Result
import io.flutter.plugin.common.EventChannel
import io.flutter.plugin.common.EventChannel.StreamHandler
import io.flutter.plugin.common.EventChannel.EventSink

/** SquareMobilePaymentsSdkPlugin */
class SquareMobilePaymentsSdkPlugin : FlutterPlugin, MethodCallHandler, StreamHandler {
  /// The MethodChannel that will the communication between Flutter and native Android
  ///
  /// This local reference serves to register the plugin with the Flutter Engine and unregister it
  /// when the Flutter Engine is detached from the Activity
  private lateinit var channel: MethodChannel
  private lateinit var eventChannel: EventChannel
  private var eventSink: EventSink? = null

  override fun onAttachedToEngine(flutterPluginBinding: FlutterPlugin.FlutterPluginBinding) {
    channel = MethodChannel(flutterPluginBinding.binaryMessenger, "square_mobile_payments_sdk")
    channel.setMethodCallHandler(this)

    eventChannel = EventChannel(flutterPluginBinding.binaryMessenger, "square_mobile_payments_sdk/events")
    eventChannel.setStreamHandler(this)
  }

  override fun onMethodCall(call: MethodCall, result: Result) {
    when (call.method) {
      "getPlatformVersion" ->
        result.success("Android Testing ${android.os.Build.VERSION.RELEASE}")

      "getSdkVersion" ->
        SettingsModule.getSdkVersion(result)

      "getEnvironment" ->
        SettingsModule.getEnvironment(result)

      "getSdkSettings" ->
        SettingsModule.getSdkSettings(result)

      "getAuthorizationState" ->
        AuthModule.getAuthorizationState(result)

      "getAuthorizedLocation" ->
        AuthModule.getAuthorizedLocation(result)

      "authorize" -> {
        val accessToken = call.argument<String>("accessToken")
        val locationId = call.argument<String>("locationId")
        AuthModule.authorize(result, accessToken, locationId)
      }
      "deauthorize" -> AuthModule.deAuthorize(result)
      "setAuthorizationStateChangedCallback" -> AuthModule.setAuthorizationStateChangedCallback(result, eventSink)
      "removeAuthorizationStateChangedCallback" -> AuthModule.removeAuthorizationStateChangedCallback(result)
      "showMockReaderUI" -> ReaderModule.showMockReaderUI(result)
      "hideMockReaderUI" -> ReaderModule.hideMockReaderUI(result)
      "showSettings" -> SettingsModule.showSettings(result)
      "startPayment" -> {
        val paymentParameters = call.argument<HashMap<String, Any>>("paymentParameters")
        val promptParameters = call.argument<HashMap<String, Any>>("promptParameters")
        PaymentModule.startPayment(result, paymentParameters, promptParameters)
      }
      "cancelPayment" -> PaymentModule.cancelPayment(result)
      "completePayment" -> {
        val paymentId = call.argument<String>("paymentId") ?: ""
        PaymentModule.completePayment(result, paymentId)
      }
      "getIdempotencyKey" -> {
        val paymentAttemptId = call.argument<String>("paymentAttemptId") ?: ""
        PaymentModule.getIdempotencyKey(result, paymentAttemptId)
      }
      "getAllIdempotencyKeys" -> PaymentModule.getAllIdempotencyKeys(result)
      "getAvailableCardEntryMethods" -> PaymentModule.getAvailableCardEntryMethods(result)
      "setAvailableCardEntryMethodChangedCallback" -> PaymentModule.setAvailableCardEntryMethodChangedCallback(result, eventSink)
      "removeAvailableCardEntryMethodChangedCallback" -> PaymentModule.removeAvailableCardEntryMethodChangedCallback(result)
      "isOfflineProcessingAllowed" -> SettingsModule.isOfflineProcessingAllowed(result)
      "getOfflineTotalStoredAmountLimit" -> SettingsModule.getOfflineTotalStoredAmountLimit(result)
      "getOfflineTransactionAmountLimit" -> SettingsModule.getOfflineTransactionAmountLimit(result)
      "getTrackingConsentState" -> SettingsModule.getTrackingConsentState(result)
      "updateTrackingConsent" -> {
        val granted = call.argument<Boolean>("granted")
        granted?.let { SettingsModule.updateTrackingConsent(result, it) }
          ?: run {
            result.error(
              "missingParameters",
              "Missing granted parameter",
              null
            )
          }
      }

      "getPayments" -> PaymentModule.getPayments(result)
      "getTotalStoredPaymentAmount" -> PaymentModule.getTotalStoredPaymentAmount(result)
      "getReaders" -> ReaderModule.getReaders(result)
      "getReader" -> {
        val id = call.argument<String>("id") as? String ?: ""
        ReaderModule.getReader(result, id)
      }
      "forget" -> {
        val id = call.argument<String>("id") as? String ?: ""
        ReaderModule.forget(result, id)
      }
      "blink" -> {
        val id = call.argument<String>("id") as? String ?: ""
        ReaderModule.blink(result, id)
      }
      "retryConnection" -> {
        val id = call.argument<String>("id") ?: ""
        ReaderModule.retryConnection(result, id)
      }
      "setPreferredFirmwareUpdateTime" -> {
        val time = call.argument<Map<String, Any?>>("time")
        ReaderModule.setPreferredFirmwareUpdateTime(result, time)
      }
      "setReducedChargingModeEnabled" -> {
        val enabled = call.argument<Boolean>("enabled") ?: false
        ReaderModule.setReducedChargingModeEnabled(result, enabled)
      }
      "isPairingInProgress" -> ReaderModule.isPairingInProgress(result)
      "setReaderChangedCallback" -> ReaderModule.setReaderChangedCallback(result, eventSink)
      "removeReaderChangedCallback" -> ReaderModule.removeReaderChangedCallback(result)
      "pairReader" -> ReaderModule.pairReader(result)
      "stopPairing" -> ReaderModule.stopPairing(result)
      "readerSettings" -> ReaderModule.readerSettings(result)
      "closeSettings" -> SettingsModule.closeSettings(result)
      "isShowingSettings" -> SettingsModule.isShowingSettings(result)
      else -> result.notImplemented()
    }
  }

  // EventChannel handlers
  override fun onListen(arguments: Any?, events: EventChannel.EventSink?) {
    eventSink = events
  }

  override fun onCancel(arguments: Any?) {
    eventSink = null
  }

  override fun onDetachedFromEngine(binding: FlutterPlugin.FlutterPluginBinding) {
    channel.setMethodCallHandler(null)
    eventChannel.setStreamHandler(null)
  }
}
