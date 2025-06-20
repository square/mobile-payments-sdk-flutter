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
            @unknown default:
                return "unknown"
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
        default: "unknown"
        }
    }
}