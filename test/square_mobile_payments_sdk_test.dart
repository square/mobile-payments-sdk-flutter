import 'package:flutter_test/flutter_test.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';
import 'package:square_mobile_payments_sdk/square_mobile_payments_sdk.dart';
import 'package:square_mobile_payments_sdk/square_mobile_payments_sdk_method_channel.dart';
import 'package:square_mobile_payments_sdk/square_mobile_payments_sdk_platform_interface.dart';

/// Extends the platform interface instead of implementing it so the mock
/// inherits the default `UnimplementedError` bodies and only has to override
/// the methods a test actually exercises.
class MockSquareMobilePaymentsSdkPlatform extends SquareMobilePaymentsSdkPlatform
    with MockPlatformInterfaceMixin {
  @override
  Future<String> getPlatformVersion() async => '42';
}

void main() {
  // Reading `SquareMobilePaymentsSdkPlatform.instance` builds the default
  // MethodChannel implementation, whose constructor subscribes to an
  // EventChannel. That needs the services binding to be up first.
  TestWidgetsFlutterBinding.ensureInitialized();

  final SquareMobilePaymentsSdkPlatform initialPlatform =
      SquareMobilePaymentsSdkPlatform.instance;

  tearDown(() {
    SquareMobilePaymentsSdkPlatform.instance = initialPlatform;
  });

  test('$MethodChannelSquareMobilePaymentsSdk is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelSquareMobilePaymentsSdk>());
  });

  test('getPlatformVersion is delegated to the platform instance', () async {
    final plugin = SquareMobilePaymentsSdk();
    SquareMobilePaymentsSdkPlatform.instance =
        MockSquareMobilePaymentsSdkPlatform();

    expect(await plugin.settingsManager.getPlatformVersion(), '42');
  });
}
