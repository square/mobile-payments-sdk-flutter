import 'package:flutter_test/flutter_test.dart';
import 'package:square_mobile_payments_sdk/square_mobile_payments_sdk_platform_interface.dart';
import 'package:square_mobile_payments_sdk/square_mobile_payments_sdk_method_channel.dart';

void main() {
  final SquareMobilePaymentsSdkPlatform initialPlatform =
      SquareMobilePaymentsSdkPlatform.instance;

  test('$MethodChannelSquareMobilePaymentsSdk is the default instance', () {
    expect(
        initialPlatform, isInstanceOf<MethodChannelSquareMobilePaymentsSdk>());
  });
}
