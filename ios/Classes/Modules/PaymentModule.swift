import UIKit
import Flutter
import SquareMobilePaymentsSDK

public class PaymentModule: PaymentManagerDelegate {
    private static let paymentManager = MobilePaymentsSDK.shared.paymentManager
    private static let paymentDelegate = PaymentModule()

    public static func startPayment(result: @escaping FlutterResult) {
        let paymentParameters = PaymentParameters(
            idempotencyKey: UUID().uuidString,
            amountMoney: Money(
                amount: 100,
                currency: .EUR
            )
        )
        
        let promptParameters = PromptParameters(
            mode: .default,
            additionalMethods: .all
        )

        guard let topController = UIApplication.shared.keyWindow?.rootViewController else {
            result(FlutterError(code: "ERROR", message: "No root view controller", details: nil))
            return
        }

        /*
            result(FlutterError(code: "ERROR", message: "No root view controller", details: nil))
        */
        paymentManager.startPayment(
            paymentParameters,
            promptParameters: promptParameters,
            from: topController,
            delegate: paymentDelegate
        )
    }

    // MARK: - PaymentManagerDelegate Methods
    
    public func paymentManager(_ paymentManager: PaymentManager, didFinish payment: Payment) {
        print("Payment successful: \(payment)")
    }

    public func paymentManager(_ paymentManager: PaymentManager, didFail payment: Payment, withError error: Error) {
        print("Payment failed: \(error.localizedDescription)")

    }

    public func paymentManager(_ paymentManager: PaymentManager, didCancel payment: Payment) {
        print("Payment cancelled.")
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
