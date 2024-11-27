import SquareMobilePaymentsSDK

extension SourceType {
    public func getName() -> String {
        switch self {
        case .wallet: return "wallet"
        case .card: return "card"
        case .cash: return "cash"
        case .squareAccount: return "squareAccount"
        case .bankAccount: return "bankAccount"
        case .external: return "externalSource"
        default: return "unknown"
        }
    }
}

extension Currency {
    public func getCurrencyCode() -> String {
        switch self {
            case .AUD: return "aud"
            case .CAD: return "cad"
            case .EUR: return "eur"
            case .GBP: return "gbp"
            case .JPY: return "jpy"
            case .USD: return "usd"
            default: return "unknown"
        }
    }
}

extension MoneyAmount {
    public func toMap() -> [String: Any?] {
        return [
            "amount" : amount,
            "currencyCode" : currency.getCurrencyCode()
        ]
    }
}

extension OnlinePayment {
    public func toMap() -> [String: Any?] {
        return [
            "id" : id,
            "createdAt" : createdAt.ISO8601Format(),
            "updatedAt": updatedAt.ISO8601Format(),
            "amountMoney": amountMoney.toMap(),
            "tipMoney": tipMoney?.toMap(),
            "appFeeMoney" : appFeeMoney?.toMap(),
            "totalMoney": totalMoney.toMap(),
            "locationId" : locationID,
            "orderId": orderID,
            "referenceId" : referenceID,
            "sourceType" : sourceType.getName(),
        ]
    }
}