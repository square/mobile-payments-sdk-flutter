import UIKit
import Flutter
import SquareMobilePaymentsSDK

public class PaymentModule: PaymentManagerDelegate {
    private static let paymentManager = MobilePaymentsSDK.shared.paymentManager
    private static let paymentDelegate = PaymentModule()
    private static var availableCardInputMethodsObserver: AvailableCardInputMethodsObserverCallback?
    private var delegateResult: FlutterResult?

    public static func startPayment(
        result: @escaping FlutterResult,
        paymentParameters: [String: Any],
        promptParameters: [String: Any]
        ) {
        let nativePaymentParameters = PaymentMapper.getPaymentParameters(paymentParameters:paymentParameters)
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

        paymentDelegate.delegateResult = result
        paymentManager.startPayment(
            nativePaymentParameters,
            promptParameters: nativePromptParameters,
            from: topController,
            delegate: paymentDelegate
        )
    }

    public static func cancelPayment(result: @escaping FlutterResult) {
        guard let handle = paymentManager.currentPaymentHandle else {
            result("noPaymentInProgress")
            return
        }
        result(handle.cancelPayment() ? "canceled" : "notCancelable")
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
            delegateResult?(onlinePayment.toMap())
        } else if let offlinePayment = payment as? OfflinePayment {
            delegateResult?(offlinePayment.toMap())
        } else {
            delegateResult?(nil)
        }
        delegateResult = nil
    }

    public func paymentManager(_ paymentManager: PaymentManager, didFail payment: Payment, withError error: Error) {
        let e = error as NSError
        if let paymentError = PaymentError(rawValue: e.code) {
            delegateResult?(FlutterError(
                code: paymentError.getName(),
                message: e.localizedDescription,
                details: e.localizedFailureReason
            ))
        } else {
            delegateResult?(FlutterError(
                code: PaymentError.unexpected.getName(),
                message: e.localizedDescription,
                details: e.localizedFailureReason
            ))
        }
        delegateResult = nil
    }

    public func paymentManager(_ paymentManager: PaymentManager, didCancel payment: Payment) {
        delegateResult?(FlutterError(
            code: "canceled",
            message: "The payment was cancelled",
            details: nil
        ))
        delegateResult = nil
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
