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
        case .firmwareUpdateStatusDidChange:
            "firmwareUpdateStatusDidChange"
        case .firmwareUpdateTimeDidChange:
            "firmwareUpdateTimeDidChange"
        case .readerStatusDidChange:
            "readerStatusDidChange"
        }
    }
}

extension ReaderSettings {
  func toMap() -> NSDictionary {
    return [
      "isReducedChargingModeEnabled" : reducedChargingModeEnabled,
      "preferredFirmwareUpdateTime" : preferredFirmwareUpdateTime?.toMap() ?? NSNull(),
    ]
  }
}

extension TimeOfDay {
  func toMap() -> NSDictionary {
    return [
      "hour" : hour,
      "minute" : minute,
    ]
  }
}

extension ReaderPairingError {
    func toName() -> String {
        return switch self {
        case .bluetoothDisabled:
            "bluetoothDisabled"
        case .bluetoothNotReady:
            "bluetoothNotReady"
        case .bluetoothNotSupported:
            "bluetoothUnsupported"
        case .bluetoothPermissionDenied:
            "bluetoothPermissionDenied"
        case .bluetoothPermissionNotDetermined:
            "bluetoothPermissionNotDetermined"
        case .bluetoothPermissionRestricted:
            "bluetoothPermissionRestricted"
        case .bluetoothPermissionUnknownCase:
            "bluetoothPermissionUnknownCase"
        case .bluetoothResetting:
            "bluetoothResetting"
        case .bluetoothUnknownError:
            "bluetoothUnknownError"
        case .bondingRemoved:
            "bondFailed"
        case .failedToConnect:
            "failedToConnect"
        case .notAuthorized:
            "notAuthorized"
        case .sandboxNotSupported:
            "sandboxNotSupported"
        case .simulatorNotSupported:
            "simulatorNotSupported"
        case .readerAlreadyPairing:
            "readerAlreadyPairing"
        case .timedOut:
            "timeout"
        case .updateRequired:
            "updateRequired"
        }
    }
}

extension TapToPayReaderError {

    func toName() -> String {
        return switch self {
        case .alreadyLinked:
            "alreadyLinked"
        case .banned:
            "banned"
        case .linkingFailed:
            "linkingFailed"
        case .linkingCanceled:
            "linkingCanceled"
        case .invalidToken:
            "invalidToken"
        case .notAuthorized:
            "notAuthorized"
        case .notAvailable:
            "notAvailable"
        case .noNetwork:
            "noNetwork"
        case .networkError:
            "networkError"
        case .other:
            "other"
        case .passcodeDisabled:
            "passcodeDisabled"
        case .unexpected:
            "unexpected"
        case .unsupportedOSVersion:
            "unsupportedOSVersion"
        case .unsupportedDeviceModel:
            "unsupportedDeviceModel"
        }
    }

    public func getMessage(defaultError: String) -> String {
        var errorMessage: String
        errorMessage = defaultError
        switch self {
        case .alreadyLinked:
            errorMessage =
                "Apple Tap to Pay Terms and Conditions have already been accepted."
        case .banned:
            errorMessage =
                "This device is banned from using the Tap To Pay reader."
        case .linkingFailed:
            errorMessage =
                "The Tap To Pay reader could not link/relink using the provided Apple ID."
        case .linkingCanceled:
            errorMessage = "User has canceled the linking/relinking operation."
        case .invalidToken:
            errorMessage = "The Tap To Pay reader generated an invalid token."
        case .notAuthorized:
            errorMessage =
                "This device must be authorized with a Square account in order to use Tap To Pay."
        case .notAvailable:
            errorMessage =
                "The Tap To Pay reader is not available on this device or device's operating system."
        case .noNetwork:
            errorMessage =
                "The Tap To Pay reader could not connect to the network. Please reconnect to the Internet and try again."
        case .networkError:
            errorMessage = "The network responded with an error."
        case .other:
            errorMessage =
                "An error with the Tap To Pay reader has occurred. Please try again."
        case .passcodeDisabled:
            errorMessage =
                "This device does not currently have an active passcode set."
        case .unexpected:
            errorMessage =
                "Mobile Payments SDK encountered an unexpected error. Please try again."
        case .unsupportedOSVersion:
            errorMessage =
                "The device's OS version does not meet the minimum requirement of iOS 16.7 for Tap to Pay on iPhone."
        case .unsupportedDeviceModel:
            errorMessage =
                "This device model is not currently supported to use the Tap To Pay reader."
        }
        return errorMessage
    }
}
