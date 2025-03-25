import 'package:square_mobile_payments_sdk/square_mobile_payments_sdk_platform_interface.dart';

class SettingsManager {

  SettingsManager._privateConstructor();
  static final SettingsManager _instance = SettingsManager._privateConstructor();
  factory SettingsManager() => _instance;

  Future<String?> getPlatformVersion() {
    return SquareMobilePaymentsSdkPlatform.instance.getPlatformVersion();
  }

  Future<String> getSDKVersion() {
    return SquareMobilePaymentsSdkPlatform.instance.getSDKVersion();
  }

  Future<bool> isSandboxEnvironment() {
    return SquareMobilePaymentsSdkPlatform.instance.isSandboxEnvironment();
  }

  Future<void> showSettings() async {
    SquareMobilePaymentsSdkPlatform.instance.showSettings();
  }
}