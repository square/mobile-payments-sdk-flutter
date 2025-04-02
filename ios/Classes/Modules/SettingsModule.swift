import UIKit
import Flutter
import SquareMobilePaymentsSDK

public class SettingsModule {
    private static let settingsManager = MobilePaymentsSDK.shared.settingsManager

    public static func showSettings(result: @escaping FlutterResult) {
        guard let topController = UIApplication.shared.keyWindow?.rootViewController else {
            result(FlutterError(code: "ERROR", message: "No root view controller", details: nil))
            return
        }
        settingsManager.presentSettings(with: topController) { error in
            if let error = error {
                result(FlutterError(code: "ERROR", message: error.localizedDescription, details: nil))
            } else {
                result(nil)
            }
        }
    }
    
    public static func getEnvironment(result: @escaping FlutterResult) {
        result(MobilePaymentsSDK.shared.settingsManager.sdkSettings.environment.description.uppercased())
    }
    
    public static func getSdkVersion(result: @escaping FlutterResult) {
        result(MobilePaymentsSDK.shared.settingsManager.sdkSettings.version)
    }
    
}
