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

    public static func isOfflineProcessingAllowed(result: @escaping FlutterResult) {
        let paymentSettings = settingsManager.paymentSettings
        result(paymentSettings.isOfflineProcessingAllowed)
    }

    public static func getOfflineTotalStoredAmountLimit(result: @escaping FlutterResult) {
        let paymentSettings = settingsManager.paymentSettings
        if let limit = paymentSettings.offlineTotalStoredAmountLimit {
            result(limit.toMap())
        } else {
            result(NSNull())
        }
    }

    public static func getOfflineTransactionAmountLimit(result: @escaping FlutterResult) {
        let paymentSettings = settingsManager.paymentSettings
        if let limit = paymentSettings.offlineTransactionAmountLimit {
            result(limit.toMap())
        } else {
            result(NSNull())
        }
    }
}