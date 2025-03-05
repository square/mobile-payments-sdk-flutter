import Flutter
import UIKit

public class SquareMobilePaymentsSdkPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "square_mobile_payments_sdk", binaryMessenger: registrar.messenger())
    let instance = SquareMobilePaymentsSdkPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
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
    default:
      result(FlutterMethodNotImplemented)
    }
  }
}
