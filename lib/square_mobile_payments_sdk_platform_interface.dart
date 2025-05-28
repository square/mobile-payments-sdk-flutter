import 'dart:async';

import 'package:plugin_platform_interface/plugin_platform_interface.dart';
import 'package:square_mobile_payments_sdk/src/models/models.dart';

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

  Future<String> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }

  Future<String> getSdkVersion() {
    throw UnimplementedError('getSdkVersion() has not been implemented.');
  }

  Future<Environment> getEnvironment() {
    throw UnimplementedError('getEnvironment() has not been implemented.');
  }

  Future<AuthorizationState> getAuthorizationState() {
    throw UnimplementedError(
        'getAuthorizationState() has not been implemented.');
  }

  Future<Location?> getAuthorizedLocation() {
    throw UnimplementedError(
        'getAuthorizedLocation() has not been implemented.');
  }

  Future<void> authorize(String accessToken, String locationId) {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }

  Future<void> deauthorize() {
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

  Future<Payment> startPayment(PaymentParameters paymentParameters,
      PromptParameters promptParameters) async {
    throw UnimplementedError('startPayment() has not been implemented.');
  }

  /// **New Methods for Tap to Pay Support**
  Future<bool> isTapToPaySupported() {
    throw UnimplementedError('isTapToPaySupported() has not been implemented.');
  }

  Future<bool> isAppleAccountLinked() async {
    throw UnimplementedError(
        'isAppleAccountLinked() has not been implemented.');
  }

  Future<void> linkAppleAccount() async {
    throw UnimplementedError('linkAppleAccount() has not been implemented.');
  }

  Future<void> relinkAppleAccount() async {
    throw UnimplementedError('relinkAppleAccount() has not been implemented.');
  }

  Future<bool> isDeviceCapable() {
    throw UnimplementedError('isDeviceCapable() has not been implemented.');
  }

  // **New Methods for Offline Payment Support**
  Future<bool> isOfflineProcessingAllowed() async {
    throw UnimplementedError(
        'isOfflineProcessingAllowed() has not been implemented.');
  }

  Future<Money?> getOfflineTotalStoredAmountLimit() async {
    throw UnimplementedError(
        'getOfflineTotalStoredAmountLimit() has not been implemented.');
  }

  Future<Money?> getOfflineTransactionAmountLimit() async {
    throw UnimplementedError(
        'getOfflineTransactionAmountLimit() has not been implemented.');
  }

  Future<List<OfflinePayment>> getPayments() async {
    throw UnimplementedError('getPayments() has not been implemented.');
  }

  Future<Money?> getTotalStoredPaymentAmount() async {
    throw UnimplementedError(
        'getTotalStoredPaymentAmount() has not been implemented.');
  }

  // **New Methods for Reader management Support**
  Future<List<ReaderInfo>> getReaders() async {
    throw UnimplementedError('getReaders() has not been implemented.');
  }

  Future<ReaderInfo?> getReader(String id) async {
    throw UnimplementedError('getReader() has not been implemented.');
  }

  Future<void> forget(String id) async {
    throw UnimplementedError('forget() has not been implemented.');
  }

  Future<void> blink(String id) async {
    throw UnimplementedError('blink() has not been implemented.');
  }

  Future<bool> isPairingInProgress() async {
    throw UnimplementedError('isPairingInProgress() has not been implemented.');
  }

  ReaderCallbackReference setReaderChangedCallback(
      FutureOr<void> Function(ReaderChangedEvent event) callback) {
    throw UnimplementedError(
        'setReaderChangedCallback() has not been implemented.');
  }

  PairingHandle pairReader(void Function(bool, String?) callback) {
    throw UnimplementedError('pairReader() has not been implemented.');
  }
}
