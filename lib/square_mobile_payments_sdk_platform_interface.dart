import 'package:plugin_platform_interface/plugin_platform_interface.dart';
import 'package:square_mobile_payments_sdk/src/models.dart';

import 'square_mobile_payments_sdk_method_channel.dart';

abstract class SquareMobilePaymentsSdkPlatform extends PlatformInterface {
  /// Constructs a SquareMobilePaymentsSdkPlatform.
  SquareMobilePaymentsSdkPlatform() : super(token: _token);

  static final Object _token = Object();

  static SquareMobilePaymentsSdkPlatform _instance =
      MethodChannelSquareMobilePaymentsSdk();

  /// The default instance of [SquareMobilePaymentsSdkPlatform] to use.
  ///
  /// Defaults to [MethodChannelSquareMobilePaymentsSdk].
  static SquareMobilePaymentsSdkPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [SquareMobilePaymentsSdkPlatform] when
  /// they register themselves.
  static set instance(SquareMobilePaymentsSdkPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  
  }

  Future<String> getSDKVersion() {
    throw UnimplementedError('getSDKVersion() has not been implemented.');
  }

  Future<bool> isSandboxEnvironment() {
    throw UnimplementedError('isSandboxEnvironment() has not been implemented.');
  }

  Future<AuthorizationState> getAuthorizationState() {
    throw UnimplementedError('getAuthorizationState() has not been implemented.');
  }

  Future<Location?> getAuthorizedLocation() {
    throw UnimplementedError('getAuthorizedLocation() has not been implemented.');
  }

  Future<String?> authorize(String accessToken, String locationId) {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }

  Future<String?> deauthorize() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }

  Future<void> showMockReaderUI() {
    throw UnimplementedError('showMockReader() has not been implemented.');
  }

  Future<void> hideMockReaderUI() {
    throw UnimplementedError('hideMockReader() has not been implemented.');
  }

  Future<void> showSettings() async {
    throw UnimplementedError('showSettings() has not been implemented.');
  }

  Future<Payment?> startPayment(PaymentParameters paymentParameters,
      PromptParameters promptParameters) async {
    throw UnimplementedError('startPayment() has not been implemented.');
  }
}
