import Flutter
import SquareMobilePaymentsSDK

#if DEBUG
import MockReaderUI
#endif

public class ReaderModule {
    private static var globalReaderObserver: ReaderObserverCallback?
    private static var globalPairingHandle: PairingHandle?

#if DEBUG
        static var mockReader: MockReaderUI? = {
            do {
                return try MockReaderUI(for: MobilePaymentsSDK.shared)
            } catch {
                return nil
            }
        }()
#else
        static var mockReader: Any? = nil
#endif

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

#if DEBUG
    public static func showMockReaderUI(result: @escaping FlutterResult) {
        do {
            try mockReader?.present()
            result("Mock Reader has been successfully presented.")
        } catch let error {
            result(FlutterError(code: "SHOW_MOCK_READER_UI", message: error.localizedDescription, details: nil))
        }
    }

    public static func hideMockReaderUI(result: @escaping FlutterResult) {
        mockReader?.dismiss()
        result("Mock Reader has been successfully hidden.")
    }
#else
    public static func showMockReaderUI(result: @escaping FlutterResult) {
        result("Mock Reader is not available in non-debug builds.")
    }

    public static func hideMockReaderUI(result: @escaping FlutterResult) {
        result("Mock Reader is not available in non-debug builds.")
    }
    
#endif

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

    public static func getReaders(result: @escaping FlutterResult) {
        let readers = MobilePaymentsSDK.shared.readerManager.readers
        let mappedReaders = readers.map {
          reader in reader.toMap()
        }
        result(mappedReaders)
    }

    private static func findReader(readerId: UInt) -> ReaderInfo? {
        let readers = MobilePaymentsSDK.shared.readerManager.readers
        let reader = readers.first(where: { $0.id == readerId })
        return reader
    }

    private static func parseId(readerId: String, result: @escaping FlutterResult) -> UInt? {
        guard let id = UInt(readerId) else {
            result(FlutterError(code: "INVALID_ID", message: "ID '\(readerId)' is not valid", details: nil))
            return nil
        }
        return id
    }

    public static func getReader(result: @escaping FlutterResult, id: String) {
        guard let readerId = parseId(readerId: id, result: result) else {
            return
        }
        guard let reader = findReader(readerId: readerId) else {
            result(NSNull())
            return
        }
        result(reader.toMap())
    }

    public static func forget(result: @escaping FlutterResult, id: String) {
        guard let readerId = parseId(readerId: id, result: result) else {
            return
        }
        guard let reader = findReader(readerId: readerId) else {
            result(NSNull())
            return
        }
        MobilePaymentsSDK.shared.readerManager.forget(reader)
        result(NSNull())
    }

    public static func blink(result: @escaping FlutterResult, id: String) {
        guard let readerId = parseId(readerId: id, result: result) else {
            return
        }
        guard let reader = findReader(readerId: readerId) else {
            result(NSNull())
            return
        }
        MobilePaymentsSDK.shared.readerManager.blink(reader)
        result(NSNull())
    }

    public static func isPairingInProgress(result: @escaping FlutterResult) {
        result(MobilePaymentsSDK.shared.readerManager.isPairingInProgress)
    }

    public static func setReaderChangedCallback(result: @escaping FlutterResult, sink: FlutterEventSink?) {
        if let sinhEvent = sink {
            if globalReaderObserver == nil {
                let observer = ReaderObserverCallback(eventSink: sinhEvent)
                MobilePaymentsSDK.shared.readerManager.add(observer)
                globalReaderObserver = observer
            }
        }
        result(NSNull())
    }

    public static func removeReaderChangedCallback(result: @escaping FlutterResult) {
        if let observer = globalReaderObserver {
            MobilePaymentsSDK.shared.readerManager.remove(observer)
            globalReaderObserver = nil
        }
        result(NSNull())
    }

    public static func pairReader(result: @escaping FlutterResult) {
        let delegate = ReaderPairingDelegateImpl(result: result)
        globalPairingHandle = MobilePaymentsSDK.shared.readerManager.startPairing(with: delegate)
    }

    public static func stopPairing(result: @escaping FlutterResult) {
        if let handle = globalPairingHandle {
            let stopResult = handle.stop()
            globalPairingHandle = nil
            if stopResult {
                result("stopped")
            } else {
                result("alreadyComplete")
            }
        }
    }
}

class ReaderPairingDelegateImpl: ReaderPairingDelegate {
    private let result: FlutterResult

    init(result: @escaping FlutterResult) {
        self.result = result
    }

    func readerPairingDidBegin() {}

    func readerPairingDidFail(with error: Error) {
        result(FlutterError(code: "PAIRING_ERROR", message: "pairing error", details: nil))
    }

    func readerPairingDidSucceed() {
        result(true)
    }
}

class ReaderObserverCallback: ReaderObserver {

    private let eventSink: FlutterEventSink

    init(eventSink: @escaping FlutterEventSink) {
        self.eventSink = eventSink
    }

    func readerWasAdded(_ reader: ReaderInfo) {
        let data: [String: Any] = [
            "type": "readerChange",
            "payload": [
                "change" : "added",
                "reader": reader.toMap()
            ]
        ]
        eventSink(data)
    }

    func readerWasRemoved(_ reader: ReaderInfo) {
        let data: [String: Any] = [
            "type": "readerChange",
            "payload": [
                "change" : "removed",
                "reader": reader.toMap()
            ]
        ]
        eventSink(data)
    }

    func readerDidChange(_ reader: ReaderInfo, change: ReaderChange) {
        let data: [String: Any] = [
            "type": "readerChange",
            "payload": [
                "change" : change.toName(),
                "reader": reader.toMap()
            ]
        ]
        eventSink(data)
    }
}
