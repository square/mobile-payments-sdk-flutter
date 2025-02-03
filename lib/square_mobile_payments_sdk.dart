import 'package:square_mobile_payments_sdk/src/models.dart';

import 'square_mobile_payments_sdk_platform_interface.dart';

class SquareMobilePaymentsSdk {
  Future<String?> getPlatformVersion() {
    return SquareMobilePaymentsSdkPlatform.instance.getPlatformVersion();
  }

  Future<String> getSDKVersion() {
    return SquareMobilePaymentsSdkPlatform.instance.getSDKVersion();
  }

  Future<Environment> getEnvironment() {
    return SquareMobilePaymentsSdkPlatform.instance.getEnvironment();
  }

  Future<AuthorizationState> getAuthorizationState() async {
    return SquareMobilePaymentsSdkPlatform.instance.getAuthorizationState();
  }

  Future<Location?> getAuthorizedLocation() async {
    return SquareMobilePaymentsSdkPlatform.instance.getAuthorizedLocation();
  }

  Future<String?> authorize(String accessToken, String locationId) async {
    return SquareMobilePaymentsSdkPlatform.instance
        .authorize(accessToken, locationId);
  }

  Future<String?> deauthorize() async {
    return SquareMobilePaymentsSdkPlatform.instance.deauthorize();
  }

  Future<void> showMockReaderUI() async {
    SquareMobilePaymentsSdkPlatform.instance.showMockReaderUI();
  }

  Future<void> hideMockReaderUI() async {
    SquareMobilePaymentsSdkPlatform.instance.hideMockReaderUI();
  }

  Future<void> showSettings() async {
    SquareMobilePaymentsSdkPlatform.instance.showSettings();
  }

  Future<Payment?> startPayment(paymentParameters, promptParameters) async {
    return SquareMobilePaymentsSdkPlatform.instance
        .startPayment(paymentParameters, promptParameters);
  }
}
