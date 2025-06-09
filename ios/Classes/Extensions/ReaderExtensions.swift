import SquareMobilePaymentsSDK

extension ReaderInfo {
    public func toMap() -> [String: Any?] {
        return [
            "batteryStatus" : batteryStatus?.toMap() ?? NSNull(),
            "cardInsertionStatus": cardInsertionStatus.toName(),
            "connectionInfo": connectionInfo.toMap(),
            "firmwareInfo" : firmwareInfo?.toMap() ?? NSNull(),
            "id": String(id),
            "isBlinkable" : isBlinkable,
            "isConnectionRetryable" : isConnectionRetryable,
            "isForgettable" : isForgettable,
            "model": model.toName(),
            "name" : name,
            "serialNumber" : serialNumber ?? NSNull(),
            "state" : state.toName(),
            "supportedInputMethods" : supportedInputMethods.toList()
        ]
    }
}

extension CardInputMethods {
    func toList() -> NSArray {
        let allMethods: [CardInputMethods] = [.chip, .contactless, .swipe]
        let result = allMethods
            .filter { self.contains($0) }
            .map { $0.toName() }
        return result as NSArray
    }

    func toName() -> String {
        return switch self {
        case .chip:
            "chip"
        case .contactless:
            "contactless"
        case .swipe:
            "swiped"
        default:
            "unknown"
        }
    }
}

extension ReaderState {
    func toName() -> String {
        return switch self {
        case .connecting:
            "connecting"
        case .disabled:
            "disabled"
        case .disconnected:
            "disconnected"
        case .failedToConnect:
            "failedToConnect"
        case .ready:
            "ready"
        case .updatingFirmware:
            "updatingFirmware"
        default:
            "unknown"
        }
    }
}

extension ReaderModel {
    func toName() -> String {
        return switch self {
            case .contactlessAndChip:
                "contactlessAndChip"
            case .magstripe:
                "magstripe"
            case .stand:
                "stand"
            case .tapToPay:
                "tapToPay"
            case .unknown:
                "unknown"
            default:
                "unknown"
        }
    }
}

extension ReaderFirmwareInfo {
    func toMap() -> NSDictionary {
        return [
            "failureReason" : failureReason?.localizedDescription ?? NSNull(),
            "updatePercentage" : updatePercentage,
            "version" : version
        ]
    }
}

extension ReaderConnectionFailureReason {
    func toName() -> String {
        return switch self {
        case .deniedByServer:
            "deniedByServer"
        case .genericError:
            "genericError"
        case .maxReadersConnected:
            "maxReadersConnected"
        case .networkTimeout:
            "networkTimeout"
        case .networkTransportError:
            "networkTransportError"
        case .notConnectedToInternet:
            "notConnectedToInternet"
        case .readerTimeout:
            "readerTimeout"
        case .revokedByDevice:
            "revokedByDevice"
        case .serverError:
            "serverError"
        case .tapToPayError:
            "tapToPayError"
        case .unknown:
            "unknown"
        default : "unknown"
        }
    }
}

extension ReaderConnectionFailureRecoverySuggestion {
    func toName() -> String {
        return switch self {
        case .activateAccount:
            "activateAccount"
        case .contactSupport:
            "contactSupport"
        case .enablePasscodeToUseTapToPay:
            "enablePasscodeToUseTapToPay"
        case .noSuggestion:
            "noSuggestion"
        case .retry:
            "retry"
        case .reviewTapToPayGuidelines:
            "reviewTapToPayGuidelines"
        default:
            "unknown"
        }
    }
}

extension ReaderConnectionFailureInfo {
    func toMap() -> NSDictionary {
        return [
            "failureReason" : failureReason.toName(),
            "localizedDescription" : localizedDescription,
            "localizedTitle" : localizedTitle,
            "recoverySuggestion": recoverySuggestion.toName()
        ]
    }
}

extension ReaderConnectionState {
    func toName() -> String {
        return switch self {
        case .connected:
            "connected"
        case .connecting:
            "connecting"
        case .failedToConnect:
            "failedToConnect"
        case .notConnected:
            "notConnected"
        default:
            "unknown"
        }
    }
}

extension ReaderConnectionInfo {
    func toMap() -> NSDictionary {
        return [
            "failureInfo" : failureInfo?.toMap() ?? NSNull(),
            "state" : state.toName()
        ]
    }
}

extension CardInsertionStatus {
    func toName() -> String {
        return switch self {
        case .inserted:
            "inserted"
        case .notInserted:
            "notInserted"
        case .unknown:
            "unknown"
        default:
            "unknown"
        }
    }
}

extension ReaderBatteryLevel {
    func toName() -> String {
        return switch self {
            case .criticallyLow: "criticallyLow"
            case .low: "low"
            case .mid: "mid"
            case .high: "high"
            case .full: "full"
            default: "unknown"
        }
    }
}

extension ReaderBatteryStatus {
    func toMap() -> NSDictionary {
        return [
            "isCharging" : isCharging,
            "level" : level.toName(),
            "percentage" : percentage,
        ]
    }
}

extension ReaderChange {
    func toName() -> String {
        return switch self {
        case .batteryDidBeginCharging:
            "batteryDidBeginCharging"
        case .batteryDidEndCharging:
            "batteryDidEndCharging"
        case .batteryLevelDidChange:
            "batteryLevelDidChange"
        case .cardInserted:
            "cardInserted"
        case .cardRemoved:
            "cardRemoved"
        case .connectionDidFail:
            "connectionDidFail"
        case .connectionStateDidChange:
            "connectionStateDidChange"
        case .firmwareUpdateDidFail:
            "firmwareUpdateDidFail"
        case .firmwareUpdatePercentDidChange:
            "firmwareUpdatePercentDidChange"
        case .stateDidChange:
            "stateDidChange"
        default:
            "unknown"
        }
    }
}
