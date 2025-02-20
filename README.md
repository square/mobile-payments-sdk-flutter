# Flutter plug-in for Mobile Payments SDK

[![Pub](https://img.shields.io/pub/v/square_mobile_payments)](https://pub.dev/packages/square_mobile_payments)

Mobile Payments SDK for Flutter supports the following SDK versions:

  * [iOS](https://developer.squareup.com/docs/mobile-payments-sdk/ios#1-install-the-sdk-and-dependencies): 2.0.1 and above
  * [Android](https://developer.squareup.com/docs/mobile-payments-sdk/android#1-install-the-sdk-and-dependencies): 2.0.1 and above

## Review requirements
Before getting started, please review the Requirements and Limitations and Device Compatibility sections to ensure that the SDK can be used in your project:
* Android: [Requirements and Limitations](https://developer.squareup.com/docs/mobile-payments-sdk/android#requirements-and-limitations), [Device Compatibility](https://developer.squareup.com/docs/mobile-payments-sdk/android#device-permissions)
* iOS: [Requirements and Limitations](https://developer.squareup.com/docs/mobile-payments-sdk/ios#requirements-and-limitations), [Device Compatibility](https://developer.squareup.com/docs/mobile-payments-sdk/ios#device-permissions)

## Installation
```sh
  flutter pub add mobile-payment-sdk-flutter
```

For usage and in-detail documentation, visit our [documentation](doc/) section.

## Documentation
* [Mobile Payments SDK Overview](https://developer.squareup.com/docs/mobile-payments-sdk)
* [iOS Tech Reference](https://developer.squareup.com/docs/sdk/mobile-payments/ios)
* [Android Tech Reference](https://developer.squareup.com/docs/sdk/mobile-payments/android)

If you need more assistance, contact [Developer and App Marketplace Support](https://squareup.com/help/us/en/contact?panel=BF53A9C8EF68) or ask for help in the [Developer Forums](https://developer.squareup.com/forums/).

## Mobile Payments SDK Sample App
<img src="./images/donut-counter-home.png" width="300"/> <img src="./images/donut-counter-take-payment.png" width="300"/>

[Donut Counter](example/) is a sample application included in the `example` folder of this repository. It is built using Flutter 3.27.3 and designed to help developers utilize the Square Mobile Payments SDK. This application serves as a practical guide for integrating and leveraging the SDK's capabilities within your own projects. It demonstrates essential functions such as initializing and authorizing the SDK, using mock readers, and processing a $1.00 payment.

## License

```
Copyright 2025 Square Inc.

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
```