import 'package:square_mobile_payments_sdk/square_mobile_payments_sdk_platform_interface.dart';
import 'package:square_mobile_payments_sdk/src/models/models.dart';

class PaymentManager {
  PaymentManager._privateConstructor();
  static final PaymentManager _instance = PaymentManager._privateConstructor();
  factory PaymentManager() => _instance;

  Future<Payment?> startPayment(PaymentParameters paymentParameters,
      PromptParameters promptParameters) async {
    return SquareMobilePaymentsSdkPlatform.instance
        .startPayment(paymentParameters, promptParameters);
  }

  final OfflinePaymentQueue offlinePaymentQueue = _OfflinePaymentQueue();
}

abstract class OfflinePaymentQueue {
  Future<List<OfflinePayment>> getPayments();
  Future<Money?> getTotalStoredPaymentAmount();
}

class _OfflinePaymentQueue implements OfflinePaymentQueue {
  @override
  Future<List<OfflinePayment>> getPayments() async {
    return SquareMobilePaymentsSdkPlatform.instance.getPayments();
  }

  @override
  Future<Money?> getTotalStoredPaymentAmount() async {
    return SquareMobilePaymentsSdkPlatform.instance
        .getTotalStoredPaymentAmount();
  }
}
