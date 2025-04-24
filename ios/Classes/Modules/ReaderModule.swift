import Flutter
import SquareMobilePaymentsSDK
import MockReaderUI

public class ReaderModule {
    private static let settingsManager = MobilePaymentsSDK.shared.settingsManager

    static var mockReader: MockReaderUI? = {
        do {
            return try MockReaderUI(for: MobilePaymentsSDK.shared)
        } catch {
            return nil
        }
    }()


    static func parseTapToPayError(error: NSError, defaultError: String) -> String {
        let tapToPayReaderError = TapToPayReaderError(rawValue: error.code)
        let errorMessage: String
        switch tapToPayReaderError {
        case .alreadyLinked:
            errorMessage = "Apple Tap to Pay Terms and Conditions have already been accepted."
        case .banned:
            errorMessage = "This device is banned from using the Tap To Pay reader."
        case .linkingFailed:
            errorMessage = "The Tap To Pay reader could not link/relink using the provided Apple ID."
        case .linkingCanceled:
            errorMessage = "User has canceled the linking/relinking operation."
        case .invalidToken:
            errorMessage = "The Tap To Pay reader generated an invalid token."
        case .notAuthorized:
            errorMessage = "This device must be authorized with a Square account in order to use Tap To Pay."
        case .notAvailable:
            errorMessage = "The Tap To Pay reader is not available on this device or device's operating system."
        case .noNetwork:
            errorMessage = "The Tap To Pay reader could not connect to the network. Please reconnect to the Internet and try again."
        case .networkError:
            errorMessage = "The network responded with an error."
        case .other:
            errorMessage = "An error with the Tap To Pay reader has occurred. Please try again."
        case .passcodeDisabled:
            errorMessage = "This device does not currently have an active passcode set."
        case .unexpected:
            errorMessage = "Mobile Payments SDK encountered an unexpected error. Please try again."
        case .unsupportedOSVersion:
            errorMessage = "The device's OS version does not meet the minimum requirement of iOS 16.7 for Tap to Pay on iPhone."
        case .unsupportedDeviceModel:
            errorMessage = "This device model is not currently supported to use the Tap To Pay reader."
        default:
            errorMessage = defaultError
        }
        return errorMessage
    }

    public static func showMockReaderUI(result: @escaping FlutterResult) {
        do {
            try mockReader?.present()
            result(NSNull())
        } catch (let error) {
            var e = error as NSError
            if let readerError = MockReaderUIError(rawValue: e.code) {
                result(FlutterError(code: readerError.getName(),
                        message: e.localizedDescription,
                        details: e.localizedFailureReason))
            }
            else {
                result(FlutterError(code: "unknown",
                        message: "Unknown error",
                        details: nil))
            }
        }
    }

    public static func hideMockReaderUI(result: @escaping FlutterResult) {
        mockReader?.dismiss()
        result(NSNull())
    }

    public static func linkAppleAccount(result: @escaping FlutterResult) {
        MobilePaymentsSDK.shared.readerManager.tapToPaySettings.linkAppleAccount { error in

            if let error = error as NSError? {
                let errorMessage = parseTapToPayError(error: error, defaultError: "There has been an error linking apple account.")
                result(FlutterError(code: "LINK_APPLE_ACCOUNT_ERROR", message: errorMessage, details: nil))
            } else {
                result("Apple account has been linked.")
            }
        }
    }

    public static func relinkAppleAccount(result: @escaping FlutterResult) {
        MobilePaymentsSDK.shared.readerManager.tapToPaySettings.relinkAppleAccount { error in
                if let error = error as NSError? {
                  let errorMessage = parseTapToPayError(error: error, defaultError: "There has been an error re-linking apple account.")
                  result(FlutterError(code: "RE_LINK_APPLE_ACCOUNT_ERROR", message: errorMessage, details: nil))
                } else {
                  result("Apple account has been re-linked.")
                }
        }
    }

    public static func isAppleAccountLinked(result: @escaping FlutterResult) {
        MobilePaymentsSDK.shared.readerManager.tapToPaySettings.isAppleAccountLinked { isLinked, error in
            if let error = error as NSError? {
                let errorMessage = parseTapToPayError(error: error, defaultError: "There has been an error checking if Apple Account is Linked.")
                result(FlutterError(code: "IS_APPLE_ACCOUNT_LINKED_ERROR", message: errorMessage, details: nil))
            } else {
                result(isLinked)
            }
        }
    }

    public static func isDeviceCapable(result: @escaping FlutterResult) {
        result(MobilePaymentsSDK.shared.readerManager.tapToPaySettings.isDeviceCapable)
    }
}
