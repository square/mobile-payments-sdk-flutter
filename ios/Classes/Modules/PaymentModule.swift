import UIKit
import Flutter
import SquareMobilePaymentsSDK

public class PaymentModule: PaymentManagerDelegate {
    private static let paymentManager = MobilePaymentsSDK.shared.paymentManager
    private static let paymentDelegate = PaymentModule()
    private var delegateResult: FlutterResult?

    public static func startPayment(
        result: @escaping FlutterResult,
        paymentParameters: [String: Any],
        promptParameters: [String: Any]
        ) {
        let nativePaymentParameters = PaymentMapper.getPaymentParameters(paymentParameters:paymentParameters)
        let nativePromptParameters = PaymentMapper.getPromptParameters(promptParameters:promptParameters)

        guard let topController = UIApplication.shared.keyWindow?.rootViewController else {
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

    public static func getPayments(result: @escaping FlutterResult) {
        let offlinePaymentQueue = paymentManager.offlinePaymentQueue
        offlinePaymentQueue.getPayments { payments, error in
            if let error = error {
                result(FlutterError(code: "GET_OFFLINE_PAYMENTS_FAILED", message: error.localizedDescription, details: nil))
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
                result(FlutterError(code: "GET_TOTAL_STORED_PAYMENTS_FAILED", message: error.localizedDescription, details: nil))
            } else if let moneyAmount = moneyAmount {
                result(moneyAmount.toMap())
            } else {
                //NEVER: if money is nil there was an error, so the error if will occur
                result(NSNull())
            }
        }
    }

    public func paymentManager(_ paymentManager: PaymentManager, didFinish payment: Payment) {
        if let onlinePayment = payment as? OnlinePayment {
            delegateResult?(onlinePayment.toMap())
        } else if let offlinePayment = payment as? OfflinePayment {
            delegateResult?(nil)
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
                code: "unknown",
                message: nil,
                details: nil
            ))
        }
        delegateResult = nil
    }

    public func paymentManager(_ paymentManager: PaymentManager, didCancel payment: Payment) {
        delegateResult?(FlutterError(
            code: "canceled",
            message: "the payment was cancelled",
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