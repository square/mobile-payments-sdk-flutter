## 2026.6.1

Aligns iOS and Android error handling with exhaustive, typed Dart enums.

### Breaking changes
- `ReaderManager.pairReader` callback signature changed from `void Function(bool, String?)` to `void Function(bool, ReaderPairingError?)`. The second argument is now a typed `ReaderPairingError` exception instead of a raw message string.
- `SettingsManager.getTrackingConsentState()` now returns `Future<TrackingConsentState>` (new enum) instead of `Future<String>`.
- The `ReaderPairingError` *enum* was renamed to `ReaderPairingErrorCode`; `ReaderPairingError` is now an `Exception` class. Several cases were renamed: `bluetoothNotSupported` → `bluetoothUnsupported`, `bondingRemoved` → `bondFailed`, `timedOut` → `timeout`.
- `PaymentErrorCode`: removed `timedOut` (→ `timeout`), `noNetworkAndMerchantNotOptedIntoOfflineProcessing`, and `unknown`; added `trackingConsentIsPending` and `paymentAttemptIdReused`.
- `OfflinePaymentQueueErrorCode`: removed `unknown`; added `consentNotProvided` and `obsoleteSdk`.
- `MockReaderUIErrorCode`: removed `unknown`.
- `ReaderModel`: removed `embedded`.
- `ReaderStatusInfoUnavailableReason`: `offLineSessionExpired` → `offlineSessionExpired`, `readerUnavailableOffLine` → `readerUnavailableOffline`.
- `OfflinePayment` now has a required `sourceType` field.
- `linkAppleAccount`, `relinkAppleAccount`, and `isAppleAccountLinked` now throw a typed `TapToPayError` (with `TapToPayErrorCode`) instead of returning/throwing generic strings.

### Fixes
- `AuthorizationManager.authorize` now reports a typed error (e.g. on revoked access tokens) instead of an `unknown` code or hanging. (#74)
- Tracking consent, environment, and currency codes are normalized for `json_serializable`.

## 2026.5.1

* Upgrade Android and iOS native SDK to `2.5.0`
* Add `SettingsManager.isShowingSettings()` to check whether the Settings screen is currently presented
* Add `SettingsManager.closeSettings()` to programmatically dismiss the Settings screen
* Add `ReaderManager.readerSettings()` which returns a new `ReaderSettings` object (`isReducedChargingModeEnabled`, `preferredFirmwareUpdateTime`). Adds a new `TimeOfDay` type (`hour`, `minute`) used by `preferredFirmwareUpdateTime`
* **Breaking:** `ReaderInfo.firmwareVersion` and `ReaderInfo.firmwarePercent` have been replaced by a single `ReaderInfo.firmwareInfo` object of shape `{ version, updatePercentage }`, mirroring the 2.5.0 native API
* **Breaking (Android):** Removed `ALIPAY`, `CASH_APP`, `SUICA`, `ID`, and `QUICPAY` from the mapped `Card.Brand` values — these were removed in native SDK `2.5.0`

## 2026.3.1

Upgrade native SDKs: Android 2.4.0, iOS: 2.4.0

## 2025.12.1

Fix ReaderStatusInfo type issue

## 2025.11.2

Upgrade native SDKs: Android 2.3.4, iOS: 2.3.1

## 2025.11.1

- Support for paymentAttemptId 

## 2025.9.1

Upgrade native SDKs: Android 2.3.1, iOS: 2.3.0
Remove deprecated use of toLower
- Adding consent tracking  
- (iOS) reader info states

## 2025.7.1

Upgrade native SDKs: Android 2.3.0, iOS: 2.2.3
Remove deprecated use of toLower

## 2025.6.1

Add Offline payments support.
Add Reader management support.

## 2025.3.0

Add Tap to Pay support for iOS.


## 2025.1.0

Mobile Payments SDK for Flutter:

First versions of SDK for Flutter, its include: Authentication, SDK State, Status, MockReader UI, Settings UI, Payment Processing.
