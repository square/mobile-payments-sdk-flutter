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
        // Required fields
        guard
            let amountMoney = paymentParameters["amountMoney"] as? [String: Any],
            let amount = amountMoney["amount"] as? UInt,
            let currencyCode = amountMoney["currencyCode"] as? String,
            let idempotencyKey = paymentParameters["idempotencyKey"] as? String
        else {
            fatalError("Error: Missing or invalid required payment parameters")
        }
        
        // Convert the currency string to the appropriate type
        let currency = getCurrency(from: currencyCode)
        
        // Create the amountMoney object
        let money = Money(amount: amount, currency: currency)
        
        // Initialize PaymentParameters with required fields
        var paymentParams = PaymentParameters(
            idempotencyKey: idempotencyKey,
            amountMoney: money
        )
        
        // Optional: appFeeMoney
        if let appFeeMoney = paymentParameters["appFeeMoney"] as? [String: Any],
           let appFeeAmount = appFeeMoney["amount"] as? UInt,
           let appFeeCurrencyCode = appFeeMoney["currencyCode"] as? String {
            
            let appFeeCurrency = getCurrency(from: appFeeCurrencyCode)
            let appFee = Money(amount: appFeeAmount, currency: appFeeCurrency)
            paymentParams.appFeeMoney = appFee
        }
        
        // Optional: tipMoney
        if let tipMoney = paymentParameters["tipMoney"] as? [String: Any],
           let tipAmount = tipMoney["amount"] as? UInt,
           let tipCurrencyCode = tipMoney["currencyCode"] as? String {
            
            let tipCurrency = getCurrency(from: tipCurrencyCode)
            let tip = Money(amount: tipAmount, currency: tipCurrency)
            paymentParams.tipMoney = tip
        }
        
        // Optional: referenceId
        if let referenceId = paymentParameters["referenceId"] as? String {
            paymentParams.referenceID = referenceId
        }
        
        // Optional: note
        if let note = paymentParameters["note"] as? String {
            paymentParams.note = note
        }

        // Optional: orderId
        if let orderId = paymentParameters["orderId"] as? String {
            paymentParams.orderId = orderId
        }
        
        // Optional: autocomplete
        if let autocomplete = paymentParameters["autocomplete"] as? Bool {
            paymentParams.autocomplete = autocomplete
        }
        
        return paymentParams
    }
    

    static func getPromptParameters(promptParameters: [String: Any]) -> PromptParameters {
        return PromptParameters(mode: .default, additionalMethods: .all)
    }
}
