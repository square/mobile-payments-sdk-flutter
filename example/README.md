# 🍩 Donut Counter - A Square Mobile Payments SDK Sample App

<p align="center">
<img src="../images/donut-counter-home.png" width="300"/> <img src="../images/donut-counter-take-payment.png" width="300"/>
</p>

Donut Counter is a sample application for building with the [Square Mobile Payments SDK](https://developer.squareup.com/docs/mobile-payments-sdk) on Flutter. The app demonstrates how to install and initialize the SDK in a Flutter project, as well as utilizing the APIs and user interfaces provided by the SDK to authorize a merchant and take a payment. To get started, follow the steps below.


## SDK Quick Reference

| Reference                        | Sample App Project Location                   |
| -------------------------------- | ----------------------------------------- |
| ⚡️ Initializing the SDK (iOS)         | [ios/Runner/AppDelegate.swift](./ios/Runner/AppDelegate.swift#L13) |
| ⚡️ Initializing the SDK (Android)     | [android/app/src/main/kotlin/com/squareup/square_mobile_payments_sdk_example/MainApplication.kt](./android/app/src/main/kotlin/com/squareup/square_mobile_payments_sdk_example/MainApplication.kt#L9) |
| 🔒 Authorizing the SDK           | [lib/permissions_screen.dart](./lib/permissions_screen.dart#L88) |
| 💰 Taking a Payment              | [lib/donut_counter_screen.dart](./lib/donut_counter_screen.dart#L22) |
| ⚙️ Presenting Settings Screen    | [lib/donut_counter_screen.dart](./lib/donut_counter_screen.dart#L92) |
| 💳 Presenting MockReaderUI       | [lib/donut_counter_screen.dart](./lib/donut_counter_screen.dart#L83) |

# Get Started

## 1. Review requirements

### Assumptions
The example app makes the following assumptions:

* You have read the [Mobile Payments SDK "Build on iOS"](https://developer.squareup.com/docs/mobile-payments-sdk/ios)  documentation. The example app focuses on demonstrating how the Square Mobile Payments SDK works by using all of the provided user interfaces of the SDK.
* You have a Square account enabled for payment processing. If you have not
  enabled payment processing on your account (or you are not sure), visit
  [squareup.com/activate](https://squareup.com/activate).

### Prerequisites

* Confirm your environment meets the Square Mobile Payments SDK build requirements listed in the [root README](../README.md) for this repo.
* Clone this repo (if you have not already):
    * //TODO link to repository
* Make sure you've set up your environment for developing in Flutter

## 2. Get application credentials
In your [Developer Dashboard](https://developer.squareup.com/apps), create an application or open an existing one you would like to use. If this is your first time creating an application with Square, you can review this [Get Started](https://developer.squareup.com/docs/square-get-) guide for more information.

On the application's Credentials page, toggle the environment you'd like to use at the top (Production/Sandbox). Sandbox credentials will allow you to take mock payments with a mock reader. Make note of:
* **Application ID**
* **Access Token**

Click "Locations" in the left navigation and make note of the Default Test Account's **Location ID** as well. These values will be used in the next step.

## 3. Configure the SDK
* For iOS: Replace your Square Application ID in [AppDelegate.swift](./ios/Runner/AppDelegate.swift#L13).
* For Android: Replace your Square Application Id in [MainApplication.kt](./android/app/src/main/kotlin/com/squareup/square_mobile_payments_sdk_example/MainApplication.kt#L9).
* Then, for both platforms: Replace your Access Token and Location ID in [permissions_screen.dart](./lib/permissions_screen.dart#L88)

## 4. Run the app
1. Make sure you're in the example folder of the repository. `cd example`
2. Run the iOS simulator or Android emulator.
3. Run `flutter run`.
* For iOS: `cd ios`, and then run `pod install`

You can also run the app for each individual platform by opening `ios/Runner.xcworkspace` in Xcode for iOS; or `android/build.gradle` in Android Studio, for Android.

## 5. Request required permissions
On the first install of the application, you will be required to grant various device permissions in order for the SDK to be fully functional.

Tap the 'Permissions' button found on the top right of the home view. Tap the empty checkbox next to each permission to grant the specific device permission. The checkbox will update with a checkmark if the proper permission is granted. All permissions must be granted.
<p align="center">
<img src="../images/donut-counter-home-not-auth.png" width="300"/>
<img src="../images/donut-counter-permissions.png" width="300"/>
</p>

## 6. Authorize the SDK
Within the Permissions screen, you will find a `Sign In` button. Tap this button to authorize the sdk with the credentials you provided in Step 3. If an issue occurs during authorization, check the Xcode console for a log with the specific authorization error. You will know the SDK is fully authorized when the button updates to `Sign Out` and the text below the button reads `This device is authorized`.

## 7. Pair a reader
Depending on what environment you are authorized in, the steps for pairing a reader will differ. Follow the steps below according to your current environment.

### Production
In a production environment, you are only able to pair actual Square card readers. Mock readers do not work in a production environment.

To pair a reader:
1. Tap the `Settings` button found on the top left of the home view. This will display the Square provided settings screen allowing you to manage and pair readers.
2. Tap the "Pair a reader" button.
3. Follow the instructions on the dialog that present on how to pair your contactless reader to your device.
4. After a successful pair, you should see the reader available in the `Devices` tab of the settings screen.
5. The reader is ready to be used for payments once the state updates to `Ready`.

### Sandbox
In a sandbox environment, you are only able to add mock readers utilizing the `MockReader` calls. `MockReader` is provided as a part of this repo and has already been added to the DonutCounter app. Please note that `MockReader` is to only be used in debug builds of your application, not in a production application.

To pair a mock reader:
1. Once the SDK has been authorized in the sandbox, a Square-reader-shaped button should appear on the screen. This button can be placed anywhere on the screen by holding down the button and dragging it around the screen.
2. Tapping the button should bring up a menu to add a mock magstripe or contactless & chip reader.
3. Tap the type of reader you want to connect. You can verify that the mock reader has been successfully added on the Settings screen.

<p align="center">
<img src="../Images/donut-counter-mock-reader.png" width="300"/>
</p>

## 8. Take a Payment

To process a payment, follow these steps:

1. On the main screen of the application, tap the "Buy for $1" button. This action will present the default payment prompt screen provided by the SDK.

2. Depending on your environment:
   - **Production Environment**: Use your paired Square reader to tap, insert, or swipe a payment card.
   - **Sandbox Environment**: Tap the mock reader button and choose an option to tap, insert, or swipe a mock payment card.

<p align="center">
<img src="../images/donut-counter-payment.png" width="300"/>
<img src="../images/donut-counter-payment-mock-reader.png" width="300"/>
</p>