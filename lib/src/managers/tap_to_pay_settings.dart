import 'dart:io';
import '../../square_mobile_payments_sdk_platform_interface.dart';

class TapToPaySettings {
  
  TapToPaySettings._privateConstructor();
  static final TapToPaySettings _instance =
      TapToPaySettings._privateConstructor();
  factory TapToPaySettings() => _instance;

  static Never _notSupportedError() {
    throw UnsupportedError('This feature is only available on iOS.');
  }

  Future<void> linkAppleAccount() {
    if (Platform.isIOS) {
      return SquareMobilePaymentsSdkPlatform.instance.linkAppleAccount();
    }
    return Future.error(_notSupportedError());
  }

  Future<void> relinkAppleAccount() {
    if (Platform.isIOS) {
      return SquareMobilePaymentsSdkPlatform.instance.relinkAppleAccount();
    }
    return Future.error(_notSupportedError());
  }

  Future<bool> isAppleAccountLinked() {
    if (Platform.isIOS) {
      return SquareMobilePaymentsSdkPlatform.instance.isAppleAccountLinked();
    }
    return Future.error(_notSupportedError());
  }

  Future<bool> isDeviceCapable() {
    if (Platform.isIOS) {
      return SquareMobilePaymentsSdkPlatform.instance.isDeviceCapable();
    }
    return Future.error(_notSupportedError());
  }
}
