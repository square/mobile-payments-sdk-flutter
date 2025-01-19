import 'package:flutter/foundation.dart';

class AuthState with ChangeNotifier {
  bool _isAuthorized = false;

  bool get isAuthorized => _isAuthorized;

  void authorize() {
    _isAuthorized = true;
    notifyListeners();
  }

  void signOut() {
    _isAuthorized = false;
    notifyListeners();
  }
}
