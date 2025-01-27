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
    let applicationId = "sandbox-sq0idb-Jgsb9i5Wa0d-60MBkHdEyw"
      MobilePaymentsSDK.initialize(squareApplicationID: applicationId)
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}
