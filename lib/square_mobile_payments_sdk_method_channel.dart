import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:square_mobile_payments_sdk/src/models.dart';

import 'square_mobile_payments_sdk_platform_interface.dart';

/// An implementation of [SquareMobilePaymentsSdkPlatform] that uses method channels.
class MethodChannelSquareMobilePaymentsSdk
    extends SquareMobilePaymentsSdkPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('square_mobile_payments_sdk');

  @override
  Future<String?> getPlatformVersion() async {
    final version =
        await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }

  @override
  Future<String> getSDKVersion() async {
    // invokeMethod<String> does NOT enforce type conversion; the result may be null or another type.
    final version = await methodChannel.invokeMethod<String>('getSDKVersion'); 
    if (version == null) {
      throw StateError("getSDKVersion() returned null, which should not happen.");
    }
    return version;
  }

  @override
  Future<bool> isSandboxEnvironment() async {
    final bool? isSandbox = await methodChannel.invokeMethod<bool>('isSandboxEnvironment');
    return isSandbox ?? false; // Provide a default value (false)
  }

  @override
  Future<AuthorizationState> getAuthorizationState() async {
    final authorizeStateName =
        await methodChannel.invokeMethod<String>('getAuthorizationState');
    return AuthorizationState.values.firstWhere(
      (e) => e.name == authorizeStateName,
      orElse: () => AuthorizationState.notAuthorized,
    );
  }

  @override
  Future<Location?> getAuthorizedLocation() async {
    final location = await methodChannel.invokeMethod('getAuthorizedLocation');
    if (location != null) {
      return Location.fromJson(location); //TEST
    }
    return null;
  }

  @override
  Future<String?> authorize(String accessToken, String locationId) async {
    var params = <String, dynamic>{
      'accessToken': accessToken,
      'locationId': locationId,
    };
    final response =
        await methodChannel.invokeMethod<String>('authorize', params);
    return response;
  }

  @override
  Future<String?> deauthorize() async {
    final response = await methodChannel.invokeMethod<String>('deauthorize');
    return response;
  }

  @override
  Future<void> showMockReaderUI() async {
    await methodChannel.invokeMethod<void>('showMockReaderUI');
  }

  @override
  Future<void> hideMockReaderUI() async {
    await methodChannel.invokeMethod<void>('hideMockReaderUI');
  }

  @override
  Future<void> showSettings() async {
    await methodChannel.invokeMethod<void>('showSettings');
  }

  @override
  Future<Payment?> startPayment(paymentParameters, promptParameters) async {
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

    final response = await methodChannel.invokeMethod<Map>('startPayment', params);

    if (response != null) {
      final paymentJson = castPaymentMap(response);
      return Payment.fromJson(paymentJson);
    }

    return null;
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
