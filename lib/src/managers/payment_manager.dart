import 'dart:async';
import 'dart:io';

import 'package:square_mobile_payments_sdk/square_mobile_payments_sdk_platform_interface.dart';
import 'package:square_mobile_payments_sdk/src/models/models.dart';

class PaymentManager {
  PaymentManager._privateConstructor();
  static final PaymentManager _instance = PaymentManager._privateConstructor();
  factory PaymentManager() => _instance;

  static UnsupportedError _androidOnlyError() {
    return UnsupportedError('This feature is only available on Android.');
  }

  Future<Payment> startPayment(PaymentParameters paymentParameters,
      PromptParameters promptParameters) async {
    return SquareMobilePaymentsSdkPlatform.instance
        .startPayment(paymentParameters, promptParameters);
  }

  Future<CancelResult> cancelPayment() async {
    return SquareMobilePaymentsSdkPlatform.instance.cancelPayment();
  }

  Future<Payment> completePayment(String paymentId) {
    if (Platform.isAndroid) {
      return SquareMobilePaymentsSdkPlatform.instance
          .completePayment(paymentId);
    }
    return Future.error(_androidOnlyError());
  }

  Future<String?> getIdempotencyKey(String paymentAttemptId) async {
    return SquareMobilePaymentsSdkPlatform.instance
        .getIdempotencyKey(paymentAttemptId);
  }

  Future<List<IdempotencyKeyData>> getAllIdempotencyKeys() {
    if (Platform.isAndroid) {
      return SquareMobilePaymentsSdkPlatform.instance.getAllIdempotencyKeys();
    }
    return Future.error(_androidOnlyError());
  }

  Future<List<CardInputMethod>> getAvailableCardEntryMethods() async {
    return SquareMobilePaymentsSdkPlatform.instance
        .getAvailableCardEntryMethods();
  }

  CallbackReference setAvailableCardEntryMethodChangedCallback(
      FutureOr<void> Function(List<CardInputMethod> methods) callback) {
    return SquareMobilePaymentsSdkPlatform.instance
        .setAvailableCardEntryMethodChangedCallback(callback);
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
