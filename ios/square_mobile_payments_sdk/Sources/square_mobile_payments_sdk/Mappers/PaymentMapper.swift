import Foundation
import SquareMobilePaymentsSDK

/// A payment parameter sent from Dart that the native SDK cannot accept. Surfaced to Dart as
/// `PaymentErrorCode.invalidPaymentParameters` instead of aborting the process.
enum PaymentMapperError: LocalizedError {
    case invalid(String)

    var errorDescription: String? {
        switch self {
        case .invalid(let message): return message
        }
    }
}

public class PaymentMapper {

    static func getCurrency(from currency: String) throws -> Currency {
        switch currency.uppercased() {
            case "AUD": return .AUD
            case "CAD": return .CAD
            case "EUR": return .EUR
            case "GBP": return .GBP
            case "JPY": return .JPY
            case "USD": return .USD
            default: throw PaymentMapperError.invalid("Unknown currencyCode '\(currency)'")
        }
    }

    /// Reads a `Money` map. Amounts arrive from Dart as `int`, which bridges as `Int`, so a negative
    /// value fails `as? UInt`. That used to hit `fatalError` for the amount and was silently dropped
    /// for tip and app fee; both are caller bugs that must come back as an error.
    static func getMoney(_ money: [String: Any]?, field: String) throws -> Money {
        guard let money else {
            throw PaymentMapperError.invalid("\(field) is required")
        }
        guard let amount = money["amount"] as? UInt else {
            throw PaymentMapperError.invalid("\(field).amount must be a non-negative integer")
        }
        guard let currencyCode = money["currencyCode"] as? String else {
            throw PaymentMapperError.invalid("\(field).currencyCode is required")
        }
        return Money(amount: amount, currency: try getCurrency(from: currencyCode))
    }

    static func getDelayAction(from delayAction: String) -> DelayAction {
        switch delayAction {
        case "cancel": return .cancel
        case "complete": return .complete
        default: return .cancel
        }
    }

    static func getPaymentParameters(paymentParameters: [String: Any]) throws -> PaymentParameters {
        // Required fields
        let money = try getMoney(paymentParameters["amountMoney"] as? [String: Any], field: "amountMoney")
        guard let processingMode = paymentParameters["processingMode"] as? String else {
            throw PaymentMapperError.invalid("processingMode is required")
        }
        guard let allowCardSurcharge = paymentParameters["allowCardSurcharge"] as? Bool else {
            throw PaymentMapperError.invalid("allowCardSurcharge is required")
        }
        guard let paymentAttemptID = paymentParameters["paymentAttemptId"] as? String else {
            throw PaymentMapperError.invalid("paymentAttemptId is required")
        }

        let paymentParams = PaymentParameters(
            paymentAttemptID: paymentAttemptID,
            amountMoney: money,
            processingMode: try Self.convertToProcessingMode(processingMode)
        )

        paymentParams.allowCardSurcharge = allowCardSurcharge

        // Optional: appFeeMoney. Present but invalid is an error, not something to drop on the floor.
        if paymentParameters["appFeeMoney"] != nil, !(paymentParameters["appFeeMoney"] is NSNull) {
            paymentParams.appFeeMoney = try getMoney(paymentParameters["appFeeMoney"] as? [String: Any], field: "appFeeMoney")
        }

        // Optional: tipMoney
        if paymentParameters["tipMoney"] != nil, !(paymentParameters["tipMoney"] is NSNull) {
            paymentParams.tipMoney = try getMoney(paymentParameters["tipMoney"] as? [String: Any], field: "tipMoney")
        }
        
        // Optional: referenceId
        if let referenceId = paymentParameters["referenceId"] as? String {
            paymentParams.referenceID = referenceId
        }
        
        // Optional: note
        if let note = paymentParameters["note"] as? String {
            paymentParams.note = note
        }

        // Optional: delayDuration
        if let delayDuration = paymentParameters["delayDuration"] as? Int {
            paymentParams.delayDuration = TimeInterval(delayDuration)
        }

        // Optional: delayAction
        if let delayAction = paymentParameters["delayAction"] as? String {
            paymentParams.delayAction = getDelayAction(from: delayAction)
        }

        // Optional: orderId
        if let orderId = paymentParameters["orderId"] as? String {
            paymentParams.orderID = orderId
        }
        
        // Optional: autocomplete
        if let autocomplete = paymentParameters["autocomplete"] as? Bool {
            paymentParams.autocomplete = autocomplete
        }

        // Optional: acceptPartialAuthorization
        if let acceptPartialAuthorization = paymentParameters["acceptPartialAuthorization"] as? Bool {
            paymentParams.acceptPartialAuthorization = acceptPartialAuthorization
        }

        // Optional: customerId
        if let customerId = paymentParameters["customerId"] as? String {
            paymentParams.customerID = customerId
        }

        // Optional: locationId
        if let locationId = paymentParameters["locationId"] as? String {
            paymentParams.locationID = locationId
        }

        // Optional: teamMemberId
        if let teamMemberId = paymentParameters["teamMemberId"] as? String {
            paymentParams.teamMemberID = teamMemberId
        }

        // Optional: statementDescription
        if let statementDescription = paymentParameters["statementDescription"] as? String {
            paymentParams.statementDescriptionIdentifier = statementDescription
        }

        return paymentParams
    }


    static func convertToProcessingMode(_ value: String) throws -> ProcessingMode {
        switch value {
        case "offlineOnly": return .offlineOnly
        case "onlineOnly": return .onlineOnly
        case "autoDetect": return .autoDetect
        // Never fall back to autoDetect: that can store a payment offline without the caller opting in.
        default: throw PaymentMapperError.invalid("Unknown processingMode '\(value)'")
        }
    }

    static func getPromptMode(from mode: String) -> PromptMode {
        switch mode {
        case "customMode": return .custom
        case "defaultMode": return .default
        default: return .default
        }
    }

    static func getAdditionalPaymentMethod(from type: String) -> AdditionalPaymentMethods? {
        switch type {
        case "keyed": return .keyed
        case "cash": return .cash
        case "tapToPay": return .tapToPay
        default: return nil
        }
    }

    static func getPromptParameters(promptParameters: [String: Any]) -> PromptParameters {
        let mode = getPromptMode(from: promptParameters["mode"] as? String ?? "defaultMode")

        // Map the additional payment methods sent from Dart. An empty (or missing)
        // list must result in no additional methods being shown, so we intentionally
        // avoid falling back to `.all`.
        let methodNames = promptParameters["additionalPaymentMethods"] as? [String] ?? []
        let methods = methodNames.compactMap { getAdditionalPaymentMethod(from: $0) }
        let additionalMethods = AdditionalPaymentMethods(methods)

        return PromptParameters(mode: mode, additionalMethods: additionalMethods)
    }
}
