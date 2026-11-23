import 'dart:async';
import 'dart:io';
import 'dart:math';

import 'package:square_mobile_payments_sdk/square_mobile_payments_sdk_platform_interface.dart';
import 'package:square_mobile_payments_sdk/src/errors/errors.dart';
import 'package:square_mobile_payments_sdk/src/models/models.dart';

class PaymentManager {
  PaymentManager._privateConstructor();
  static final PaymentManager _instance = PaymentManager._privateConstructor();
  factory PaymentManager() => _instance;

  static final _handleNamespace = Random.secure().nextInt(1 << 32);
  static int _nextHandleId = 0;

  static UnsupportedError _androidOnlyError() {
    return UnsupportedError('This feature is only available on Android.');
  }

  PaymentHandle startPayment(
    PaymentParameters paymentParameters,
    PromptParameters promptParameters,
    void Function(Payment? payment, PaymentError? error) onResult,
  ) {
    final platform = SquareMobilePaymentsSdkPlatform.instance;
    final id = '$_handleNamespace:${_nextHandleId++}';
    Future.sync(
      () => platform.startPayment(
        paymentParameters,
        promptParameters,
        handleId: id,
      ),
    ).then<void>(
      (payment) => onResult(payment, null),
      onError: (Object error, StackTrace stackTrace) {
        onResult(
          null,
          error is PaymentError
              ? error
              : PaymentError('unexpected', error.toString(), (
                  error: error,
                  stackTrace: stackTrace,
                )),
        );
      },
    );
    return PaymentHandle._(platform, id);
  }

  Future<PaymentHandle?> getCurrentPaymentHandle() async {
    final platform = SquareMobilePaymentsSdkPlatform.instance;
    final id = await platform.getCurrentPaymentHandleId();
    return id == null ? null : PaymentHandle._(platform, id);
  }

  Future<CancelResult> cancelPayment() async {
    return SquareMobilePaymentsSdkPlatform.instance.cancelPayment();
  }

  Future<PaymentHandleParams?> getPaymentHandleParams() async {
    return SquareMobilePaymentsSdkPlatform.instance.getPaymentHandleParams();
  }

  Future<bool> triggerAdditionalPaymentMethod(
      AdditionalPaymentMethodType type) async {
    return SquareMobilePaymentsSdkPlatform.instance
        .triggerAdditionalPaymentMethod(type);
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

class PaymentHandle {
  PaymentHandle._(this._platform, this._id);

  final SquareMobilePaymentsSdkPlatform _platform;
  final String _id;

  Future<CancelResult> cancelPayment() async {
    return _platform.cancelPayment(handleId: _id);
  }

  Future<PaymentHandleParams?> getParams() async {
    return _platform.getPaymentHandleParams(handleId: _id);
  }

  Future<bool> triggerAdditionalPaymentMethod(
    AdditionalPaymentMethodType type,
  ) async {
    return _platform.triggerAdditionalPaymentMethod(type, handleId: _id);
  }
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
