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
        - [setAuthorizationStateChangedCallback](#setauthorizationstatechangedcallback)
    - [Payment](#payment)
      - [Method details](#method-details-1)
        - [startPayment](#startpayment)
        - [getCurrentPaymentHandle](#getcurrentpaymenthandle)
        - [cancelPayment](#cancelpayment)
        - [getPaymentHandleParams](#getpaymenthandleparams)
        - [triggerAdditionalPaymentMethod](#triggeradditionalpaymentmethod)
        - [completePayment](#completepayment)
        - [getIdempotencyKey](#getidempotencykey)
        - [getAllIdempotencyKeys](#getallidempotencykeys)
        - [getAvailableCardEntryMethods](#getavailablecardentrymethods)
        - [setAvailableCardEntryMethodChangedCallback](#setavailablecardentrymethodchangedcallback)
    - [Reader](#reader)
      - [retryConnection](#retryconnection)
      - [setPreferredFirmwareUpdateTime](#setpreferredfirmwareupdatetime)
      - [setReducedChargingModeEnabled](#setreducedchargingmodeenabled)
      - [rebootReader](#rebootreader)
    - [TapToPaySettings](#taptopaysettings)
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
        - [getSdkSettings](#getsdksettings)
  - [Objects](#objects)
    - [Location](#location)
    - [Money](#money)
    - [Payment](#payment-1)
    - [PaymentParameters](#paymentparameters)
    - [PromptParameters](#promptparameters)
    - [IdempotencyKeyData](#idempotencykeydata)
    - [SdkSettings](#sdksettings)
    - [PaymentHandle](#paymenthandle)
    - [PaymentHandleParams](#paymenthandleparams)
  - [Enums](#enums)
    - [AuthorizationState](#authorizationstate)
    - [CurrencyCode](#currencycode)
    - [Environment](#environment)
    - [SourceType](#sourcetype)
    - [DelayAction](#delayaction)
    - [ProcessingMode](#processingmode)
    - [AdditionalPaymentMethodType](#additionalpaymentmethodtype)
    - [PromptMode](#promptmode)
    - [CancelResult](#cancelresult)
    - [RetryConnectionResult](#retryconnectionresult)
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
[setAuthorizationStateChangedCallback](#setauthorizationstatechangedcallback) | CallbackReference | Registers a callback that is invoked whenever the authorization state changes.

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

##### setAuthorizationStateChangedCallback

Registers a callback that is invoked with the new [AuthorizationState](#authorizationstate) whenever the authorization state changes. Call `clear()` on the returned reference to stop receiving updates.

Parameter | Type   | Description
--------- | ------ | -----------
callback | Function | Invoked with the new [AuthorizationState](#authorizationstate).

* **On success**: returns a `CallbackReference`.

### Payment

The Payment methods handles the payment flow for your application, which allows to start a payment, or to cancel an ongoing one.

Method                                                    | Returns                       | Description
--------------------------------------------------------- | --------------------------------- | ---
[startPayment](#startpayment) | [PaymentHandle](#paymenthandle) | Starts a payment taking payment and prompt parameters, and returns its PaymentHandle right away. The resulting Payment, or the PaymentError, is delivered to a callback.
[getCurrentPaymentHandle](#getcurrentpaymenthandle) | [PaymentHandle](#paymenthandle) | Returns a PaymentHandle to act on the payment in progress.
[cancelPayment](#cancelpayment) | [CancelResult](#cancelresult) | Cancels the payment in progress and returns the outcome.
[getPaymentHandleParams](#getpaymenthandleparams) | [PaymentHandleParams](#paymenthandleparams) | Returns the current values of the payment in progress.
[triggerAdditionalPaymentMethod](#triggeradditionalpaymentmethod) | Boolean | Starts an additional payment method offered by the payment in progress.
[completePayment](#completepayment) | [Payment](#payment-1) | Android only. Completes a payment started with `autocomplete` set to `false`.
[getIdempotencyKey](#getidempotencykey) | String | Returns the idempotency key the SDK generated for a payment attempt.
[getAllIdempotencyKeys](#getallidempotencykeys) | [List\<IdempotencyKeyData\>](#idempotencykeydata) | Android only. Returns the idempotency keys the SDK has stored.
[getAvailableCardEntryMethods](#getavailablecardentrymethods) | List\<CardInputMethod\> | Returns the card entry methods currently available.
[setAvailableCardEntryMethodChangedCallback](#setavailablecardentrymethodchangedcallback) | CallbackReference | Registers a callback that is invoked whenever the available card entry methods change.

#### Method details
##### startPayment

Starts a payment taking payment and prompt parameters, and returns a [PaymentHandle](#paymenthandle) right away. The resulting Payment, or the PaymentError, is delivered to `onResult`. The payment parameters will include things like the amount, application fees; prompt parameters will include the accepted payment methods, and the mode (which, for now, only covers the default mode). Default prompt mode takes over the entire screen, and handles all the payment interactions.

For details on the parameters, visit the respective PaymentParameters and PromptParameters sections.

Parameter | Type   | Description
--------- | ------ | -----------
paymentParameters | [PaymentParameters](#paymentparameters) | Parameters to configure the payment.
promptParameters | [PromptParameters](#promptparameters) | Parameters to configure the prompt.
onResult | Function | Invoked once with the resulting [Payment](#payment-1), which will include all the information Square captured about the payment, and a `null` error; or with a `null` payment and the resulting PaymentError.

* **Returns**: a [PaymentHandle](#paymenthandle) to act on the payment in progress.

##### getCurrentPaymentHandle

Returns a [PaymentHandle](#paymenthandle) to act on the payment in progress, for code that does not have the one returned by [startPayment](#startpayment).

* **Returns**: a [PaymentHandle](#paymenthandle).

##### cancelPayment

Cancels the payment in progress. When the payment is canceled, the `startPayment` callback receives a PaymentError whose code is `canceled`.

* **On success**: returns a [CancelResult](#cancelresult) describing the outcome.

##### getPaymentHandleParams

Returns the current values of the payment in progress, such as the additional payment methods it offers.

* **On success**: returns a [PaymentHandleParams](#paymenthandleparams), or `null` if no payment is in progress.

##### triggerAdditionalPaymentMethod

Starts one of the additional payment methods offered by the payment in progress. `keyed` and `cash` are available on both platforms and `tapToPay` on iOS only; [getPaymentHandleParams](#getpaymenthandleparams) tells which ones the current payment offers. The payment result is delivered as usual.

Parameter | Type   | Description
--------- | ------ | -----------
type | [AdditionalPaymentMethodType](#additionalpaymentmethodtype) | The additional payment method to start.

* **On success**: returns `true` if the method was started, or `false` if no payment is in progress or the payment does not offer that method.
* **On failure**: throws an error which includes the resulting PaymentError.

##### completePayment

Android only. Completes a payment that was started with `autocomplete` set to `false`. On iOS it fails with an `UnsupportedError`.

Parameter | Type   | Description
--------- | ------ | -----------
paymentId | String | The `id` of the [Payment](#payment-1) to complete.

* **On success**: returns the completed [Payment](#payment-1).
* **On failure**: throws an error which includes the resulting PaymentError.

##### getIdempotencyKey

Returns the idempotency key the SDK generated for a payment attempt.

Parameter | Type   | Description
--------- | ------ | -----------
paymentAttemptId | String | The `paymentAttemptId` used in the [PaymentParameters](#paymentparameters) of the payment.

* **On success**: returns the idempotency key, or `null` if there is none.
* **On failure**: throws an error which includes the resulting PaymentError.

##### getAllIdempotencyKeys

Android only. Returns the idempotency keys the SDK has stored for payment attempts. On iOS it fails with an `UnsupportedError`.

* **On success**: returns a list of [IdempotencyKeyData](#idempotencykeydata).
* **On failure**: throws an error which includes the resulting PaymentError.

##### getAvailableCardEntryMethods

Returns the card entry methods currently available on the connected readers.

* **On success**: returns a `List<CardInputMethod>`.

##### setAvailableCardEntryMethodChangedCallback

Registers a callback that is invoked with the available card entry methods whenever they change. Call `clear()` on the returned reference to stop receiving updates.

Parameter | Type   | Description
--------- | ------ | -----------
callback | Function | Invoked with the new `List<CardInputMethod>`.

* **On success**: returns a `CallbackReference`.

### Reader

The Reader methods allows you to toggle mock readers, which simulate taking payments while in Sandbox mode.

Method                                                    | Returns                       | Description
--------------------------------------------------------- | --------------------------------- | ---
[showMockReaderUI](#showmockreaderui) | void | Shows the mock reader UI, which allows to connect mock readers and simulate card interactions.
[hideMockReaderUI](#hidemockreaderui) | void | Hides the mock reader UI.
[retryConnection](#retryconnection) | [RetryConnectionResult](#retryconnectionresult) | Retries the connection of a reader.
[setPreferredFirmwareUpdateTime](#setpreferredfirmwareupdatetime) | void | Sets the preferred time of day for reader firmware updates.
[setReducedChargingModeEnabled](#setreducedchargingmodeenabled) | void | Enables or disables reduced charging mode on connected readers.
[rebootReader](#rebootreader) | void | iOS only. Reboots a reader.

##### retryConnection

Retries connecting the reader with the given id. If no reader has that id, it returns `readerNotFound`.

Parameter | Type   | Description
--------- | ------ | -----------
id | String | The `id` of the reader to reconnect.

* **On success**: returns a [RetryConnectionResult](#retryconnectionresult).

##### setPreferredFirmwareUpdateTime

Sets the preferred time of day for reader firmware updates. Pass `null` to clear the preference and use the default time.

Parameter | Type   | Description
--------- | ------ | -----------
time | TimeOfDay | The preferred time, or `null`.

* **On failure**: throws an error with the code `invalidTimeOfDay` when the SDK rejects the time.

##### setReducedChargingModeEnabled

Enables or disables reduced charging mode on connected readers.

Parameter | Type   | Description
--------- | ------ | -----------
enabled | Boolean | Whether reduced charging mode is enabled.

##### rebootReader

iOS only. Reboots the reader with the given id; check its `isRebootable` first. If no reader has that id, the call does nothing. On Android it fails with an `UnsupportedError`.

Parameter | Type   | Description
--------- | ------ | -----------
id | String | The `id` of the reader to reboot.


### TapToPaySettings

The `TapToPaySettings` provides methods specifically for managing Tap to Pay functionality on iOS devices.

Method                                                    | Returns                       | Description
--------------------------------------------------------- | --------------------------------- | ---
[linkAppleAccount](#linkAppleAccount) | Promise<void> | Links the Apple account for Tap to Pay functionality (iOS only).
[relinkAppleAccount](#relinkAppleAccount) | Promise<void> | Relinks the Apple account if required (iOS only).
[isAppleAccountLinked](#isAppleAccountLinked) | Promise<Boolean> | Checks if an Apple account is linked for Tap to Pay (iOS only).
[isDeviceCapable](#isDeviceCapable) | Promise<Boolean> | Checks if the current device is capable of using Tap to Pay (iOS only).



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
[getSdkSettings](#getsdksettings) | [SdkSettings](#sdksettings) | Returns the SDK version, environment and security compliance version.


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

---

##### getSdkSettings

Returns the SDK settings: the Mobile Payments SDK version, the environment it was initialized on and its security compliance version.

* **On success**: returns a [SdkSettings](#sdksettings) object.
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

Parameters to describe a single payment made using Mobile Payments SDK. The required attributes are `amountMoney`, `paymentAttemptId`, `processingMode`, and `allowCardSurcharge`.

Field             | Type                    | Description
----------------- | ----------------------- | --------------------
amountMoney | [Money](#money) | Required. The amount of money to accept for this payment, not including tipMoney
paymentAttemptId | String | Required. A unique identifier for the payment attempt. Mobile Payments SDK generates a unique idempotency key for the payment request and stores it with this ID.
processingMode | [ProcessingMode](#processingmode) | Required. Whether the payment should be processed online, offline, or auto-detected.
allowCardSurcharge | Boolean | Required. If false, a card surcharge is never applied. If true, a surcharge may be applied according to the seller’s Square Dashboard configuration.
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
statementDescription | String | Optional additional payment information to include on the customer’s card statement as part of the statement description.
teamMemberId | String | Optional ID of the team member associated with the payment. Previously was employeeID.
tipMoney | [Money](#money) | The amount designated as a tip, in addition to amountMoney

---

### PromptParameters

Parameters to describe the payment prompt for a single payment made using Mobile Payments SDK.

Field             | Type                    | Description
----------------- | ----------------------- | --------------------
additionalPaymentMethods | [List\<AdditionalPaymentMethodType\>](#additionalpaymentmethodtype) | Additional payment methods to be allowed for the payment.
mode | [PromptMode](#promptmode) | The PromptMode to use for the payment. Use `DEFAULT` to use the Square provided one.

---

### IdempotencyKeyData

Android only. An idempotency key the SDK generated for a payment attempt.

Field             | Type                    | Description
----------------- | ----------------------- | --------------------
paymentAttemptId | String | The `paymentAttemptId` of the payment.
idempotencyKey | String | The idempotency key generated for that payment attempt.
updatedAt | DateTime | When the key was last updated.

---

### SdkSettings

The settings of the Mobile Payments SDK.

Field             | Type                    | Description
----------------- | ----------------------- | --------------------
version | String | The Mobile Payments SDK version.
environment | [Environment](#environment) | The environment the SDK was initialized on.
securityComplianceVersion | String | The security compliance version of the SDK.

---

### PaymentHandle

Returned by [startPayment](#startpayment) and [getCurrentPaymentHandle](#getcurrentpaymenthandle) to act on the payment in progress. Each method has an equivalent in the Payment methods, so the handle does not need to be kept to use them.

Method            | Returns                 | Description
----------------- | ----------------------- | --------------------
cancelPayment | [CancelResult](#cancelresult) | Same as [cancelPayment](#cancelpayment).
getParams | [PaymentHandleParams](#paymenthandleparams) | Same as [getPaymentHandleParams](#getpaymenthandleparams).
triggerAdditionalPaymentMethod | Boolean | Same as [triggerAdditionalPaymentMethod](#triggeradditionalpaymentmethod).

---

### PaymentHandleParams

The current values of the payment in progress.

Field             | Type                    | Description
----------------- | ----------------------- | --------------------
totalMoneyWithProposedCardSurcharge | [Money](#money) | The total including tip and a proposed card surcharge, or `null` when no surcharge applies.
additionalPaymentMethods | [List\<AdditionalPaymentMethodType\>](#additionalpaymentmethodtype) | The additional payment methods offered for this payment.
isPaymentCancelable | Boolean | iOS only. Whether the payment can currently be canceled. Always `null` on Android, where the SDK does not expose it, and `null` does not tell whether the payment can be canceled. On Android the only way to find out is the [CancelResult](#cancelresult) of [cancelPayment](#cancelpayment), which is not recommended as a check because it cancels the payment when it is cancelable.

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

### ProcessingMode

Determines whether the payment needs to be processed online or offline.

* `autoDetect` - Let the SDK choose online or offline processing.
* `offlineOnly` - Process the payment offline only.
* `onlineOnly` - Process the payment online only.

---

### AdditionalPaymentMethodType

The additional payment methods to allow, in addition to the card payment flow. Only the methods present in the list are shown. Pass an empty list to show no additional payment methods (card payment only).

* `keyed` - Allow a keyed-in credit card payment.
* `cash` - Allow a cash payment.
* `tapToPay` - Allow Tap to Pay (iOS only).

---

### PromptMode

Mode to describe which kind of payment prompt will be used for the payment.

* `defaultMode` - Use the Square-provided payment prompt UI flow.

---

### CancelResult

The outcome of [cancelPayment](#cancelpayment).

* `canceled` - The payment in progress was canceled.
* `notCancelable` - The SDK did not allow the payment in progress to be canceled.
* `noPaymentInProgress` - There was no payment to cancel.

---

### RetryConnectionResult

The outcome of [retryConnection](#retryconnection).

* `startingReconnection` - The SDK started reconnecting the reader.
* `readerAlreadyConnectingToSquare` - The reader is already connecting to Square.
* `unableToRetry` - The reader's connection cannot be retried.
* `readerNotFound` - No reader matches the given id.

## Errors

For up-to-date documentation on errors, visit [iOS Handling Errors](https://developer.squareup.com/docs/mobile-payments-sdk/ios/handling-errors), and [Android Handling Errors](https://developer.squareup.com/docs/mobile-payments-sdk/android/handling-errors). We've built the error types to reflect the same error types described in the native code.
