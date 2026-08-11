## 2026.8.1

- Propagate platform errors from manager methods that previously discarded the platform `Future` (`ReaderManager.showMockReaderUI` / `hideMockReaderUI` / `forget` / `blink`, `AuthManager.deauthorize`, `SettingsManager.showSettings`), so callers receive failures instead of unhandled async errors. Also deliver Tap to Pay unsupported-platform errors asynchronously so they can be caught with `await` or `.catchError`.

## 2026.8.0

The iOS plugin is now distributed as a Swift package. There are no changes to the Dart API.

### Breaking changes

- Flutter `3.44.0` or later is now required. The plugin ships a `Package.swift` and the sample app adopts the `UIScene` lifecycle, neither of which is supported by earlier versions.
- **(iOS)** Applications using the `UIScene` lifecycle must register plugins from `didInitializeImplicitFlutterEngine` instead of `application(_:didFinishLaunchingWithOptions:)`, and provide a `SceneDelegate` that subclasses `FlutterSceneDelegate` together with a `UIApplicationSceneManifest` entry in `Info.plist`. See the [setup guide](doc/README.md#step-3-additional-platform-setup).

### Changes

- **(iOS)** Resolve `SquareMobilePaymentsSDK` through Swift Package Manager. `MockReaderUI` is no longer bundled by default over SPM: it can't be scoped to Debug, and its framework is packaged as an application (`CFBundlePackageType = APPL`), so shipping it in a Release archive breaks App Store upload. Apps that want mock readers add it to their own target — see [Using MockReaderUI with Swift Package Manager](doc/MOCK_READER_UI_SPM.md). CocoaPods remains supported as a fallback (`enable-swift-package-manager: false`) and keeps `MockReaderUI` scoped to Debug
- **(iOS)** Move the plugin sources to `ios/square_mobile_payments_sdk/Sources`
- **(Android)** Convert the plugin and sample app build scripts to the Gradle Kotlin DSL, target Java 17, and require Android Gradle Plugin `8.9.1` or later
- Remove CocoaPods from the sample app and update the setup guides for both platforms

## 2026.7.4

- Upgrade Android and iOS native SDK to `2.6.0`. See the native changelog: [https://developer.squareup.com/docs/changelog/mobile-logs/2026-07-27](https://developer.squareup.com/docs/changelog/mobile-logs/2026-07-27)
- **(Android)** Add `hostIdMismatch` to `ReaderStatusInfoUnavailableReason` and `ReaderPairingErrorCode`. This surfaces the native `HOST_ID_MISMATCH` reason, reported when a reader refuses a connection because another device was its most-recently-paired host (previously reported as a generic internal/unknown error). This reason is Android-only; iOS `2.6.0` has no equivalent
- Add `hostIdMismatch` to `ReaderStatusInfoUnavailableReason` and `ReaderPairingErrorCode`. This surfaces the native `HOST_ID_MISMATCH` reason, reported when a reader refuses a connection because another device was its most-recently-paired host (previously reported as a generic internal/unknown error)
- Cash payments may now be automatically rounded to the nearest five cents for CAD and AUD, and optionally USD when enabled. Payment results reflect the rounded amount
- Removed the native `ExternalPaymentDetails`, `ExternalTenderType`, and `Payment.externalDetails` APIs (removed in Android native SDK `2.6.0`). This has no impact on the Flutter API: `externalDetails` was never exposed on the Dart `Payment`/`OfflinePayment` models, so no migration is required. `SourceType.externalSource` remains available

## 2026.7.3

- Fix issue #84, fix additionalPaymentMethods Map in native side 
in order to support keyed, cash, tapToPay additional methods

## 2026.7.2

- Fix issue #81
- Improve authorization error handling and SDK compatibility

## 2026.7.1

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

- Upgrade Android and iOS native SDK to `2.5.0`
- Add `SettingsManager.isShowingSettings()` to check whether the Settings screen is currently presented
- Add `SettingsManager.closeSettings()` to programmatically dismiss the Settings screen
- Add `ReaderManager.readerSettings()` which returns a new `ReaderSettings` object (`isReducedChargingModeEnabled`, `preferredFirmwareUpdateTime`). Adds a new `TimeOfDay` type (`hour`, `minute`) used by `preferredFirmwareUpdateTime`
- **Breaking:** `ReaderInfo.firmwareVersion` and `ReaderInfo.firmwarePercent` have been replaced by a single `ReaderInfo.firmwareInfo` object of shape `{ version, updatePercentage }`, mirroring the 2.5.0 native API
- **Breaking (Android):** Removed `ALIPAY`, `CASH_APP`, `SUICA`, `ID`, and `QUICPAY` from the mapped `Card.Brand` values — these were removed in native SDK `2.5.0`

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