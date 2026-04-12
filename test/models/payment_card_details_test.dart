import 'package:flutter_test/flutter_test.dart';
import 'package:square_mobile_payments_sdk/src/models/models.dart';

/// Simulates the native Map → castToMap → fromJson pipeline.
/// Native platforms send Map<Object?, Object?>, castToMap converts to
/// Map<String, Object?>, then fromJson deserializes.
Map<String, Object?> castToMap(Map response) {
  Map<String, Object?> result = {};
  for (var entry in response.entries) {
    if (entry.key is String) {
      if (entry.value is Map) {
        result[entry.key as String] = castToMap(entry.value);
      } else {
        result[entry.key as String] = entry.value;
      }
    }
  }
  return result;
}

/// A complete online payment map as Android/iOS would send it.
Map<String, Object?> buildOnlinePaymentMap({
  Map<String, Object?>? cardDetailsOverride,
  bool includeCardDetails = true,
}) {
  final base = <String, Object?>{
    'amountMoney': {'amount': 100, 'currencyCode': 'usd'},
    'appFeeMoney': {'amount': 5, 'currencyCode': 'usd'},
    'createdAt': '2025-11-01T12:00:00.000Z',
    'id': 'pay_abc123',
    'locationId': 'loc_xyz',
    'orderId': 'order_456',
    'referenceId': 'ref_789',
    'sourceType': 'card',
    'tipMoney': {'amount': 10, 'currencyCode': 'usd'},
    'totalMoney': {'amount': 115, 'currencyCode': 'usd'},
    'updatedAt': '2025-11-01T12:00:01.000Z',
  };

  if (includeCardDetails) {
    base['cardDetails'] = cardDetailsOverride ?? buildCardDetailsMap();
  }

  return base;
}

Map<String, Object?> buildCardDetailsMap({
  String status = 'authorized',
  String entryMethod = 'contactless',
  String? authorizationCode = 'AUTH123',
  String? applicationIdentifier = 'A0000000031010',
  String? applicationName = 'Visa Debit',
  Map<String, Object?>? cardOverride,
}) {
  return {
    'status': status,
    'entryMethod': entryMethod,
    'authorizationCode': authorizationCode,
    'applicationIdentifier': applicationIdentifier,
    'applicationName': applicationName,
    'card': cardOverride ?? buildCardMap(),
  };
}

Map<String, Object?> buildCardMap({
  String brand = 'visa',
  String coBrand = 'none',
  String lastFourDigits = '1234',
  num expirationMonth = 12,
  num expirationYear = 2025,
  String? cardholderName = 'John Doe',
  String? id = 'card_abc',
}) {
  return {
    'brand': brand,
    'coBrand': coBrand,
    'lastFourDigits': lastFourDigits,
    'expirationMonth': expirationMonth,
    'expirationYear': expirationYear,
    'cardholderName': cardholderName,
    'id': id,
  };
}

void main() {
  group('Payment.fromJson — cardDetails field', () {
    test('parses full cardDetails from online payment', () {
      final json = castToMap(buildOnlinePaymentMap());
      final payment = Payment.fromJson(json);

      expect(payment.cardDetails, isNotNull);
      expect(payment.cardDetails!.status, CardPaymentStatus.authorized);
      expect(payment.cardDetails!.entryMethod, EntryMethod.contactless);
      expect(payment.cardDetails!.authorizationCode, 'AUTH123');
      expect(payment.cardDetails!.applicationIdentifier, 'A0000000031010');
      expect(payment.cardDetails!.applicationName, 'Visa Debit');
      expect(payment.cardDetails!.card, isNotNull);
      expect(payment.cardDetails!.card!.brand, CardBrand.visa);
      expect(payment.cardDetails!.card!.lastFourDigits, '1234');
      expect(payment.cardDetails!.card!.expirationMonth, 12);
      expect(payment.cardDetails!.card!.expirationYear, 2025);
      expect(payment.cardDetails!.card!.cardholderName, 'John Doe');
      expect(payment.cardDetails!.card!.coBrand, CardCoBrand.none);
    });

    test('cardDetails is null when absent (non-card payment)', () {
      final json = castToMap(buildOnlinePaymentMap(includeCardDetails: false));
      final payment = Payment.fromJson(json);

      expect(payment.cardDetails, isNull);
      expect(payment.amountMoney.amount, 100);
      expect(payment.sourceType, SourceType.card);
    });

    test('cardDetails is null when explicitly null', () {
      final json = castToMap(buildOnlinePaymentMap());
      json['cardDetails'] = null;
      final payment = Payment.fromJson(json);

      expect(payment.cardDetails, isNull);
    });

    test('other Payment fields unaffected by cardDetails presence', () {
      final json = castToMap(buildOnlinePaymentMap());
      final payment = Payment.fromJson(json);

      expect(payment.amountMoney.amount, 100);
      expect(payment.amountMoney.currencyCode, CurrencyCode.usd);
      expect(payment.totalMoney.amount, 115);
      expect(payment.tipMoney?.amount, 10);
      expect(payment.appFeeMoney?.amount, 5);
      expect(payment.id, 'pay_abc123');
      expect(payment.locationId, 'loc_xyz');
      expect(payment.orderId, 'order_456');
      expect(payment.referenceId, 'ref_789');
      expect(payment.sourceType, SourceType.card);
    });
  });

  group('CardPaymentDetails.fromJson — nullable fields', () {
    test('parses when all optional fields are null', () {
      final json = castToMap(buildCardDetailsMap(
        authorizationCode: null,
        applicationIdentifier: null,
        applicationName: null,
        cardOverride: null,
      ));
      // card key must exist but be null
      json['card'] = null;

      final details = CardPaymentDetails.fromJson(json);

      expect(details.authorizationCode, isNull);
      expect(details.applicationIdentifier, isNull);
      expect(details.applicationName, isNull);
      expect(details.card, isNull);
      expect(details.entryMethod, EntryMethod.contactless);
      expect(details.status, CardPaymentStatus.authorized);
    });

    test('parses all CardPaymentStatus values', () {
      for (final status in ['authorized', 'captured', 'voided', 'failed']) {
        final json = castToMap(buildCardDetailsMap(status: status));
        final details = CardPaymentDetails.fromJson(json);
        expect(details.status.name, status);
      }
    });

    test('parses all EntryMethod values', () {
      for (final method in ['keyed', 'swiped', 'emv', 'contactless', 'onFile']) {
        final json = castToMap(buildCardDetailsMap(entryMethod: method));
        final details = CardPaymentDetails.fromJson(json);
        expect(details.entryMethod.name, method);
      }
    });
  });

  group('Card.fromJson — enum values and edge cases', () {
    test('parses all common CardBrand values', () {
      final brands = [
        'visa', 'mastercard', 'americanExpress', 'discover',
        'discoverDiners', 'jcb', 'chinaUnionPay', 'squareGiftCard',
        'eftpos', 'felica', 'interac', 'ebt',
      ];
      for (final brand in brands) {
        final json = castToMap(buildCardMap(brand: brand));
        final card = Card.fromJson(json);
        expect(card.brand.name, brand);
      }
    });

    test('parses all CardCoBrand values', () {
      for (final coBrand in ['afterpay', 'clearpay', 'none']) {
        final json = castToMap(buildCardMap(coBrand: coBrand));
        final card = Card.fromJson(json);
        expect(card.coBrand.name, coBrand);
      }
    });

    test('nullable cardholderName and id', () {
      final json = castToMap(buildCardMap(cardholderName: null, id: null));
      final card = Card.fromJson(json);

      expect(card.cardholderName, isNull);
      expect(card.id, isNull);
      expect(card.lastFourDigits, '1234');
    });

    test('default expirationMonth and expirationYear when absent', () {
      final json = castToMap(buildCardMap());
      json.remove('expirationMonth');
      json.remove('expirationYear');
      final card = Card.fromJson(json);

      expect(card.expirationMonth, 0);
      expect(card.expirationYear, 0);
    });
  });

  group('Unknown enum value resilience (@JsonKey unknownEnumValue)', () {
    test('unknown CardBrand falls back to CardBrand.unknown', () {
      final json = castToMap(buildCardMap(brand: 'futureNewBrand'));
      final card = Card.fromJson(json);

      expect(card.brand, CardBrand.unknown);
      expect(card.lastFourDigits, '1234');
    });

    test('unknown CardCoBrand falls back to CardCoBrand.unknown', () {
      final json = castToMap(buildCardMap(coBrand: 'futureNewCoBrand'));
      final card = Card.fromJson(json);

      expect(card.coBrand, CardCoBrand.unknown);
    });

    test('unknown EntryMethod falls back to EntryMethod.unknown', () {
      final json = castToMap(buildCardDetailsMap(entryMethod: 'futureNewMethod'));
      final details = CardPaymentDetails.fromJson(json);

      expect(details.entryMethod, EntryMethod.unknown);
    });

    test('unknown CardPaymentStatus falls back to CardPaymentStatus.unknown', () {
      final json = castToMap(buildCardDetailsMap(status: 'futureNewStatus'));
      final details = CardPaymentDetails.fromJson(json);

      expect(details.status, CardPaymentStatus.unknown);
    });

    test('full Payment with unknown enums in cardDetails does not crash', () {
      final cardDetails = buildCardDetailsMap(
        status: 'futureStatus',
        entryMethod: 'futureMethod',
        cardOverride: buildCardMap(
          brand: 'futureBrand',
          coBrand: 'futureCoBrand',
        ),
      );
      final json = castToMap(buildOnlinePaymentMap(
        cardDetailsOverride: cardDetails,
      ));

      final payment = Payment.fromJson(json);

      expect(payment.cardDetails, isNotNull);
      expect(payment.cardDetails!.status, CardPaymentStatus.unknown);
      expect(payment.cardDetails!.entryMethod, EntryMethod.unknown);
      expect(payment.cardDetails!.card!.brand, CardBrand.unknown);
      expect(payment.cardDetails!.card!.coBrand, CardCoBrand.unknown);
      expect(payment.cardDetails!.card!.lastFourDigits, '1234');
      expect(payment.amountMoney.amount, 100);
    });
  });

  group('castToMap — nested structure handling', () {
    test('recursively casts nested Maps', () {
      final raw = <Object?, Object?>{
        'cardDetails': <Object?, Object?>{
          'card': <Object?, Object?>{
            'brand': 'visa',
            'coBrand': 'none',
            'lastFourDigits': '5678',
            'expirationMonth': 6,
            'expirationYear': 2026,
          },
          'entryMethod': 'emv',
          'status': 'captured',
        },
      };

      final result = castToMap(raw);

      expect(result['cardDetails'], isA<Map<String, Object?>>());
      final cd = result['cardDetails'] as Map<String, Object?>;
      expect(cd['card'], isA<Map<String, Object?>>());
      final card = cd['card'] as Map<String, Object?>;
      expect(card['brand'], 'visa');
      expect(card['lastFourDigits'], '5678');
    });

    test('null values pass through without error', () {
      final raw = <Object?, Object?>{
        'cardDetails': null,
        'id': null,
      };
      final result = castToMap(raw);

      expect(result['cardDetails'], isNull);
      expect(result['id'], isNull);
    });

    test('non-string keys are skipped', () {
      final raw = <Object?, Object?>{
        'valid': 'kept',
        42: 'dropped',
      };
      final result = castToMap(raw);

      expect(result['valid'], 'kept');
      expect(result.containsKey(42), isFalse);
      expect(result.length, 1);
    });
  });

  group('End-to-end: simulated Android/iOS responses', () {
    test('Android online payment with full card details', () {
      // Simulates what Android toOnlineMap() + toOnlineDetailsMap() sends
      final nativeResponse = castToMap({
        'amountMoney': {'amount': 500, 'currencyCode': 'usd'},
        'createdAt': '2025-11-15T10:30:00.000Z',
        'updatedAt': '2025-11-15T10:30:01.000Z',
        'id': 'pay_android_001',
        'locationId': 'loc_001',
        'sourceType': 'card',
        'totalMoney': {'amount': 500, 'currencyCode': 'usd'},
        'cardDetails': {
          'status': 'captured',
          'card': {
            'brand': 'mastercard',
            'coBrand': 'none',
            'lastFourDigits': '9876',
            'expirationMonth': 3,
            'expirationYear': 2027,
            'cardholderName': 'Jane Smith',
            'id': 'card_mc_001',
          },
          'entryMethod': 'emv',
          'authorizationCode': 'MC_AUTH_456',
          'applicationIdentifier': 'A0000000041010',
          'applicationName': 'Mastercard',
        },
      });

      final payment = Payment.fromJson(nativeResponse);

      expect(payment.id, 'pay_android_001');
      expect(payment.cardDetails, isNotNull);
      expect(payment.cardDetails!.status, CardPaymentStatus.captured);
      expect(payment.cardDetails!.entryMethod, EntryMethod.emv);
      expect(payment.cardDetails!.authorizationCode, 'MC_AUTH_456');
      expect(payment.cardDetails!.card!.brand, CardBrand.mastercard);
      expect(payment.cardDetails!.card!.lastFourDigits, '9876');
      expect(payment.cardDetails!.card!.cardholderName, 'Jane Smith');
    });

    test('iOS online payment with keyed entry (null EMV fields)', () {
      // Simulates iOS where applicationIdentifier/applicationName are nil
      // for keyed-in payments
      final nativeResponse = castToMap({
        'amountMoney': {'amount': 200, 'currencyCode': 'eur'},
        'createdAt': '2025-11-15T14:00:00.000Z',
        'updatedAt': '2025-11-15T14:00:02.000Z',
        'id': 'pay_ios_002',
        'sourceType': 'card',
        'totalMoney': {'amount': 200, 'currencyCode': 'eur'},
        'cardDetails': {
          'status': 'authorized',
          'card': {
            'brand': 'americanExpress',
            'coBrand': 'none',
            'lastFourDigits': '0005',
            'expirationMonth': 1,
            'expirationYear': 2028,
          },
          'entryMethod': 'keyed',
          'authorizationCode': 'AMEX_789',
          'applicationIdentifier': null,
          'applicationName': null,
        },
      });

      final payment = Payment.fromJson(nativeResponse);

      expect(payment.cardDetails, isNotNull);
      expect(payment.cardDetails!.applicationIdentifier, isNull);
      expect(payment.cardDetails!.applicationName, isNull);
      expect(payment.cardDetails!.authorizationCode, 'AMEX_789');
      expect(payment.cardDetails!.entryMethod, EntryMethod.keyed);
      expect(payment.cardDetails!.card!.brand, CardBrand.americanExpress);
      expect(payment.cardDetails!.card!.lastFourDigits, '0005');
    });

    test('cash payment — no cardDetails', () {
      final nativeResponse = castToMap({
        'amountMoney': {'amount': 300, 'currencyCode': 'usd'},
        'createdAt': '2025-11-15T16:00:00.000Z',
        'updatedAt': '2025-11-15T16:00:00.000Z',
        'sourceType': 'cash',
        'totalMoney': {'amount': 300, 'currencyCode': 'usd'},
      });

      final payment = Payment.fromJson(nativeResponse);

      expect(payment.cardDetails, isNull);
      expect(payment.sourceType, SourceType.cash);
      expect(payment.amountMoney.amount, 300);
    });
  });
}
