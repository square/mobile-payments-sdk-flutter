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
    final version = await methodChannel.invokeMethod<String>('getSDKVersion');
    return version ?? ""; //TEST
  }

  @override
  Future<Environment> getEnvironment() async {
    final environmentName = await methodChannel.invokeMethod<String>('getEnvironment');
    return Environment.values.firstWhere(
      (e) => e.name == environmentName,
      orElse: () => Environment.production, //Not defined should trow exception
    ); //Test
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
    final location = await methodChannel
        .invokeMethod<Map<String, Object?>>('getAuthorizedLocation');
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
    var appFeeMoney = {
      "amount": paymentParameters.appFeeMoney.amount,
      "currencyCode": paymentParameters.appFeeMoney.currencyCode.name
    };
    var tipMoney = {
      "amount": paymentParameters.tipMoney.amount,
      "currencyCode": paymentParameters.tipMoney.currencyCode.name
    };

    var params = <String, dynamic>{
      'paymentParameters': {
        ...paymentParameters.toJson(),
        "amountMoney": amountMoney,
        "appFeeMoney": appFeeMoney,
        "tipMoney": tipMoney
      },
      'promptParameters': promptParameters.toJson(),
    };

    //TODO: cast Map to Payment
    final response = await methodChannel.invokeMethod('startPayment', params);
    print("----------------------Fluter response ---------------------------------");

    print(response);
    print(response["createdAt"]);
    print(response.runtimeType);
    return null;
  }
}
