import SquareMobilePaymentsSDK

extension ReaderInfo {
    public func toMap() -> [String: Any?] {
        return [
            "batteryStatus" : batteryStatus?.toMap() ?? NSNull(),
            "cardInsertionStatus": cardInsertionStatus.toName(),
            "firmwareInfo" : firmwareInfo?.toMap() ?? NSNull(),
            "id": String(id),
            "isBlinkable" : isBlinkable,
            "isConnectionRetryable" : isConnectionRetryable,
            "isForgettable" : isForgettable,
            "model": model.toName(),
            "name" : name,
            "serialNumber" : serialNumber ?? NSNull(),
            "statusInfo": statusInfo.toMap(),
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

extension ReaderStatusInfo {
    func toMap() -> NSDictionary {
        return [
            "status" : status.toName(),
            "unavailableReason" : unavailableReasonInfo?.reason
                .toName() ?? NSNull(),
        ]
    }
}

extension ReaderStatus {
    func toName() -> String {
        return switch self {
        case .connectingToDevice:
            "connectingToDevice"
        case .connectingToSquare:
            "connectingToSquare"
        case .readerUnavailable :
            "readerUnavailable"
        case .faulty:
            "faulty"
        case .ready:
            "ready"
        default:
            "unknown"
        }
    }
}

extension ReaderUnavailableReason {
    func toName() -> String {
        return switch self {
        case .internalError:
            "internalError"
        case .bluetoothDisabled:
            "bluetoothDisabled"
        case .bluetoothFailure:
            "bluetoothFailure"
        case .secureConnectionToSquareFailure:
            "secureConnectionToSquareFailure"
        case .secureConnectionNetworkFailure:
            "secureConnectionNetworkFailure"
        case .blockingFirmwareUpdate:
            "blockingUpdate"
        case .maxReadersConnected:
            "maxReadersConnected"
        case .notConnectedToInternet:
            "notConnectedToInternet"
        case .readerTimeout:
            "readerTimeout"
        case .revokedByDevice:
            "revokedByDevice"
        case .tapToPayError:
            "tapToPayError"
        case .tapToPayIsNotLinked:
            "tapToPayIsNotLinked"
        default:
            "unknown"
        }
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
        case .firmwareUpdateDidFail:
            "firmwareUpdateDidFail"
        case .firmwareUpdatePercentDidChange:
            "firmwareUpdatePercentDidChange"
        default:
            "unknown"
        }
    }
}
