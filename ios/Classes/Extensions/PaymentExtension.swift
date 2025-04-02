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
            "amountMoney": amountMoney.toMap(),
            "appFeeMoney" : appFeeMoney?.toMap(),
            "createdAt" : createdAt.ISO8601Format(),
            "id" : id,
            "locationId" : locationID,
            "orderId": orderID,
            "referenceId" : referenceID,
            "sourceType" : sourceType.getName(),
            "tipMoney": tipMoney?.toMap(),
            "totalMoney": totalMoney.toMap(),
            "updatedAt": updatedAt.ISO8601Format(),
        ]
    }
}


extension OfflineStatus {
    public func getName() -> String {
        switch self {
            case .failedToProcess: return "failedToProcess"
            case .failedToUpload: return "failedToUpload"
            case .processed: return "processed"
            case .queued: return "queued"
            case .uploaded: return "uploaded"
            case .unknown: return "unknown"
            default: return "unknown"
        }
    }
}

extension CardBrand {
    func getName() -> String {
        switch self {
            case .americanExpress: return "americanExpress"
            case .chinaUnionPay: return "chinaUnionPay"
            case .discover: return "discover"
            case .discoverDiners: return "discoverDiners"
            case .ebt: return "ebt"
            case .eftpos: return "eftpos"
            case .felica: return "felica"
            case .interac: return "interac"
            case .jcb: return "jcb"
            case .mastercard: return "mastercard"
            case .otherBrand: return "otherBrand"
            case .squareCapitalCard: return "squareCapitalCard"
            case .squareGiftCard: return "squareGiftCard"
            case .unknown: return "unknown"
            case .visa: return "visa"
        }
    }
}

extension OfflineCard {
    public func toMap() -> [String: Any?] {
        return [
            "brand": cardBrand.getName(),
            "cardholderName" : cardholderName,
            "id": id,
            "lastFourDigits": last4,
        ]
    }
}

extension CardEntryMethod {
    func getName() -> String {
        switch self {
            case .contactless: return "contactless"
            case .emv: return "emv"
            case .keyed: return "keyed"
            case .onFile: return "onFile"
            case .swiped: return "swiped"
            case .unknown: return "unknown"
        }
    }
}

extension OfflineCardPaymentDetails {
    public func toMap() -> [String: Any?] {
        return [
            "applicationIdentifier" : applicationIdentifier,
            "applicationName" : applicationName,
            "card": card?.toMap(),
            "entryMethod": entryMethod.getName(),
        ]
    }
}

extension OfflinePayment {
    public func toMap() -> [String: Any?] {
        return [
            "amountMoney": amountMoney.toMap(),
            "appFeeMoney" : appFeeMoney?.toMap(),
            "createdAt" : createdAt.ISO8601Format(),
            "id" : id,
            "locationId" : locationID,
            "orderId": orderID,
            "referenceId" : referenceID,
            "sourceType" : sourceType.getName(),
            "tipMoney": tipMoney?.toMap(),
            "totalMoney": totalMoney.toMap(),
            "updatedAt": updatedAt.ISO8601Format(),
            "cardDetails": cardDetails?.toMap(),
            "localId": localID,
            "status": status.getName(),
            "uploadedAt": uploadedAt?.ISO8601Format(),
        ]
    }
}