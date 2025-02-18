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
            result(FlutterError(code: "ERROR", message: "No root view controller", details: nil))
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

    // MARK: - PaymentManagerDelegate Methods
    
    public func paymentManager(_ paymentManager: PaymentManager, didFinish payment: Payment) {
        print("Payment successful: \(payment)")
        if let onlinePayment = payment as? OnlinePayment {
            print("Finished payment with ID: \(onlinePayment.id!) status: \(onlinePayment.status.description)")
            delegateResult?(onlinePayment.toMap())
            return
        } else if let offlinePayment = payment as? OfflinePayment {
            print("Finished payment with ID: \(offlinePayment.localID) status: \(offlinePayment.status.description)")
            delegateResult?(nil)
            return
        }
        delegateResult?(nil)
        delegateResult = nil 
    }

    public func paymentManager(_ paymentManager: PaymentManager, didFail payment: Payment, withError error: Error) {
        print("Payment failed: \(error.localizedDescription)")
        delegateResult?(FlutterError(
            code: "PAYMENT_FAILED",
            message: error.localizedDescription,
            details: nil
        ))
        delegateResult = nil
    }

    public func paymentManager(_ paymentManager: PaymentManager, didCancel payment: Payment) {
        print("Payment cancelled.")
        delegateResult?(FlutterError(
            code: "PAYMENT_CANCELED",
            message: nil,
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
