import UIKit
import Flutter
import SquareMobilePaymentsSDK

public class PaymentModule: PaymentManagerDelegate {
    private static let paymentManager = MobilePaymentsSDK.shared.paymentManager
    private static let paymentDelegate = PaymentModule()
    private static var availableCardInputMethodsObserver: AvailableCardInputMethodsObserverCallback?
    private var delegateResult: FlutterResult?
    private var handleId: String?
    private var handle: PaymentHandle?

    private static func resolveHandle(_ id: String?) -> PaymentHandle? {
        let current = paymentManager.currentPaymentHandle
        guard let id else { return current }
        guard let handle = paymentDelegate.handle,
              paymentDelegate.handleId == id,
              handle === current else { return nil }
        return handle
    }

    public static func getCurrentPaymentHandleId(result: FlutterResult) {
        guard let id = paymentDelegate.handleId, resolveHandle(id) != nil else {
            result(nil)
            return
        }
        result(id)
    }

    private func finishPayment(_ value: Any?) {
        let result = delegateResult
        delegateResult = nil
        handle = nil
        handleId = nil
        result?(value)
    }

    public static func startPayment(
        result: @escaping FlutterResult,
        paymentParameters: [String: Any],
        promptParameters: [String: Any],
        handleId: String?
        ) {
        let nativePaymentParameters: PaymentParameters
        do {
            nativePaymentParameters = try PaymentMapper.getPaymentParameters(paymentParameters:paymentParameters)
        } catch {
            result(FlutterError(
                code: PaymentError.invalidPaymentParameters.getName(),
                message: error.localizedDescription,
                details: nil))
            return
        }
        let nativePromptParameters = PaymentMapper.getPromptParameters(promptParameters:promptParameters)

        guard let topController = UIApplication.shared.rootViewController else {
            result(FlutterError(
                code: "notRootViewController",
                message: "No root view controller in window iOS app",
                details: nil))
            return
        }

        if (paymentDelegate.delegateResult != nil) {
            result(FlutterError(
                code: PaymentError.paymentAlreadyInProgress.getName(),
                message: "A payment is already in progress",
                details: nil))
            return
        }

        let id = handleId ?? UUID().uuidString
        paymentDelegate.delegateResult = result
        paymentDelegate.handleId = id
        let handle = paymentManager.startPayment(
            nativePaymentParameters,
            promptParameters: nativePromptParameters,
            from: topController,
            delegate: paymentDelegate
        )
        if paymentDelegate.handleId == id {
            paymentDelegate.handle = handle
        }
    }

    public static func cancelPayment(result: @escaping FlutterResult, handleId: String?) {
        guard let handle = resolveHandle(handleId) else {
            result("noPaymentInProgress")
            return
        }
        result(handle.cancelPayment() ? "canceled" : "notCancelable")
    }

    public static func getPaymentHandleParams(result: @escaping FlutterResult, handleId: String?) {
        guard let handle = resolveHandle(handleId) else {
            result(NSNull())
            return
        }
        result(handle.toMap())
    }

    public static func triggerAdditionalPaymentMethod(result: @escaping FlutterResult, type: String, handleId: String?) {
        guard let handle = resolveHandle(handleId),
              let method = handle.additionalPaymentMethods.first(where: { $0.type.toName() == type }),
              let source = PaymentMapper.getPaymentSource(for: method.type) else {
            result(false)
            return
        }
        do {
            try method.triggerPayment(with: source)
            result(true)
        } catch {
            let e = error as NSError
            if e.domain == SQMPPaymentErrorDomain,
               let paymentError = PaymentError(rawValue: e.code) {
                result(FlutterError(
                    code: paymentError.getName(),
                    message: e.localizedDescription,
                    details: e.localizedFailureReason))
            } else {
                result(FlutterError(
                    code: PaymentError.unexpected.getName(),
                    message: e.localizedDescription,
                    details: e.localizedFailureReason))
            }
        }
    }

    public static func getIdempotencyKey(result: @escaping FlutterResult, paymentAttemptId: String) {
        result(paymentManager.getIdempotencyKey(withPaymentAttemptId: paymentAttemptId))
    }

    public static func getAvailableCardEntryMethods(result: @escaping FlutterResult) {
        result(paymentManager.availableCardInputMethods.toList())
    }

    public static func setAvailableCardEntryMethodChangedCallback(result: @escaping FlutterResult, sink: FlutterEventSink?) {
        if let eventSink = sink, availableCardInputMethodsObserver == nil {
            let observer = AvailableCardInputMethodsObserverCallback(eventSink: eventSink)
            paymentManager.add(observer)
            availableCardInputMethodsObserver = observer
        }
        result(NSNull())
    }

    public static func removeAvailableCardEntryMethodChangedCallback(result: @escaping FlutterResult) {
        if let observer = availableCardInputMethodsObserver {
            paymentManager.remove(observer)
            availableCardInputMethodsObserver = nil
        }
        result(NSNull())
    }

    public static func getPayments(result: @escaping FlutterResult) {
        let offlinePaymentQueue = paymentManager.offlinePaymentQueue
        offlinePaymentQueue.getPayments { payments, error in
            if let error = error {
                let e = error as NSError
                if let paymentError = OfflinePaymentQueueError(rawValue: e.code) {
                    result(FlutterError(
                        code: paymentError.getName(),
                        message: e.localizedDescription,
                        details: e.localizedFailureReason
                    ))
                } else {
                    result(FlutterError(
                        code: OfflinePaymentQueueError.unexpected.getName(),
                        message: e.localizedDescription,
                        details: e.localizedFailureReason
                    ))
                }
            } else {
                let paymentsArray = payments.map { $0.toMap() }
                result(paymentsArray)
            }
        }
    }

    public static func getTotalStoredPaymentAmount(result: @escaping FlutterResult) {
        let offlinePaymentQueue = paymentManager.offlinePaymentQueue
        offlinePaymentQueue.getTotalStoredPaymentsAmount { moneyAmount, error in
            if let error = error {
                let e = error as NSError
                if let paymentError = OfflinePaymentQueueError(rawValue: e.code) {
                    result(FlutterError(
                        code: paymentError.getName(),
                        message: e.localizedDescription,
                        details: e.localizedFailureReason
                    ))
                } else {
                    result(FlutterError(
                        code: OfflinePaymentQueueError.unexpected.getName(),
                        message: e.localizedDescription,
                        details: e.localizedFailureReason
                    ))
                }
            } else if let moneyAmount = moneyAmount {
                result(moneyAmount.toMap())
            } else {
                result(NSNull())
            }
        }
    }

    public func paymentManager(_ paymentManager: PaymentManager, didFinish payment: Payment) {
        if let onlinePayment = payment as? OnlinePayment {
            finishPayment(onlinePayment.toMap())
        } else if let offlinePayment = payment as? OfflinePayment {
            finishPayment(offlinePayment.toMap())
        } else {
            finishPayment(nil)
        }
    }

    public func paymentManager(_ paymentManager: PaymentManager, didFail payment: Payment, withError error: Error) {
        let e = error as NSError
        if let paymentError = PaymentError(rawValue: e.code) {
            finishPayment(FlutterError(
                code: paymentError.getName(),
                message: e.localizedDescription,
                details: e.localizedFailureReason
            ))
        } else {
            finishPayment(FlutterError(
                code: PaymentError.unexpected.getName(),
                message: e.localizedDescription,
                details: e.localizedFailureReason
            ))
        }
    }

    public func paymentManager(_ paymentManager: PaymentManager, didCancel payment: Payment) {
        finishPayment(FlutterError(
            code: "canceled",
            message: "The payment was cancelled",
            details: nil
        ))
    }

    // Optional
    public func paymentManager(_ paymentManager: PaymentManager, didStart payment: Payment) {
        print("Payment started.")
    }

    public func paymentManager(_ paymentManager: PaymentManager, willFinish payment: Payment) {
        print("Payment is about to finish.")
    }

    public func paymentManager(_ paymentManager: PaymentManager, willCancel payment: Payment) {
        print("Payment cancellation is in progress.")
    }
}

class AvailableCardInputMethodsObserverCallback: AvailableCardInputMethodsObserver {
    private let eventSink: FlutterEventSink

    init(eventSink: @escaping FlutterEventSink) {
        self.eventSink = eventSink
    }

    func availableCardInputMethodsDidChange(_ cardInputMethods: CardInputMethods) {
        eventSink([
            "type": "availableCardEntryMethodsChange",
            "payload": cardInputMethods.toList()
        ])
    }
}
