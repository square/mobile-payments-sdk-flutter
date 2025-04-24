import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:square_mobile_payments_sdk/src/models/models.dart';
import 'package:square_mobile_payments_sdk/src/errors/errors.dart';

import 'square_mobile_payments_sdk_platform_interface.dart';

/// An implementation of [SquareMobilePaymentsSdkPlatform] that uses method channels.
class MethodChannelSquareMobilePaymentsSdk
    extends SquareMobilePaymentsSdkPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('square_mobile_payments_sdk');

  @override
  Future<String> getPlatformVersion() async {
    final version =
        await methodChannel.invokeMethod<String>('getPlatformVersion');
    if (version == null) {
      throw getChannelStateError("getPlatformVersion()", "returned null");
    }
    return version;
  }

  @override
  Future<String> getSdkVersion() async {
    // invokeMethod<String> does NOT enforce type conversion; the result may be null or another type.
    final version = await methodChannel.invokeMethod<String>('getSdkVersion');
    if (version == null) {
      throw getChannelStateError("getSdkVersion()", "returned null");
    }
    return version;
  }

  @override
  Future<Environment> getEnvironment() async {
    final envName = await methodChannel.invokeMethod<String>('getEnvironment');
    if (envName == null) {
      throw getChannelStateError("getEnvironment()", "returned null");
    }
    final environment = assertEnumValue(Environment.values, envName);
    return environment;
  }

  @override
  Future<AuthorizationState> getAuthorizationState() async {
    final authorizeStateName =
        await methodChannel.invokeMethod<String>('getAuthorizationState');
    if (authorizeStateName == null) {
      throw getChannelStateError("getAuthorizationState()", "returned null");
    }
    final authorizationState =
        assertEnumValue(AuthorizationState.values, authorizeStateName);
    return authorizationState;
  }

  @override
  Future<Location?> getAuthorizedLocation() async {
    //null if not authorized
    final location = await methodChannel.invokeMethod('getAuthorizedLocation');
    if (location != null) {
      return Location.fromJson(location); //TEST
    }
    return null;
  }

  @override
  Future<void> authorize(String accessToken, String locationId) async {
    var params = <String, dynamic>{
      'accessToken': accessToken,
      'locationId': locationId,
    };
    try {
      await methodChannel.invokeMethod<void>('authorize', params);
    } on PlatformException catch (e) {
      throw AuthorizeError(e.code, e.message, e.details);
    }
  }

  @override
  Future<void> deauthorize() async {
    await methodChannel.invokeMethod('deauthorize');
  }

  @override
  Future<void> showMockReaderUI() async {
    try {
      await methodChannel.invokeMethod<void>('showMockReaderUI');
    } on PlatformException catch (e) {
      throw MockReaderUIError(e.code, e.message, e.details);
    }
  }

  @override
  Future<void> hideMockReaderUI() async {
    await methodChannel.invokeMethod<void>('hideMockReaderUI');
  }

  @override
  Future<void> showSettings() async {
    try {
      await methodChannel.invokeMethod<void>('showSettings');
    } on PlatformException catch (e) {
      throw SettingsError(e.code, e.message, e.details);
    }
  }

  @override
  Future<Payment> startPayment(paymentParameters, promptParameters) async {
    var amountMoney = {
      "amount": paymentParameters.amountMoney.amount,
      "currencyCode": paymentParameters.amountMoney.currencyCode.name
    };

    var appFeeMoney = paymentParameters.appFeeMoney != null
        ? {
            "amount": paymentParameters.appFeeMoney!.amount,
            "currencyCode": paymentParameters.appFeeMoney!.currencyCode.name
          }
        : null;

    var tipMoney = paymentParameters.tipMoney != null
        ? {
            "amount": paymentParameters.tipMoney!.amount,
            "currencyCode": paymentParameters.tipMoney!.currencyCode.name
          }
        : null;

    var params = <String, dynamic>{
      'paymentParameters': {
        ...paymentParameters.toJson(),
        "amountMoney": amountMoney,
        "appFeeMoney": appFeeMoney,
        "tipMoney": tipMoney
      },
      'promptParameters': promptParameters.toJson(),
    };

    try {
      final response =
          await methodChannel.invokeMethod<Map>('startPayment', params);
      if (response == null) {
        throw getChannelStateError("startPayment()", "returned null");
      }
      final paymentJson = castPaymentMap(response);
      return Payment.fromJson(paymentJson);
    } on PlatformException catch (e) {
      throw PaymentError(e.code, e.message, e.details);
    }
  }

  /// **New Methods for Tap to Pay Support**

  @override
  Future<bool> isAppleAccountLinked() async {
    final bool? linked =
        await methodChannel.invokeMethod<bool>('isAppleAccountLinked');
    return linked ?? false;
  }

  @override
  Future<void> linkAppleAccount() async {
    await methodChannel.invokeMethod<void>('linkAppleAccount');
  }

  @override
  Future<void> relinkAppleAccount() async {
    await methodChannel.invokeMethod<void>('relinkAppleAccount');
  }

  @override
  Future<bool> isDeviceCapable() async {
    final bool? capable =
        await methodChannel.invokeMethod<bool>('isDeviceCapable');
    return capable ?? false;
  }

  // **New Methods for Offline Payment Support**

  @override
  Future<bool> isOfflineProcessingAllowed() async {
    final result =
        await methodChannel.invokeMethod<bool>('isOfflineProcessingAllowed');
    return result ?? false;
  }

  @override
  Future<Money?> getOfflineTotalStoredAmountLimit() async {
    final result = await methodChannel
        .invokeMethod<Map>('getOfflineTotalStoredAmountLimit');
    if (result == null) return null;
    return Money.fromJson(result.cast<String, Object?>());
  }

  @override
  Future<Money?> getOfflineTransactionAmountLimit() async {
    final result = await methodChannel
        .invokeMethod<Map>('getOfflineTransactionAmountLimit');
    if (result == null) return null;
    return Money.fromJson(result.cast<String, Object?>());
  }

  @override
  Future<List<OfflinePayment>> getPayments() async {
    final result = await methodChannel.invokeMethod<List>('getPayments');
    if (result == null) {
      throw StateError("getPayments() returned null, which should not happen.");
    }
    return result
        .map((e) => OfflinePayment.fromJson(castPaymentMap(e)))
        .toList();
  }

  @override
  Future<Money?> getTotalStoredPaymentAmount() async {
    final result =
        await methodChannel.invokeMethod<Map>('getTotalStoredPaymentAmount');
    if (result == null) return null;
    return Money.fromJson(result.cast<String, Object?>());
  }
}

Map<String, Object?> castPaymentMap(Map response) {
  Map<String, Object?> result = {};

  for (var entry in response.entries) {
    if (entry.key is String) {
      if (entry.value is Map) {
        result[entry.key as String] = castPaymentMap(entry.value);
      } else {
        result[entry.key as String] = entry.value;
      }
    }
  }

  return result;
}
