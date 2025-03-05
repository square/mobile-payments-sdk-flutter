# Flutter Mobile Payments SDK Technical Reference

In this reference, you'll find detailed information about the data types and methods available in the Flutter plug-in. As an overview, the plug-in is structured as follows:
* `square_mobile_payments_sdk`: This file acts as an abstraction layer that exposes key functionality of the Square Mobile Payments SDK in Flutter. It serves as the primary entry point for interacting with the underlying platform, encapsulating methods related to: Authentication, SDK State, Configuration & Status, MockReader UI, Settings UI, Payment Processing.
* `src`: Includes the enum definitions, errors, and the objects used in the plug-in. For errors, this serves as a reference for all the possible errors some methods might return.

## Contents

- [Flutter Mobile Payments SDK Technical Reference](#flutter-mobile-payments-sdk-technical-reference)
  - [Contents](#contents)
  - [Methods](#methods)
    - [Authorization](#authorization)
      - [Method details](#method-details)
        - [authorize](#authorize)
        - [deauthorize](#deauthorize)
        - [getAuthorizedLocation](#getauthorizedlocation)
        - [getAuthorizationState](#getauthorizationstate)
    - [Payment](#payment)
      - [Method details](#method-details-1)
        - [startPayment](#startpayment)
    - [Reader](#reader)
      - [Method details](#method-details-2)
        - [showMockReaderUI](#showmockreaderui)
        - [hideMockReaderUI](#hidemockreaderui)
    - [TapToPaySettings Methods](#taptopaysettings-methods)
      - [linkAppleAccount](#linkappleaccount)
      - [relinkAppleAccount](#relinkappleaccount)
      - [isAppleAccountLinked](#isappleaccountlinked)
      - [isDeviceCapable](#isdevicecapable)
    - [Settings](#settings)
      - [Method details](#method-details-3)
        - [showSettings](#showsettings)
        - [getEnvironment](#getenvironment)
        - [getSDKVersion](#getsdkversion)
  - [Objects](#objects)
    - [Location](#location)
    - [Money](#money)
    - [Payment](#payment-1)
    - [PaymentParameters](#paymentparameters)
    - [PromptParameters](#promptparameters)
  - [Enums](#enums)
    - [AuthorizationState](#authorizationstate)
    - [CurrencyCode](#currencycode)
    - [Environment](#environment)
    - [SourceType](#sourcetype)
    - [DelayAction](#delayaction)
    - [AdditionalPaymentMethodType](#additionalpaymentmethodtype)
    - [PromptMode](#promptmode)
  - [Errors](#errors)

## Methods
### Authorization

The Authorization methods handles authorizing and deauthorizing your application to process payments on behalf of a Square seller using an [OAuth access token](https://developer.squareup.com/docs/oauth-api/what-it-does) and a [location ID](https://developer.squareup.com/docs/locations-api)
. OAuth access tokens are used to get authenticated and scoped access to any Square account. These tokens should be used even if you only plan to use the Mobile Payments SDK with your own Square account. For more information, see [OAuth sample applications](https://developer.squareup.com/docs/sample-apps#oauth-samples).


Method                                                    | Returns                       | Description
--------------------------------------------------------- | --------------------------------- | ---
[authorize](#authorize) | String | Authorizes the SDK to take payments given an access token and a location ID.
[deauthorize](#deauthorize) | String | Deauthorizes the SDK
[getAuthorizedLocation](#getauthorizedlocation) | [Location](#location) | Gets the currently authorized location.
[getAuthorizationState](#getauthorizationstate) | [AuthorizationState](#authorizationstate) | Returns the current authorization state AuthorizationState.

#### Method details
##### authorize

Authorizes the SDK to take payments given an OAuth access token and a location ID.

Parameter | Type   | Description
--------- | ------ | -----------
accessToken | String | Access Token
locationId  | String | Location ID

* **On success**: returns a String which includes the authorized access token and location.
* **On failure**: throws an error which includes the resulting AuthorizationError.

---

##### deauthorize

Deauthorizes the SDK.

* **On success**: returns a String which indicates if the deauthorization was successful.
* **On failure**: throws an error.

---

##### getAuthorizedLocation

Returns the authorized location, if present.

* **On success**: returns a [Location](#location) object which represents the authorized location, or `nil` if there's no authorized location.
* **On failure**: throws an error.

---

##### getAuthorizationState

Returns the current authorization state. This can be used, for instance, to decide whether the app needs to authenticate on start or if it's already been authorized.

* **On success**: returns a [AuthorizationState](#authorizationstate) object which represents the current authorization state.
* **On failure**: throws an error.

### Payment

The Payment methods handles the payment flow for your application, which allows to start a payment, or to cancel an ongoing one.

Method                                                    | Returns                       | Description
--------------------------------------------------------- | --------------------------------- | ---
[startPayment](#startpayment) | [Payment](#payment-1) | Starts a payment taking payment and prompt parameters, and returns a Payment object, or an error including a PaymentError.

#### Method details
##### startPayment

Starts a payment taking payment and prompt parameters, and returns a Payment object, or an error including a PaymentError. The payment parameters will include things like the amount, application fees; prompt parameters will include the accepted payment methods, and the mode (which, for now, only covers the default mode). Default prompt mode takes over the entire screen, and handles all the payment interactions.

For details on the parameters, visit the respective PaymentParameters and PromptParameters sections.

Parameter | Type   | Description
--------- | ------ | -----------
paymentParameters | [PaymentParameters](#paymentparameters) | Parameters to configure the payment.
promptParameters | [PromptParameters](#promptparameters) | Parameters to configure the prompt.

* **On success**: returns a [Payment](#payment-1) object, which will include all the information Square captured about the payment.
* **On failure**: throws an error which includes the resulting PaymentError.

### Reader

The Reader methods allows you to toggle mock readers, which simulate taking payments while in Sandbox mode.

Method                                                    | Returns                       | Description
--------------------------------------------------------- | --------------------------------- | ---
[showMockReaderUI](#showmockreaderui) | void | Shows the mock reader UI, which allows to connect mock readers and simulate card interactions.
[hideMockReaderUI](#hidemockreaderui) | void | Hides the mock reader UI.

#### Method details

##### showMockReaderUI

When the SDK is started in Sandbox mode (this means, a Sandbox Application ID is given to initialize the SDK, as well as an access token and location that exist in Sandbox), it is possible to simulate payments with mock readers. These readers do not take real money, and allow to simulate card success and failures. The Mock Reader UI is displayed on top of the existing view, and persist through different views until dismissed. To access all the different actions available, tap on the mock reader UI.

* **On success**: shows the mock reader UI.
* **On failure**: throws an error detailing reasons why showing a mock reader isn't possible. Reasons might include: not in sandbox environment, mock reader already presented.

---

##### hideMockReaderUI

Dismisses the mock reader.

* **On success**: dismisses the mock reader UI.
* **On failure**: throws an error if the reader can't be dismissed, for instance, if it's not presented.

---
### TapToPaySettings Methods

#### linkAppleAccount

Links the Apple account for Tap to Pay functionality. This method is only available on iOS.

* **On success**: completes successfully.
* **On failure**: throws an error if the operation fails or is attempted on Android.

---
#### relinkAppleAccount

Relinks the Apple account if required for Tap to Pay functionality. This method is only available on iOS.

* **On success**: completes successfully.
* **On failure**: throws an error if the operation fails or is attempted on Android.

---
#### isAppleAccountLinked

Checks if an Apple account is linked for Tap to Pay.

* **On success**: returns `true` if an Apple account is linked, `false` otherwise.
* **On failure**: throws an error if the operation fails or is attempted on Android.

---
#### isDeviceCapable

Checks if the current device supports Tap to Pay functionality.

* **On success**: returns `true` if the device is capable, `false` otherwise.
* **On failure**: throws an error if the operation fails or is attempted on Android.

---


### Settings

The Settings methods provides an optional device management UI that you can use in your application and provides details about the current SDK version and environment.

Method                                                    | Returns                       | Description
--------------------------------------------------------- | --------------------------------- | ---
[showSettings](#showsettings) | void | Shows the reader settings screen, which shows available readers, and SDK information.
[getEnvironment](#getenvironment) | [Environment](#environment) | Returns the current environment the SDK was initialized on.
[getSDKVersion](#getsdkversion) | String | Returns the current Mobile Payments SDK version.


#### Method details

##### showSettings

The Mobile Payments SDK offers a preconfigured reader settings screen, built from the SDK's public API, which can be displayed by calling this method. This screen includes two tabs. The Devices tab displays the model and connection status for readers paired to the merchant's phone or tablet and includes a button for pairing a new reader. The About tab displays information about the Mobile Payments SDK, authorized location, and environment used to take payments.

* **On success**: shows the settings screen.
* **On failure**: throws an error detailing reasons why showing the settings screen wasn't possible, for instance, if it was already being shown.

---

##### getEnvironment

Returns the current environment `Environment` the SDK has been initialized on, which might be `production` or `sandbox`.

* **On success**: returns a [Environment](#environment) object with the current environment.
* **On failure**: Not applicable.

---

##### getSDKVersion

Returns the current Mobile Payments SDK version running. Note this is the version of the SDK (which can be different in iOS or Android), and not the version of the Flutter plug-in.

* **On success**: returns a String with the current Mobile Payments SDK version.
* **On failure**: Not applicable.

## Objects

### Location

Represents a location in Square systems.

Field             | Type                    | Description
----------------- | ----------------------- | --------------------
id | String | The location ID, to be used in methods that require a `locationId` parameter.
currencyCode | [CurrencyCode](#currencycode) | A three-letter enum representing the currency code.
name   | String | The location's name.

---

### Money

Represents an amount of money.

Field             | Type                    | Description
----------------- | ----------------------- | --------------------
amount | int | The amount of money in the smallest denomination of the currency.
currencyCode | [CurrencyCode](#currencycode)  | The currency code.

---

### Payment

A representation of a payment. See [Payments API](https://developer.squareup.com/reference/square/payments-api/create-payment) for more information.

Field             | Type                    | Description
----------------- | ----------------------- | --------------------
id | String | The server-side ID for this payment.
amountMoney | [Money](#money) | The amount of money to accept for this payment, not including tipMoney.
appFeeMoney | [Money](#money) | The amount of money the developer is taking as a fee for facilitating the payment on behalf of the seller.
createdAt | DateTime | Timestamp of when the payment was created.
locationId | String | The location ID to associate with the payment. If not specified, the default location is used.
orderId | String | Associate a previously created order with this payment. This must be a valid orderId in Square' systems.
referenceId | String | A user-defined ID to associate with the payment. You can use this field to associate the payment to an entity in an external system. For example, you might specify an order ID that is generated by a third-party shopping cart.
sourceType | [SourceType](#sourcetype) | The source type for this payment.
tipMoney | [Money](#money) | The amount designated as a tip, in addition to amountMoney
totalMoney | [Money](#money) | The total money for the payment, including amountMoney and tipMoney.
updatedAt | DateTime | Timestamp of when the payment was last updated.

---

### PaymentParameters

Parameters to describe a single payment made using Mobile Payments SDK. The only required attributes are `amountMoney` and `idempotencyKey`.

Field             | Type                    | Description
----------------- | ----------------------- | --------------------
amountMoney | [Money](#money) | The amount of money to accept for this payment, not including tipMoney
idempotencyKey | String | A unique string that identifies this CreatePayment request. Keys can be any valid string but must be unique for every CreatePayment request.
acceptPartialAuthorization | Boolean | If set to true and charging a Square Gift Card, a payment may be returned with amountMoney equal to less than what was requested. Example, a request for $20 when charging a Square Gift Card with balance of $5 will result in an APPROVED payment of $5. You may choose to prompt the buyer for an additional payment to cover the remainder, or cancel the gift card payment. Cannot be true when autocomplete = true. If this parameter is passed as true but the buyer selected a payment method for which partial authorization does not apply eg: cash then this parameter is ignored. For more information, see [Partial amount with Square gift cards](https://square.github.io/payments-api/take-payments#partial-payment-gift-card).
appFeeMoney | [Money](#money) | The amount of money the developer is taking as a fee for facilitating the payment on behalf of the seller. Cannot be more than 90% of the total amount of the Payment.
autocomplete | Boolean | If set to true, this payment will be completed when possible. If set to false, this payment will be held in an approved state until either explicitly completed (captured) or canceled (voided). For more information, see [Delayed Payments](https://developer.squareup.com/docs/payments-api/take-payments#delayed-payments).
customerId | String | Optional ID of the customer associated with the payment. This value is required when using a customer’s card on file to create a payment.
delayAction | [DelayAction](#delayaction) | The action to apply to the payment when the delayDuration has elapsed. Defaults to `CANCEL`.
delayDuration | Number | The duration of time after the payment’s creation when Square either cancels or completes the payment. This automatic action applies only to payments that don’t reach a terminal state (`COMPLETED`, `CANCELED`, or `FAILED`) before the delayDuration time period. The type of action (either cancel or complete) is defined by the `delayAction` parameter, and defaults to `CANCEL`.
locationId | String | The location ID to associate with the payment. If not specified, the default location is used.
note | String | Optional note to be entered by the developer when creating a payment.
orderId | String | Optional ID of a previously created Square order to associate with this payment.
referenceId | String | Optional user-defined ID to associate with the payment. You can use this field to associate the payment to an entity in an external system. For example, you might specify an order ID that is generated by a third-party shopping cart.
teamMemberId | String | Optional ID of the team member associated with the payment. Previously was employeeID.
tipMoney | [Money](#money) | The amount designated as a tip, in addition to amountMoney

---

### PromptParameters

Parameters to describe the payment prompt for a single payment made using Mobile Payments SDK.

Field             | Type                    | Description
----------------- | ----------------------- | --------------------
additionalPaymentMethods | [List\<AdditionalPaymentMethodType\>](#additionalpaymentmethodtype) | Additional payment methods to be allowed for the payment.
mode | [PromptMode](#promptmode) | The PromptMode to use for the payment. Use `DEFAULT` to use the Square provided one.

## Enums

### AuthorizationState

The current state of the SDK's authorization

* `authorized` - Mobile Payments SDK is currently authorized with a Square Seller Account
* `authorizing` - Mobile Payments SDK is currently attempting authorization with a Square Seller Account
* `notAuthorized` - Mobile Payments SDK is not currently authorized with a Square Seller account

---

### CurrencyCode

The corresponding ISO 4217 currency code

* `aud` - Australian Dollar.
* `cad` - Canadian Dollar.
* `eur` - Euro.
* `gbp` - Pound Sterling.
* `jpy` - Japanese Yen.
* `usd` - United States' Dollar.

---

### Environment

The environment the SDK has been initialized in. This value indicates the environment of the SDK based on the Square application ID used during SDK initialization.

* `production` - Production environment.
* `sandbox` - Sandbox environment.

---

### SourceType

The source type for the payment.

* `bankAccount` - Bank account.
* `card` - Credit/Debit Card.
* `cash` - Cash.
* `externalSource` - External source type (for instance, a check).
* `squareAccount` - A Square account.
* `unknown` - Unknown.
* `wallet` - A Square wallet.

---

### DelayAction

Defines the actions to be applied to the payment when the delayDuration has elapsed. The action must be CANCEL or COMPLETE.

* `cancel` - Cancels the payment.
* `complete` - Completes the payment.

---

### AdditionalPaymentMethodType

The Type of Payment that is about to take place.

* `all` - Instructs the SDK to begin a payment showing all the available payment methods in the account and device.
* `keyed` - Instructs the SDK to begin a payment for a keyed in credit card.

---

### PromptMode

Mode to describe which kind of payment prompt will be used for the payment.

* `defaultMode` - Use the Square-provided payment prompt UI flow.

## Errors

For up-to-date documentation on errors, visit [iOS Handling Errors](https://developer.squareup.com/docs/mobile-payments-sdk/ios/handling-errors), and [Android Handling Errors](https://developer.squareup.com/docs/mobile-payments-sdk/android/handling-errors). We've built the error types to reflect the same error types described in the native code.
