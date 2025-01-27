import Flutter
import UIKit
import SquareMobilePaymentsSDK

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

      if   let arguments = call.arguments as? [String: Any],
           let accessToken = arguments["accessToken"] as? String,
           let locationId = arguments["locationId"] as? String {

            MobilePaymentsSDK.shared.authorizationManager.authorize(
                        withAccessToken: accessToken,
                        locationID: locationId
                    ) { error in
                        if let error {
                            result("Failed to authorize: \(error)")
                        } else {
                          result("Authorized")
                        }
                    }
           }




    default:
      result(FlutterMethodNotImplemented)
    }
  }
}
