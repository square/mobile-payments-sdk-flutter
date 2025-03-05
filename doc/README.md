# Getting Started with the Flutter plug-in for Mobile Payments SDK

This guide walks you through the process of setting up a new Flutter project with Mobile Payments SDK. See the [Flutter Mobile Payments SDK Technical Reference](REFERENCE.md) for more detailed information about types and methods.

## Before you start

* You will need a Square account enabled for payment processing. If you have not enabled payment processing on your account (or you are not sure), visit [squareup.com/activate](https://squareup.com/activate).
* Set-up your Flutter environment by following the [official guide](https://docs.flutter.dev/get-started/install).

## Step 1: Install Flutter plugin for Mobile Payments SDK

Install the Mobile Payments SDK package with `pub`:
```sh
flutter pub add mobile-payment-sdk-flutter
```
For iOS:
1. Make sure you run `pod install` in the `ios` folder of the sample application to install the SDK and all the dependencies.
2. Open your iOS project `Runner.xcodeproj` with **Xcode**.
3. Set the `iOS Deployment Target` to 12.0 or above.
4. Add an Mobile Payments SDK build phase:
    1. Open `Runner.xcworkspace` in Xcode.
    2. In the **Build Phases** tab for your application target, click the **+**
        button at the top of the pane.
    3. Select **New Run Script Phase**.
    4. Paste the following into the editor panel of the new run script:
        ```
        FRAMEWORKS="${BUILT_PRODUCTS_DIR}/${FRAMEWORKS_FOLDER_PATH}"
        "${FRAMEWORKS}/SquareMobilePaymentsSDK.framework/setup"
        ```

For Android, you need to configure the SDK version:
1. Modify your `/android/build.gradle`
   - Add `squareSdkVersion = "2.0.1"` inside the `ext {...}` block
   - Add `maven { url 'https://sdk.squareup.com/public/android/' }` inside the `allprojects`'s `repositories {...}` block
2. Modify your `/android/app/build.gradle`
   - Add `implementation("com.squareup.sdk:mobile-payments-sdk:$squareSdkVersion")` inside the `dependencies{...}` block

You can also refer to [MPSDK Android Quickstart](https://developer.squareup.com/docs/mobile-payments-sdk/android#1-install-the-sdk-and-dependencies)'s SDK installation section.

## Step 2: Square Application ID and Access Token

1. Visit the [Square Developer Console](https://developer.squareup.com/) and sign in or create an account.
1. Create a new Square application.
1. Open the **Credentials** page and make note of your **Application ID** and **Access token**. Note at the top there's a switch to choose Sandbox or Production environment.
1. Open the **Locations** page, and make note of the **Location ID** of the location you'd like to use.

## Step 3: Additional Platform Setup

1. For iOS: update your application delegate as follows:
```Swift
import SquareMobilePaymentsSDK
// ...
override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    GeneratedPluginRegistrant.register(with: self)
    let applicationId = "REPLACE ME!"
      MobilePaymentsSDK.initialize(squareApplicationID: applicationId)
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
```

1. For Android: update your `MainApplication.kt` file as follows:
```Kotlin
import android.app.Application
import com.squareup.sdk.mobilepayments.MobilePaymentsSdk

class MainApplication : Application() {
    override fun onCreate() {
        super.onCreate()
        MobilePaymentsSdk.initialize("Your Square Application ID", this)
    }
}
```

## Step 4: Implement Authorization

To authorize the SDK, you'll need the **Access token** and **Location ID** noted before. Then, in your Flutter application:
```Dart
import 'package:square_mobile_payments_sdk/square_mobile_payments_sdk.dart';
//...
final _squareMobilePaymentsSdkPlugin = SquareMobilePaymentsSdk();
try {
    response = await _squareMobilePaymentsSdkPlugin.authorize("accessToken", "locationId")
    print('Successful authorization: $response');
} catch (e) {
    print('Authorization error: $e');
}
```

You can use the `getAuthorizedLocation()` and `getAuthorizationState()` methods to retrieve the location and authorization status on any screen.

Finally, you can deauthorize a client by calling `deauthorize()`.


## Step 5: Show the settings screen

In order to pair a reader, you can show the settings screen, which allows reader pairing, checking reader status, and unpairing. To do this, simply call `showSettings()`, and to hide the settings page, the user can dismiss it by tapping on the close button. If you try to present settings while it's already being displayed, you will get an error, so make sure to use a `try/catch` block to handle this.

## Step 6: Take a payment

To take a payment, you must pass it a `PaymentParameters` object, which includes payment-specific values such as amount, tip, location; and a `PromptParameters`, which includes the payment methods offered to the customer, and the display mode (which for now only supports the `default` mode of presenting over a given view). This will look like this:

```Dart
import 'package:square_mobile_payments_sdk/square_mobile_payments_sdk.dart';
//...
final _squareMobilePaymentsSdkPlugin = SquareMobilePaymentsSdk();
try {
    String idempotencyKey = uuid.v4();
    Payment payment = await _squareMobilePaymentsSdkPlugin.startPayment(
        PaymentParameters(
            amountMoney: Money(amount: 100, currencyCode: CurrencyCode.eur),
            idempotencyKey: idempotencyKey
        ),
        PromptParameters(additionalPaymentMethods: List.empty(), mode: PromptMode.defaultMode));
    print('Payment successful:: $payment');
} catch (e) {
    print('Payment error: $e');
}
```

Payment parameters supports a number of additional attributes, which can be seen in the [PaymentParameters definition](REFERENCE.md#paymentparameters). For error descriptions, visit the respective pages for [iOS](https://developer.squareup.com/docs/mobile-payments-sdk/ios/handling-errors), and [Android](https://developer.squareup.com/docs/mobile-payments-sdk/android/handling-errors).

## Optional: Use Mock Readers in Sandbox
You can use mock readers to take payments in Sandbox, which allows you to test the payment flow without moving real money. To do this, make sure you're using a Sandbox Application ID, access token, and location ID, available in the Developer console (see Step 3: Square Application ID and Access Token). Once you've configured your application to start in Sandbox, you can show or hide the mock reader as follows:

```Dart
import 'package:square_mobile_payments_sdk/square_mobile_payments_sdk.dart';
//...
final _squareMobilePaymentsSdkPlugin = SquareMobilePaymentsSdk();

try {
    await _squareMobilePaymentsSdkPlugin.showMockReaderUI();
} catch (e) {
    print('Mock Reader UI error: $e');
}

//...
await _squareMobilePaymentsSdkPlugin.hideMockReaderUI();
```

Note that you might get an error if you try to call these methods outside of Sandbox, so you can handle the errors by using a `try/catch` block.


## Tap to Pay Settings on iPhone

For iOS devices, you can manage Tap to Pay settings using the `tapToPaySettings` property. The following methods are available:

### Link Apple Account

Before using Tap to Pay on iPhone, you need to link an Apple account:

```Dart
import 'package:square_mobile_payments_sdk/square_mobile_payments_sdk.dart';
//...
final _squareMobilePaymentsSdkPlugin = SquareMobilePaymentsSdk();
//...
try {
      await _squareMobilePaymentsSdkPlugin.tapToPaySettings
          .linkAppleAccount();
    } catch (e, stackTrace) {
      print("Exception reader: $e");
    }
```

### Relink Apple Account

If the Apple account needs to be relinked, use:

```Dart

try {
      await _squareMobilePaymentsSdkPlugin.tapToPaySettings
          .relinkAppleAccount();
    } catch (e, stackTrace) {
      print("Exception reader: $e");
    }
```

### Check if Apple Account is Linked

You can check if an Apple account is already linked:

```Dart
try {
      bool isAppleAccountLinked =  await _squareMobilePaymentsSdkPlugin.tapToPaySettings.isAppleAccountLinked();

    } catch (e, stackTrace) {
      print("Exception reader: $e");
    }
```

### Check Device Capability

To verify if the device supports Tap to Pay on iPhone:

```Dart
    const isCapable = await _squareMobilePaymentsSdkPlugin.tapToPaySettings.isDeviceCapable();

```

> **Note:** These methods are only available on iOS. Calling them on Android will result in an error.
