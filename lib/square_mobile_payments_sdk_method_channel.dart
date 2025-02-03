import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

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
}
