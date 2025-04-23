import 'package:square_mobile_payments_sdk/square_mobile_payments_sdk_platform_interface.dart';
import 'package:square_mobile_payments_sdk/src/models/models.dart';

class AuthManager {
  AuthManager._privateConstructor();
  static final AuthManager _instance = AuthManager._privateConstructor();
  factory AuthManager() => _instance;

  Future<AuthorizationState> getAuthorizationState() async {
    return SquareMobilePaymentsSdkPlatform.instance.getAuthorizationState();
  }

  Future<Location?> getAuthorizedLocation() async {
    return SquareMobilePaymentsSdkPlatform.instance.getAuthorizedLocation();
  }

  Future<void> authorize(String accessToken, String locationId) async {
    return SquareMobilePaymentsSdkPlatform.instance
        .authorize(accessToken, locationId);
  }

  Future<void> deauthorize() async {
    SquareMobilePaymentsSdkPlatform.instance.deauthorize();
  }
}
