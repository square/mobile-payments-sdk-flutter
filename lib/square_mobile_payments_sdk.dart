import 'package:square_mobile_payments_sdk/src/managers/auth_manager.dart';
import 'package:square_mobile_payments_sdk/src/managers/payment_manager.dart';
import 'package:square_mobile_payments_sdk/src/managers/reader_manager.dart';
import 'package:square_mobile_payments_sdk/src/managers/settings_manager.dart';
import 'package:square_mobile_payments_sdk/src/managers/tap_to_pay_settings.dart';


class SquareMobilePaymentsSdk {
  final TapToPaySettings tapToPaySettings = TapToPaySettings();
  final AuthManager auth = AuthManager();
  final PaymentManager payment = PaymentManager();
  final ReaderManager reader = ReaderManager();
  final SettingsManager settings = SettingsManager();
}
