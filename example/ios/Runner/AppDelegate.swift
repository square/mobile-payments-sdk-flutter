import Flutter
import UIKit

import SquareMobilePaymentsSDK
@main
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    GeneratedPluginRegistrant.register(with: self)
    let applicationId = "REPLACE ME!"
      MobilePaymentsSDK.initialize(squareApplicationID: applicationId)
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}
