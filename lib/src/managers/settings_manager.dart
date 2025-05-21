import 'package:square_mobile_payments_sdk/square_mobile_payments_sdk_platform_interface.dart';
import 'package:square_mobile_payments_sdk/src/models/models.dart';

class SettingsManager {
  SettingsManager._privateConstructor();
  static final SettingsManager _instance =
      SettingsManager._privateConstructor();
  factory SettingsManager() => _instance;

  Future<String?> getPlatformVersion() {
    return SquareMobilePaymentsSdkPlatform.instance.getPlatformVersion();
  }

  Future<String> getSdkVersion() {
    return SquareMobilePaymentsSdkPlatform.instance.getSdkVersion();
  }

  Future<Environment> getEnvironment() {
    return SquareMobilePaymentsSdkPlatform.instance.getEnvironment();
  }

  Future<void> showSettings() async {
    SquareMobilePaymentsSdkPlatform.instance.showSettings();
  }

  final PaymentSettings paymentSettings = _PaymentSettings();
}

abstract class PaymentSettings {
  Future<bool> isOfflineProcessingAllowed();
  Future<Money?> getOfflineTotalStoredAmountLimit();
  Future<Money?> getOfflineTransactionAmountLimit();
}

class _PaymentSettings implements PaymentSettings {
  @override
  Future<bool> isOfflineProcessingAllowed() async {
    return SquareMobilePaymentsSdkPlatform.instance
        .isOfflineProcessingAllowed();
  }

  @override
  Future<Money?> getOfflineTotalStoredAmountLimit() async {
    return SquareMobilePaymentsSdkPlatform.instance
        .getOfflineTotalStoredAmountLimit();
  }

  @override
  Future<Money?> getOfflineTransactionAmountLimit() async {
    return SquareMobilePaymentsSdkPlatform.instance
        .getOfflineTransactionAmountLimit();
  }
}
