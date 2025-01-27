import 'square_mobile_payments_sdk_platform_interface.dart';

class SquareMobilePaymentsSdk {
  Future<String?> getPlatformVersion() {
    return SquareMobilePaymentsSdkPlatform.instance.getPlatformVersion();
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

  Future<void> showSettings(onResult) async {
    SquareMobilePaymentsSdkPlatform.instance.showSettings(onResult);
  }
}
