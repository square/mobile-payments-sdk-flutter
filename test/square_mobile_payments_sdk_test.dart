import 'package:flutter_test/flutter_test.dart';
import 'package:square_mobile_payments_sdk/square_mobile_payments_sdk.dart';
import 'package:square_mobile_payments_sdk/square_mobile_payments_sdk_platform_interface.dart';
import 'package:square_mobile_payments_sdk/square_mobile_payments_sdk_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockSquareMobilePaymentsSdkPlatform
    with MockPlatformInterfaceMixin
    implements SquareMobilePaymentsSdkPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final SquareMobilePaymentsSdkPlatform initialPlatform = SquareMobilePaymentsSdkPlatform.instance;

  test('$MethodChannelSquareMobilePaymentsSdk is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelSquareMobilePaymentsSdk>());
  });

  test('getPlatformVersion', () async {
    SquareMobilePaymentsSdk squareMobilePaymentsSdkPlugin = SquareMobilePaymentsSdk();
    MockSquareMobilePaymentsSdkPlatform fakePlatform = MockSquareMobilePaymentsSdkPlatform();
    SquareMobilePaymentsSdkPlatform.instance = fakePlatform;

    expect(await squareMobilePaymentsSdkPlugin.getPlatformVersion(), '42');
  });
}
