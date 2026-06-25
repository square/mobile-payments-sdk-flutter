import UIKit
import Flutter
import SquareMobilePaymentsSDK

public class SettingsModule {
    private static let settingsManager = MobilePaymentsSDK.shared.settingsManager

    public static func showSettings(result: @escaping FlutterResult) {
        guard let topController = UIApplication.shared.rootViewController else {
            result(FlutterError(code: "notRootViewController", message: "No root view controller in window iOS app", details: nil))
            return
        }
        settingsManager.presentSettings(with: topController) { error in
            if let error = error {
                var e = error as NSError
                result(FlutterError(
                    code: "usageError",
                    message: e.localizedDescription,
                    details: e.localizedFailureReason))
            } else {
                result(NSNull())
            }
        }
    }

    public static func getEnvironment(result: @escaping FlutterResult) {
        result(settingsManager.sdkSettings.environment.getName())
    }

    public static func getSdkVersion(result: @escaping FlutterResult) {
        result(settingsManager.sdkSettings.version)
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
    
    public static func getTrackingConsentState(result: @escaping FlutterResult) {
        result(settingsManager.trackingConsentState.getName())
    }

    public static func updateTrackingConsent(result: @escaping FlutterResult, granted: Bool) {
        settingsManager.updateTrackingConsent(withGranted: granted)
        result(true)
    }

    public static func closeSettings(result: @escaping FlutterResult) {
        result(settingsManager.dismissSettings())
    }
    
    public static func isShowingSettings(result: @escaping FlutterResult) {
        result(settingsManager.isSettingsPresented)
    }
}
