import 'dart:async';

import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:square_mobile_payments_sdk/square_mobile_payments_sdk.dart';
import 'package:square_mobile_payments_sdk/square_mobile_payments_sdk_method_channel.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  MethodChannelSquareMobilePaymentsSdk platform =
      MethodChannelSquareMobilePaymentsSdk();
  const MethodChannel channel = MethodChannel('square_mobile_payments_sdk');

  setUp(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
        .setMockMethodCallHandler(channel, (MethodCall methodCall) async {
          return '42';
        });
  });

  tearDown(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
        .setMockMethodCallHandler(channel, null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.getPlatformVersion(), '42');
  });

  test('handle calls carry the identity of the start or snapshot', () async {
    final manager = SquareMobilePaymentsSdk().paymentManager;
    final messenger =
        TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger;
    final starts = <String>[];
    String? activeId;
    late Completer<Map<String, dynamic>> pendingPayment;
    messenger.setMockMethodCallHandler(channel, (call) async {
      final id = call.arguments is Map ? call.arguments['handleId'] : null;
      switch (call.method) {
        case 'startPayment':
          starts.add(id as String);
          if (activeId != null) {
            throw PlatformException(code: 'paymentAlreadyInProgress');
          }
          activeId = id;
          pendingPayment = Completer<Map<String, dynamic>>();
          return pendingPayment.future;
        case 'getCurrentPaymentHandleId':
          return activeId;
        case 'cancelPayment':
          return id == activeId ? 'canceled' : 'noPaymentInProgress';
        case 'getPaymentHandleParams':
          return id == activeId
              ? {
                  'isPaymentCancelable': true,
                  'additionalPaymentMethods': ['cash'],
                }
              : null;
        case 'triggerAdditionalPaymentMethod':
          expect(call.arguments['type'], 'cash');
          if (id == activeId) {
            throw PlatformException(code: 'usageError');
          }
          return false;
        default:
          fail('Unexpected channel method: ${call.method}');
      }
    });
    expect(await manager.getCurrentPaymentHandle(), isNull);
    const params = PaymentParameters(
      amountMoney: Money(amount: 100, currencyCode: CurrencyCode.usd),
      paymentAttemptId: 'attempt',
      processingMode: ProcessingMode.onlineOnly,
      allowCardSurcharge: false,
    );
    const prompt = PromptParameters(
      mode: PromptMode.customMode,
      additionalPaymentMethods: [AdditionalPaymentMethodType.cash],
    );
    const money = Money(amount: 100, currencyCode: CurrencyCode.usd);
    final timestamp = DateTime.utc(2026);
    final offlinePayment = Payment.offline(
      amountMoney: money,
      totalMoney: money,
      createdAt: timestamp,
      updatedAt: timestamp,
      sourceType: SourceType.unknown,
      localId: 'offline-payment',
      status: OfflineStatus.queued,
    );
    final paymentReply = {
      ...offlinePayment.toJson(),
      'amountMoney': money.toJson(),
      'totalMoney': money.toJson(),
    };
    final onSuccess = expectAsync2((Payment? payment, PaymentError? error) {
      expect(payment, offlinePayment);
      expect(error, isNull);
    }, count: 2);
    final first = manager.startPayment(params, prompt, onSuccess);
    expect((await first.getParams())?.additionalPaymentMethods, [
      AdditionalPaymentMethodType.cash,
    ]);
    final snapshot = (await manager.getCurrentPaymentHandle())!;
    final rejected = manager.startPayment(
      params,
      prompt,
      expectAsync2((Payment? payment, PaymentError? error) {
        expect(payment, isNull);
        expect(error?.code, PaymentErrorCode.paymentAlreadyInProgress);
      }),
    );
    expect(await rejected.cancelPayment(), CancelResult.noPaymentInProgress);
    expect(starts.toSet(), hasLength(2));
    expect(await rejected.getParams(), isNull);
    expect(
      await rejected.triggerAdditionalPaymentMethod(
        AdditionalPaymentMethodType.cash,
      ),
      isFalse,
    );
    await expectLater(
      snapshot.triggerAdditionalPaymentMethod(AdditionalPaymentMethodType.cash),
      throwsA(
        isA<PaymentError>().having(
          (error) => error.code,
          'code',
          PaymentErrorCode.usageError,
        ),
      ),
    );

    activeId = null;
    pendingPayment.complete(paymentReply);
    final next = manager.startPayment(params, prompt, onSuccess);
    expect(await first.cancelPayment(), CancelResult.noPaymentInProgress);
    expect(await snapshot.cancelPayment(), CancelResult.noPaymentInProgress);
    expect(await next.cancelPayment(), CancelResult.canceled);
    pendingPayment.complete(paymentReply);
  });

  test(
    'startPayment preserves unexpected error and stack in the callback',
    () async {
      final messenger =
          TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger;
      messenger.setMockMethodCallHandler(channel, (_) async => null);
      final callback = expectAsync2((Payment? payment, PaymentError? error) {
        expect(payment, isNull);
        expect(error?.code, PaymentErrorCode.unexpected);
        final details =
            error!.details as ({Object error, StackTrace stackTrace});
        expect(details.error, isA<StateError>());
        expect(details.stackTrace.toString(), isNotEmpty);
      });
      SquareMobilePaymentsSdk().paymentManager.startPayment(
        const PaymentParameters(
          amountMoney: Money(amount: 100, currencyCode: CurrencyCode.usd),
          paymentAttemptId: 'attempt',
          processingMode: ProcessingMode.onlineOnly,
          allowCardSurcharge: false,
        ),
        const PromptParameters(
          mode: PromptMode.defaultMode,
          additionalPaymentMethods: [],
        ),
        callback,
      );
    },
  );
}
