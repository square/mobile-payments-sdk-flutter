import Flutter
import UIKit

public class SquareMobilePaymentsSdkPlugin: NSObject, FlutterPlugin, FlutterStreamHandler {
  private var eventSink: FlutterEventSink?

  public static func register(with registrar: FlutterPluginRegistrar) {
    let instance = SquareMobilePaymentsSdkPlugin()

    let eventChannel = FlutterEventChannel(name: "square_mobile_payments_sdk/events", binaryMessenger: registrar.messenger())
    eventChannel.setStreamHandler(instance)

    let channel = FlutterMethodChannel(name: "square_mobile_payments_sdk", binaryMessenger: registrar.messenger())
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func onListen(withArguments arguments: Any?, eventSink events: @escaping FlutterEventSink) -> FlutterError? {
    self.eventSink = events
    return nil
  }

  public func onCancel(withArguments arguments: Any?) -> FlutterError? {
    eventSink = nil
    return nil
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    switch call.method {
    case "getPlatformVersion":
      result("iOS " + UIDevice.current.systemVersion)
    case "authorize":
      if  let arguments = call.arguments as? [String: Any],
          let accessToken = arguments["accessToken"] as? String,
          let locationId = arguments["locationId"] as? String {
        AuthModule.authorize(result: result, accessToken: accessToken, locationId: locationId)
      } else {
        result(FlutterError(
          code: "INVALID_ARGUMENTS",
          message: "Missing accessToken or locationId",
          details: nil))
      }
    case "deauthorize":
      AuthModule.deauthorize(result: result)
    case "getAuthorizationState":
      AuthModule.getAuthorizationState(result: result)
    case "showMockReaderUI":
      ReaderModule.showMockReaderUI(result: result)
    case "hideMockReaderUI":
      ReaderModule.hideMockReaderUI(result: result)
    case "linkAppleAccount":
      ReaderModule.linkAppleAccount(result: result)
    case "relinkAppleAccount":
      ReaderModule.relinkAppleAccount(result: result)
    case "isDeviceCapable":
      ReaderModule.isDeviceCapable(result: result)
    case "isAppleAccountLinked":
      ReaderModule.isAppleAccountLinked(result: result)
    case "startPayment":
      if  let arguments = call.arguments as? [String: Any],
          let paymentParameters = arguments["paymentParameters"] as? [String: Any],
          let promptParameters = arguments["promptParameters"] as? [String: Any] {
          PaymentModule.startPayment(
            result: result,
            paymentParameters: paymentParameters,
            promptParameters: promptParameters)
      } else {
        result(FlutterError(
          code: "INVALID_ARGUMENTS",
          message: "Missing paymentParameters or promptParameters",
          details: nil))
      }
    case "showSettings":
      SettingsModule.showSettings(result: result)

    case "getSdkVersion":
      SettingsModule.getSdkVersion(result: result)

    case "getEnvironment":
      SettingsModule.getEnvironment(result: result)
    case "isOfflineProcessingAllowed":
      SettingsModule.isOfflineProcessingAllowed(result: result)
    case "getOfflineTotalStoredAmountLimit":
      SettingsModule.getOfflineTotalStoredAmountLimit(result: result)
    case "getOfflineTransactionAmountLimit":
      SettingsModule.getOfflineTransactionAmountLimit(result: result)
    case "getPayments":
      PaymentModule.getPayments(result: result)
    case "getTotalStoredPaymentAmount":
      PaymentModule.getTotalStoredPaymentAmount(result: result)

    case "getReaders":
      ReaderModule.getReaders(result: result)
    case "getReader":
      if  let arguments = call.arguments as? [String: Any],
          let id = arguments["id"] as? String {
        ReaderModule.getReader(result: result, id: id)
      }
    case "forget":
      if  let arguments = call.arguments as? [String: Any],
          let id = arguments["id"] as? String {
        ReaderModule.forget(result: result, id: id)
      }
    case "blink":
      if  let arguments = call.arguments as? [String: Any],
          let id = arguments["id"] as? String {
        ReaderModule.blink(result: result, id: id)
      }
    case "isPairingInProgress":
      ReaderModule.isPairingInProgress(result: result)
    case  "setReaderChangedCallback":
      ReaderModule.setReaderChangedCallback(result: result, sink: eventSink)
    case "removeReaderChangedCallback":
      ReaderModule.removeReaderChangedCallback(result: result)
    case "pairReader":
      ReaderModule.pairReader(result: result)
    case "stopPairing":
      ReaderModule.stopPairing(result: result)

    default:
      result(FlutterMethodNotImplemented)
    }
  }
}
