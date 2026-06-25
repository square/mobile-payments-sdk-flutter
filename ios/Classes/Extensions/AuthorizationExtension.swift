import SquareMobilePaymentsSDK

extension AuthorizationState {
    public func getName() -> String {
        switch self {
            case .notAuthorized:
                return "notAuthorized"
            case .authorizing:
                return "authorizing"
            case .authorized:
                return "authorized"
        }
    }
}

extension AuthorizationError {
    func getName() -> String {
        return switch self {
        case .alreadyAuthorized: "alreadyAuthorized"
        case .alreadyInProgress: "alreadyInProgress"
        case .authorizationCodeAlreadyRedeemed: "authorizationCodeAlreadyRedeemed"
        case .deauthorizationInProgress: "deauthorizationInProgress"
        case .deviceTimeDoesNotMatchServerTime: "deviceTimeDoesNotMatchServerTime"
        case .emptyAccessToken: "emptyAccessToken"
        case .emptyLocationID: "emptyLocationId"
        case .expiredAuthorizationCode: "expiredAuthorizationCode"
        case .invalidAccessToken: "invalidAccessToken"
        case .invalidLocationID: "invalidLocationId"
        case .invalidAuthorizationCode : "invalidAuthorizationCode"
        case .locationNotActivatedForCardProcessing: "locationNotActivatedForCardProcessing"
        case .noNetwork: "noNetwork"
        case .unexpected: "unexpected"
        case .unsupportedCountry: "unsupportedCountry"
        }
    }
}

extension Location {
    func toMap() -> [String: Any] {
        return [
            "id": id,
            "currencyCode": currency.getCurrencyCode(),
            "name": name,
            "mcc": mcc
        ]
    }
}

extension UIApplication {
    var rootViewController: UIViewController? {
        let windowScenes = connectedScenes.compactMap { $0 as? UIWindowScene }
        let window = windowScenes
            .first(where: { $0.activationState == .foregroundActive })?
            .windows
            .first(where: \.isKeyWindow)
            ?? windowScenes.flatMap(\.windows).first(where: \.isKeyWindow)
            ?? windowScenes.flatMap(\.windows).first
        return window?.rootViewController
    }
}
