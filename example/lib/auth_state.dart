import 'package:flutter/foundation.dart';
import 'package:square_mobile_payments_sdk/square_mobile_payments_sdk.dart';
import 'package:square_mobile_payments_sdk/src/models.dart';

class AuthState with ChangeNotifier {
  final _squareMobilePaymentsSdkPlugin = SquareMobilePaymentsSdk();
  bool _isAuthorized = false;

  bool get isAuthorized => _isAuthorized;

  AuthState() {
    _loadAuthStatus();
  }

  Future<void> _loadAuthStatus() async {
    _isAuthorized = await _squareMobilePaymentsSdkPlugin.getAuthorizationState() == AuthorizationState.authorized;
    notifyListeners();
  }

  void authorize() {
    _isAuthorized = true;
    notifyListeners();
  }

  void signOut() {
    _isAuthorized = false;
    notifyListeners();
  }
}
