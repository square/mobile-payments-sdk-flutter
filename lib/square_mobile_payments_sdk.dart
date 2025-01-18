
import 'square_mobile_payments_sdk_platform_interface.dart';

class SquareMobilePaymentsSdk {
  Future<String?> getPlatformVersion() {
    return SquareMobilePaymentsSdkPlatform.instance.getPlatformVersion();
  }

  Future<String?> authorize(String accessToken, String locationId) async {
    return SquareMobilePaymentsSdkPlatform.instance.authorize(accessToken, locationId);
  }

}
