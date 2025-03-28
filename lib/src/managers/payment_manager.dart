import 'package:square_mobile_payments_sdk/square_mobile_payments_sdk_platform_interface.dart';
import 'package:square_mobile_payments_sdk/src/models/models.dart';

class PaymentManager {


  PaymentManager._privateConstructor();
  static final PaymentManager _instance = PaymentManager._privateConstructor();
  factory PaymentManager() => _instance;

   Future<Payment?> startPayment(paymentParameters, promptParameters) async {
    return SquareMobilePaymentsSdkPlatform.instance
        .startPayment(paymentParameters, promptParameters);
  }
}