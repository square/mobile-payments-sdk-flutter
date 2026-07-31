import SquareMobilePaymentsSDK

extension Environment {
    func getName() -> String {
        return switch self {
        case .production:
            "production"
        case .sandbox:
            "sandbox"
        }
    }
}

extension TrackingConsentState {
    func getName() -> String {
        return switch self {
        case .denied:
            "denied"
        case .pending:
            "pending"
        case .granted:
            "granted"
        case .notRequired:
            "notRequired"
        }
    }
}
