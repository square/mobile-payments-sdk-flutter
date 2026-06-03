import Flutter
import SquareMobilePaymentsSDK

#if canImport(MockReaderUI)
import MockReaderUI
#endif

public class ReaderModule {
    private static var globalReaderObserver: ReaderObserverCallback?
    private static var globalPairingHandle: PairingHandle?

#if canImport(MockReaderUI)
    static var mockReader: MockReaderUI? = {
        do {
            return try MockReaderUI(for: MobilePaymentsSDK.shared)
        } catch {
            return nil
        }
    }()
#endif

    public static func showMockReaderUI(result: @escaping FlutterResult) {
#if canImport(MockReaderUI)
        do {
            try mockReader?.present()
            result(NSNull())
        } catch {
            let nsError = error as NSError
            let code: String
            if let mockError = MockReaderUIError(rawValue: nsError.code) {
                code = mockError.getName()
            } else {
                code = MockReaderUIError.unexpected.getName()
            }
            result(
                FlutterError(
                    code: code,
                    message: nsError.localizedDescription,
                    details: nsError.localizedFailureReason
                )
            )
        }
#else
        result(FlutterError(code: "unavailable", message: "MockReaderUI is not available in this build configuration.", details: nil))
#endif
    }

    public static func hideMockReaderUI(result: @escaping FlutterResult) {
#if canImport(MockReaderUI)
        mockReader?.dismiss()
        result(NSNull())
#else
        result(FlutterError(code: "unavailable", message: "MockReaderUI is not available in this build configuration.", details: nil))
#endif
    }

    public static func linkAppleAccount(result: @escaping FlutterResult) {
        MobilePaymentsSDK.shared.readerManager.tapToPaySettings.linkAppleAccount
        { error in
            if let e = error {
                let nsError = e as NSError
                if let tapToPayError = TapToPayReaderError(
                    rawValue: nsError.code
                ) {
                    result(
                        FlutterError(
                            code: tapToPayError.toName(),
                            message: tapToPayError.getMessage(
                                defaultError:
                                    "There has been an error linking apple account."
                            ),
                            details: nsError.localizedFailureReason
                        )
                    )
                } else {
                    result(
                        FlutterError(
                            code: TapToPayReaderError.unexpected.toName(),
                            message: TapToPayReaderError.unexpected
                                .getMessage(
                                    defaultError:
                                        "There has been an error linking apple account."
                                ),
                            details: nsError.localizedFailureReason
                        )
                    )
                }
            } else {
                result(NSNull())
            }
        }
    }

    public static func relinkAppleAccount(result: @escaping FlutterResult) {
        MobilePaymentsSDK.shared.readerManager.tapToPaySettings
            .relinkAppleAccount { error in
                if let e = error {
                    let nsError = e as NSError
                    if let tapToPayError = TapToPayReaderError(
                        rawValue: nsError.code
                    ) {
                        result(
                            FlutterError(
                                code: tapToPayError.toName(),
                                message: tapToPayError.getMessage(
                                    defaultError:
                                        "There has been an error re-linking apple account."
                                ),
                                details: nsError.localizedFailureReason
                            )
                        )
                    } else {
                        result(
                            FlutterError(
                                code: TapToPayReaderError.unexpected.toName(),
                                message: TapToPayReaderError.unexpected
                                    .getMessage(
                                        defaultError:
                                            "There has been an error re-linking apple account."
                                    ),
                                details: nsError.localizedFailureReason
                            )
                        )

                    }
                } else {
                    result(NSNull())
                }
            }
    }

    public static func isAppleAccountLinked(result: @escaping FlutterResult) {
        MobilePaymentsSDK.shared.readerManager.tapToPaySettings
            .isAppleAccountLinked { isLinked, error in
                if let error = error as NSError? {
                    let nsError = error as NSError
                    if let tapToPayError = TapToPayReaderError(
                        rawValue: nsError.code
                    ) {
                        result(
                            FlutterError(
                                code: tapToPayError.toName(),
                                message: tapToPayError.getMessage(
                                    defaultError:
                                        "There has been an error checking if Apple Account is Linked."
                                ),
                                details: nsError.localizedFailureReason
                            )
                        )
                    } else {
                        result(
                            FlutterError(
                                code: TapToPayReaderError.unexpected.toName(),
                                message: TapToPayReaderError.unexpected
                                    .getMessage(
                                        defaultError:
                                            "There has been an error checking if Apple Account is Linked."
                                    ),
                                details: nsError.localizedFailureReason
                            )
                        )
                    }
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
            result(NSNull())
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
        } else {
            result("alreadyComplete")
        }
    }

    public static func readerSettings(result: @escaping FlutterResult) {
        let settings = MobilePaymentsSDK.shared.readerManager.readerSettings
        result(settings.toMap())
    }
}

class ReaderPairingDelegateImpl: ReaderPairingDelegate {
    private var result: FlutterResult?

    init(result: @escaping FlutterResult) {
        self.result = result
    }

    func readerPairingDidBegin() {}

    func readerPairingDidFail(with error: Error) {
        let e = error as NSError
        if let pairingError = ReaderPairingError(rawValue: e.code) {
            result?(
                FlutterError(
                    code: pairingError.toName(),
                    message: e.localizedDescription,
                    details: e.localizedFailureReason
                )
            )
        } else {
            result?(
                FlutterError(
                    code: "unknown",
                    message: e.localizedDescription,
                    details: e.localizedFailureReason
                )
            )
        }
        result = nil
    }

    func readerPairingDidSucceed() {
        result?(true)
        result = nil
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
