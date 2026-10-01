import 'dart:async';
import 'dart:io';

import 'package:square_mobile_payments_sdk/square_mobile_payments_sdk_platform_interface.dart';
import 'package:square_mobile_payments_sdk/src/models/models.dart';
import 'package:square_mobile_payments_sdk/src/errors/errors.dart';

class ReaderManager {
  ReaderManager._privateConstructor();
  static final ReaderManager _instance = ReaderManager._privateConstructor();
  factory ReaderManager() => _instance;

  static UnsupportedError _iosOnlyError() {
    return UnsupportedError('This feature is only available on iOS.');
  }

  Future<void> showMockReaderUI() async {
    return SquareMobilePaymentsSdkPlatform.instance.showMockReaderUI();
  }

  Future<void> hideMockReaderUI() async {
    return SquareMobilePaymentsSdkPlatform.instance.hideMockReaderUI();
  }

  Future<List<ReaderInfo>> getReaders() async {
    return SquareMobilePaymentsSdkPlatform.instance.getReaders();
  }

  Future<ReaderInfo?> getReader(String id) async {
    return SquareMobilePaymentsSdkPlatform.instance.getReader(id);
  }

  Future<void> forget(String id) async {
    return SquareMobilePaymentsSdkPlatform.instance.forget(id);
  }

  Future<void> blink(String id) async {
    return SquareMobilePaymentsSdkPlatform.instance.blink(id);
  }

  Future<RetryConnectionResult> retryConnection(String id) async {
    return SquareMobilePaymentsSdkPlatform.instance.retryConnection(id);
  }

  Future<void> setPreferredFirmwareUpdateTime(TimeOfDay? time) async {
    return SquareMobilePaymentsSdkPlatform.instance
        .setPreferredFirmwareUpdateTime(time);
  }

  Future<void> setReducedChargingModeEnabled(bool enabled) async {
    return SquareMobilePaymentsSdkPlatform.instance
        .setReducedChargingModeEnabled(enabled);
  }

  Future<void> rebootReader(String id) {
    if (Platform.isIOS) {
      return SquareMobilePaymentsSdkPlatform.instance.rebootReader(id);
    }
    return Future.error(_iosOnlyError());
  }

  Future<bool> isPairingInProgress() async {
    return SquareMobilePaymentsSdkPlatform.instance.isPairingInProgress();
  }

  Future<ReaderSettings> readerSettings() async {
    return SquareMobilePaymentsSdkPlatform.instance.readerSettings();
  }

  ReaderCallbackReference setReaderChangedCallback(
      FutureOr<void> Function(ReaderChangedEvent event) callback) {
    return SquareMobilePaymentsSdkPlatform.instance
        .setReaderChangedCallback(callback);
  }

  PairingHandle pairReader(
      void Function(bool success, ReaderPairingError? error) callback) {
    return SquareMobilePaymentsSdkPlatform.instance.pairReader(callback);
  }
}
