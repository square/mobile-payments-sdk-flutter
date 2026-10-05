# AGENTS.md — Square Mobile Payments SDK for Flutter

Guidance for coding agents **integrating the Mobile Payments SDK into a Flutter app**.
This repo is the `square_mobile_payments_sdk` plugin plus the Donut Counter sample in `example/`.

Current package version: **2026.8.4**, wrapping native SDK **iOS 2.6.0** / **Android 2.6.1**.

## Install

```sh
flutter pub add square_mobile_payments_sdk
```

**Flutter 3.44.0 or later is required** (Dart SDK `^3.12.0`). The iOS plugin ships a `Package.swift` and the sample adopts the `UIScene` lifecycle; neither works on earlier Flutter versions.

## Build constraints

These silently break integrations. Check them before writing any code.

### Android

| Constraint | Value |
| :--- | :--- |
| `minSdk` | 28 |
| `compileSdk` | 36 |
| Android Gradle Plugin | 8.9.1 or later (sample uses 8.12.1) |
| Gradle | 8.13 or later (sample uses 8.14) |
| Java / JVM target | 17 |

In `android/app/build.gradle.kts`, add Square's Maven repo (it is not on Maven Central) and the dependency:

```kotlin
val squareSdkVersion = "2.6.1"

repositories {
    maven { url = uri("https://sdk.squareup.com/public/android/") }
}

dependencies {
    implementation("com.squareup.sdk:mobile-payments-sdk:$squareSdkVersion")
}
```

**Proguard / R8 is not supported.** Shrinking strips bytecode the SDK loads reflectively at runtime:

```kotlin
buildTypes {
    release {
        isMinifyEnabled = false
        isShrinkResources = false
    }
}
```

This is the most expensive thing to get wrong: `flutter run` works, `flutter build apk --release` succeeds, and the failure only appears at runtime. Do not "fix" it by adding keep rules.

**AndroidX and Jetifier** must both be on in `android/gradle.properties` — the SDK bundles a dependency that still references the legacy support library:

```properties
android.useAndroidX=true
android.enableJetifier=true
```

### iOS

Minimum deployment target **iOS 16.0**. Projects created by `flutter create` default lower and **fail to resolve the SDK** — raise it in Xcode before anything else.

Dependencies resolve through Swift Package Manager, which Flutter enables by default. There is no `pod install` step and no `Podfile`. To fall back to CocoaPods, opt out in your app's `pubspec.yaml`:

```yaml
flutter:
  config:
    enable-swift-package-manager: false
```

**The setup run script is mandatory.** On the Runner target's **Build Phases** tab, add a **New Run Script Phase**:

```sh
FRAMEWORKS="${BUILT_PRODUCTS_DIR}/${FRAMEWORKS_FOLDER_PATH}"
"${FRAMEWORKS}/SquareMobilePaymentsSDK.framework/setup"
```

Without it the framework is not usable at runtime, and nothing fails at build time.

**`UIScene` lifecycle setup (iOS).** Getting this wrong produces a black screen with no error, which is very hard to diagnose. You need all three:

1. Register plugins from `didInitializeImplicitFlutterEngine`, **not** `application(_:didFinishLaunchingWithOptions:)`. Registering in both raises an assertion in `FlutterEngine` and kills the app at launch.
2. A `SceneDelegate` subclassing `FlutterSceneDelegate`, listed in the target's **Compile Sources**. If the class is missing at runtime the scene starts with no root view controller — that is the black screen.
3. A `UIApplicationSceneManifest` entry in `Info.plist` pointing at it.

Full snippets: [doc/README.md](doc/README.md#step-3-additional-platform-setup). Working example: [example/ios/Runner/AppDelegate.swift](example/ios/Runner/AppDelegate.swift), [SceneDelegate.swift](example/ios/Runner/SceneDelegate.swift), [Info.plist](example/ios/Runner/Info.plist).

## Credentials

Three values, from the [Developer Console](https://developer.squareup.com/apps). Toggle **Sandbox** at the top of the Credentials page for test credentials.

| Value | Where it is used |
| :--- | :--- |
| Application ID | native initialization, per platform (below) |
| Access token | `authManager.authorize(accessToken, locationId)` from Dart |
| Location ID | same call — from the **Locations** page |

Initialization is **native**, not Dart. The application ID must be passed on each platform:

- **Android** — `MobilePaymentsSdk.initialize(applicationId, this)` in `MainApplication.onCreate()`.
- **iOS** — `MobilePaymentsSDK.initialize(squareApplicationID:)` in `AppDelegate`.

Authorization is Dart-side and takes the access token and location ID.

In this sample:

| File | Placeholder |
| :--- | :--- |
| [example/android/app/src/main/kotlin/.../MainApplication.kt](example/android/app/src/main/kotlin/com/squareup/square_mobile_payments_sdk_example/MainApplication.kt) | `MOBILE_PAYMENT_SDK_APPLICATION_ID = "REPLACE ME!"` |
| [example/ios/Runner/AppDelegate.swift](example/ios/Runner/AppDelegate.swift) | `let applicationId = "REPLACE ME!"` |
| [example/lib/permissions_screen.dart](example/lib/permissions_screen.dart) | `"YOUR_ACCESS_TOKEN"`, `"YOUR_LOCATION_ID"` |

**Leave those placeholders in place** — never commit real credential values to this repo or to the user's. Tell the user to fill them in locally.

A personal access token is acceptable for Sandbox only. Production authorization must use OAuth, and a shipped app must not embed a personal access token.

## Device permissions

The SDK does not request permissions for you. The sample uses `permission_handler`.

**Android** — declare in `AndroidManifest.xml` and request at runtime:

| Permission | Purpose |
| :--- | :--- |
| `ACCESS_FINE_LOCATION` / `ACCESS_COARSE_LOCATION` | Confirm payments occur in a supported Square location |
| `BLUETOOTH_CONNECT` | Communicate with contactless and chip readers |
| `BLUETOOTH_SCAN` | Discover nearby readers |
| `RECORD_AUDIO` | Receive data from magstripe readers |
| `READ_PHONE_STATE` | Identify the device to Square servers |

**iOS** — `Info.plist` keys:

| Key | Purpose |
| :--- | :--- |
| `NSBluetoothAlwaysUsageDescription` | Connect and communicate with Square readers |
| `NSLocationWhenInUseUsageDescription` | Confirm where transactions take place |
| `NSMicrophoneUsageDescription` | Receive payment card data from magstripe readers |

See [example/android/app/src/main/AndroidManifest.xml](example/android/app/src/main/AndroidManifest.xml) and [example/lib/permissions_screen.dart](example/lib/permissions_screen.dart).

## Ordering rule

The order is not optional:

1. **Initialize** — natively, at app launch (Android `MainApplication`, iOS `AppDelegate`).
2. **Request permissions** — at runtime, before authorizing.
3. **Authorize** — `await sdk.authManager.authorize(accessToken, locationId)`.
4. Only then use `paymentManager`, `readerManager`, `settingsManager`, or `tapToPaySettings`.

Any manager call made before authorization completes throws **`notAuthorized`**. If you see that error, the fix is ordering, not parameters.

Everything hangs off one object:

```dart
import 'package:square_mobile_payments_sdk/square_mobile_payments_sdk.dart';

final sdk = SquareMobilePaymentsSdk();

try {
  await sdk.authManager.authorize(accessToken, locationId);
} on AuthorizeError catch (e) {
  print('Authorization error: ${e.code} ${e.message}');
}
```

`sdk.authManager` also exposes `getAuthorizationState()`, `getAuthorizedLocation()`, and `deauthorize()`.

> Note: [doc/README.md](doc/README.md) shows a few calls flattened onto the plugin object (`sdk.authorize(…)`, `sdk.showMockReaderUI()`). The current Dart API routes them through the managers — `sdk.authManager.authorize(…)`, `sdk.readerManager.showMockReaderUI()`. Follow the manager form; that is what [example/lib](example/lib) uses.

## Taking a payment

```dart
final handle = sdk.paymentManager.startPayment(
  PaymentParameters(
    amountMoney: Money(amount: 100, currencyCode: CurrencyCode.usd),
    paymentAttemptId: orderDerivedId,
    processingMode: ProcessingMode.autoDetect,
    allowCardSurcharge: false,
  ),
  PromptParameters(
    additionalPaymentMethods: List.empty(),
    mode: PromptMode.defaultMode,
  ),
  (payment, error) {
    if (error != null) {
      print('Payment error: ${error.code} ${error.message}');
    }
  },
);
```

`startPayment` returns a `PaymentHandle` right away (`cancelPayment()`, `getParams()`, `triggerAdditionalPaymentMethod()`); the result arrives in the callback.

`paymentAttemptId` must be derived from an order/sale identifier in a real integration, not a fresh UUID per tap — that is what protects against duplicate payments on retry.

`Payment` is a **sealed class** as of 2026.8.3: switch on `Payment.online` / `Payment.offline` rather than treating it as one concrete model. `allowCardSurcharge` and `Money.amount` are required, and `processingMode` is the `ProcessingMode` enum, not a number. See [CHANGELOG.md](CHANGELOG.md) for the full list of breaking changes and [doc/REFERENCE.md](doc/REFERENCE.md) for the type reference.

## Testing with mock readers in Sandbox

Physical Square readers do **not** work in Sandbox. Virtual readers come from the mock reader UI.

```dart
try {
  await sdk.readerManager.showMockReaderUI();
} catch (e) {
  print('Mock Reader UI error: $e');
}
await sdk.readerManager.hideMockReaderUI();
```

These throw outside Sandbox — wrap them in `try`/`catch`.

**iOS + Swift Package Manager: `MockReaderUI` is not bundled by default.** SPM has no Debug-only dependencies, and `MockReaderUI.framework` is packaged as an application (`CFBundlePackageType = APPL`), so shipping it in a Release archive gets the upload rejected by App Store validation. The plugin therefore guards all its mock-reader code with `#if canImport(MockReaderUI)` and returns an `"unavailable"` error when the module is absent. To enable it, add the `MockReaderUI` product to **your Runner target** with dependency rule **Up to Next Minor Version from `2.6.0`** — the version must match the plugin's pin or SPM fails to resolve. Then strip it before archiving. Full detail and the alternatives: **[doc/MOCK_READER_UI_SPM.md](doc/MOCK_READER_UI_SPM.md)**.

**Known limitation — read this before planning an automated test.** The plugin exposes only `showMockReaderUI()` and `hideMockReaderUI()`, because that is all the underlying native frameworks expose. There is no API to add a mock reader, select a card brand, or simulate a tap/insert/swipe. Those steps happen only through the floating button the SDK draws over your app, and require a human:

> tap the floater → add a magstripe or contactless & chip reader → start the payment → tap the floater → tap/insert/swipe a card

So an agent **cannot** drive an end-to-end Sandbox payment on its own. If a task requires one, say so and ask the user to perform the taps — do not sit waiting on a `startPayment` callback that will never fire.

Also: after testing an inserted card, remove it through the mock reader UI before starting the next payment.

## Platform-specific APIs

`sdk.tapToPaySettings` (`linkAppleAccount()`, `relinkAppleAccount()`, `isAppleAccountLinked()`, `isDeviceCapable()`) is **iOS only** — calling it on Android errors.

Offline payments are **Beta** and require the seller to opt in through Square; `settingsManager.paymentSettings.isOfflineProcessingAllowed()` reports whether they have. Processing offline for a seller who has not been onboarded returns `USAGE_ERROR`. See [doc/README.md](doc/README.md#-offline-payments-beta).

## Documentation

Fetch the `.md` variants. The HTML pages are iframe shells and return only navigation chrome to a programmatic fetch.

- Overview — https://developer.squareup.com/docs/mobile-payments-sdk.md
- Build with Flutter — https://developer.squareup.com/docs/mobile-payments-sdk/flutter.md
- Build on Android (native constraints) — https://developer.squareup.com/docs/mobile-payments-sdk/android.md
- Build on iOS (native constraints) — https://developer.squareup.com/docs/mobile-payments-sdk/ios.md
- Handling errors — https://developer.squareup.com/docs/mobile-payments-sdk/android/handling-errors.md and https://developer.squareup.com/docs/mobile-payments-sdk/ios/handling-errors.md

In-repo: [doc/README.md](doc/README.md) is the step-by-step setup guide, [doc/REFERENCE.md](doc/REFERENCE.md) is the type and method reference, [doc/MOCK_READER_UI_SPM.md](doc/MOCK_READER_UI_SPM.md) covers mock readers over SPM, and [CHANGELOG.md](CHANGELOG.md) records breaking changes per release.

## Repo layout

```
lib/
  square_mobile_payments_sdk.dart   SquareMobilePaymentsSdk — the five managers
  src/managers/                     auth, payment, reader, settings, tapToPaySettings
  src/models/                       enums, objects (freezed/json_serializable generated)
  src/errors/
android/build.gradle.kts            native SDK pin, minSdk 28 / compileSdk 36, Java 17
ios/square_mobile_payments_sdk/Package.swift   SPM pin, iOS 16.0
doc/                                setup guide, API reference, MockReaderUI over SPM
example/                            Donut Counter sample (SPM on iOS, Gradle KTS on Android)
```

Running the sample: fill in the three placeholders listed above, then `flutter run` from `example/`.
