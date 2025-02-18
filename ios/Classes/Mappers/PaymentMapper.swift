import SquareMobilePaymentsSDK

public class PaymentMapper {

    static func getCurrency(from currency: String) -> Currency {
        switch currency.uppercased() {
        case "AUD": return .AUD
        case "CAD": return .CAD
        case "EUR": return .EUR
        case "GBP": return .GBP
        case "JPY": return .JPY
        case "USD": return .USD
        default: return .unknown
        }
    }
    
    static func getPaymentParameters(paymentParameters: [String: Any]) -> PaymentParameters {
        guard let amountMoney = paymentParameters["amountMoney"] as? [String: Any],
            let amount = amountMoney["amount"] as? UInt,
            let currencyCode = amountMoney["currencyCode"] as? String,
            let idempotencyKey = paymentParameters["idempotencyKey"] as? String else {
            fatalError("Error: Missing or invalid required payment parameters")
        }

        let currency = getCurrency(from: currencyCode)
        let money = Money(amount: amount, currency: currency)
        return PaymentParameters(idempotencyKey: idempotencyKey, amountMoney: money)
    }

    static func getPromptParameters(promptParameters: [String: Any]) -> PromptParameters {
        return PromptParameters(mode: .default, additionalMethods: .all)
    }
}