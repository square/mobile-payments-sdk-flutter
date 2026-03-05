import 'package:flutter_test/flutter_test.dart';
import 'package:square_mobile_payments_sdk/square_mobile_payments_sdk_platform_interface.dart';
import 'package:square_mobile_payments_sdk/square_mobile_payments_sdk_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockSquareMobilePaymentsSdkPlatform
    extends SquareMobilePaymentsSdkPlatform
    with MockPlatformInterfaceMixin {}

void main() {
  final SquareMobilePaymentsSdkPlatform initialPlatform = SquareMobilePaymentsSdkPlatform.instance;

  test('$MethodChannelSquareMobilePaymentsSdk is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelSquareMobilePaymentsSdk>());
  });
}
