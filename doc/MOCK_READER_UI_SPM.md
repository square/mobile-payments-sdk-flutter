# Using MockReaderUI with Swift Package Manager (iOS)

`MockReaderUI` lets you simulate a card reader in the **Sandbox** environment so you can
exercise the payment flow without real hardware. On iOS, when the plugin is consumed
through **Swift Package Manager (SPM)**, `MockReaderUI` is **not bundled by default** and
must be added by the app that wants it. This guide explains why, how to add it, and the
constraints you must respect.

## Why it isn't bundled by default

`MockReaderUI` is a separate binary framework distributed by Square. Two facts make it
unsafe to declare as a default dependency of the plugin's `Package.swift`:

1. **SPM has no Debug-only dependencies.** Unlike CocoaPods (`:configurations => ['Debug']`),
   SPM links a declared dependency into **every** configuration, including **Release**
   archives.
2. **`MockReaderUI.framework` is packaged as an application.** Its `Info.plist` declares
   `CFBundlePackageType = APPL` with bundle id `com.squareup.readersdk.mockreaderui`. When
   that framework ships inside a Release IPA, App Store upload validation (Transporter /
   `altool`) treats it as an embedded app that needs its own App Store Connect record and
   rejects the upload:

   ```
   Cannot determine the Apple ID from Bundle ID 'com.squareup.readersdk.mockreaderui'
   ```

   This is not a code-signing problem — archiving succeeds; the failure is purely bundle
   identity at upload time. The main `SquareMobilePaymentsSDK.framework` is packaged as a
   framework (`CFBundlePackageType = FMWK`), which is why it ships to production fine.

Because of this, the plugin's `ios/square_mobile_payments_sdk/Package.swift` depends only on
`SquareMobilePaymentsSDK`. All `MockReaderUI` code in the plugin is guarded with
`#if canImport(MockReaderUI)`; when the module is absent, `showMockReaderUI()` /
`hideMockReaderUI()` simply return an `"unavailable"` error instead of failing to build.

## How to enable it (development / Sandbox only)

Add `MockReaderUI` to your **app's** Runner target — not to the plugin:

1. Open `ios/Runner.xcodeproj` in Xcode.
2. **File ▸ Add Package Dependencies…**
3. Enter the package URL:
   ```
   https://github.com/square/mobile-payments-sdk-ios
   ```
4. Set **Dependency Rule** to **Up to Next Minor Version**, starting at **`2.6.0`**
   (see the version note below — this must match the plugin).
5. Add the **`MockReaderUI`** product to the **Runner** target.

That's it. Rebuild — `showMockReaderUI()` / `hideMockReaderUI()` now work in Sandbox.

## Why adding it to the app is enough for the plugin to use it

The plugin gates all `MockReaderUI` usage behind `#if canImport(MockReaderUI)`, which the
Swift compiler evaluates by checking whether the `MockReaderUI` **module is findable on the
build's module search path** — not whether the plugin formally declares it.

The plugin already depends on the **same** `mobile-payments-sdk-ios` package (for
`SquareMobilePaymentsSDK`). When your Runner target links the `MockReaderUI` product from
that same package, Xcode resolves one shared package graph and builds `MockReaderUI` into the
shared build products of the workspace. The plugin's compilation then finds the module,
`canImport(MockReaderUI)` becomes `true`, and the guarded code compiles in. At runtime the
framework is linked into the app, so the calls resolve. This is why a plugin that doesn't
declare the dependency can still use it once the host app provides it.

## ⚠️ Keep the version in sync with the plugin

The version rule above (**Up to Next Minor Version, `2.6.0`**) is **not arbitrary** — it must
match the native SDK pin the plugin uses:

- `ios/square_mobile_payments_sdk/Package.swift` → `.upToNextMinor(from: "2.6.0")`
- `ios/square_mobile_payments_sdk.podspec` → `~> 2.6.0`

If your app's rule resolves to a different `mobile-payments-sdk-ios` version than the plugin,
SPM will fail with a resolution conflict.

**This pin will change in future plugin releases.** Whenever you upgrade
`square_mobile_payments_sdk`, check the plugin's
[CHANGELOG](../CHANGELOG.md) for the new native SDK version and update your app's
`MockReaderUI` dependency rule to match. Treat this as a manual step on every upgrade.

## ⚠️ Do not ship a Release build with MockReaderUI linked

Because SPM cannot scope a dependency to Debug, adding `MockReaderUI` to your Runner links it
into **Release** archives too — which re-triggers the App Store rejection described above.
Use this workaround for **development and Sandbox testing only**. For an App Store build, do
**one** of the following:

- Remove the `MockReaderUI` product from the Runner target before archiving, **or**
- Add a Release-only build phase that strips `MockReaderUI.framework` from the archive, **or**
- Use the **CocoaPods** integration instead (`flutter build ios
  --no-enable-swift-package-manager`). The plugin's podspec scopes `MockReaderUI` to
  `:configurations => ['Debug']`, so CocoaPods keeps it out of Release automatically.

> The sample app in `example/` is never uploaded to the App Store, so it links `MockReaderUI`
> directly for demonstration purposes.
