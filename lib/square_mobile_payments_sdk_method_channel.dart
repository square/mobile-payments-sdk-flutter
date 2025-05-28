import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:square_mobile_payments_sdk/src/models/models.dart';
import 'package:square_mobile_payments_sdk/src/errors/errors.dart';

import 'square_mobile_payments_sdk_platform_interface.dart';

/// An implementation of [SquareMobilePaymentsSdkPlatform] that uses method channels.
class MethodChannelSquareMobilePaymentsSdk
    extends SquareMobilePaymentsSdkPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('square_mobile_payments_sdk');
  final _eventChannel = const EventChannel('square_mobile_payments_sdk/events');
  static StreamSubscription? _eventChannelSubscription;
  final Map<String, FutureOr<void> Function(ReaderChangedEvent event)>
      _readerCallbacks = {};

  MethodChannelSquareMobilePaymentsSdk() {
    if (_eventChannelSubscription != null) return;
    _eventChannelSubscription =
        _eventChannel.receiveBroadcastStream().listen((e) {
      final Map<String, dynamic> event = Map<String, dynamic>.from(e);
      switch (event["type"]) {
        case "readerChange":
          for (var callback in _readerCallbacks.values) {
            final payload = event["payload"];
            if (payload == null) continue;
            final changeEvent =
                ReaderChangedEvent.fromJson(castToMap(payload));
            callback(changeEvent);
          }
        default:
          return;
      }
    });
  }

  @override
  Future<String> getPlatformVersion() async {
    final version =
        await methodChannel.invokeMethod<String>('getPlatformVersion');
    if (version == null) {
      throw getChannelStateError("getPlatformVersion()", "returned null");
    }
    return version;
  }

  @override
  Future<String> getSdkVersion() async {
    // invokeMethod<String> does NOT enforce type conversion; the result may be null or another type.
    final version = await methodChannel.invokeMethod<String>('getSdkVersion');
    if (version == null) {
      throw getChannelStateError("getSdkVersion()", "returned null");
    }
    return version;
  }

  @override
  Future<Environment> getEnvironment() async {
    final envName = await methodChannel.invokeMethod<String>('getEnvironment');
    if (envName == null) {
      throw getChannelStateError("getEnvironment()", "returned null");
    }
    final environment = assertEnumValue(Environment.values, envName);
    return environment;
  }

  @override
  Future<AuthorizationState> getAuthorizationState() async {
    final authorizeStateName =
        await methodChannel.invokeMethod<String>('getAuthorizationState');
    if (authorizeStateName == null) {
      throw getChannelStateError("getAuthorizationState()", "returned null");
    }
    final authorizationState =
        assertEnumValue(AuthorizationState.values, authorizeStateName);
    return authorizationState;
  }

  @override
  Future<Location?> getAuthorizedLocation() async {
    //null if not authorized
    final location = await methodChannel.invokeMethod('getAuthorizedLocation');
    if (location != null) {
      return Location.fromJson(castToMap(location));
    }
    return null;
  }

  @override
  Future<void> authorize(String accessToken, String locationId) async {
    var params = <String, dynamic>{
      'accessToken': accessToken,
      'locationId': locationId,
    };
    try {
      await methodChannel.invokeMethod<void>('authorize', params);
    } on PlatformException catch (e) {
      throw AuthorizeError(e.code, e.message, e.details);
    }
  }

  @override
  Future<void> deauthorize() async {
    await methodChannel.invokeMethod('deauthorize');
  }

  @override
  Future<void> showMockReaderUI() async {
    try {
      await methodChannel.invokeMethod<void>('showMockReaderUI');
    } on PlatformException catch (e) {
      throw MockReaderUIError(e.code, e.message, e.details);
    }
  }

  @override
  Future<void> hideMockReaderUI() async {
    await methodChannel.invokeMethod<void>('hideMockReaderUI');
  }

  @override
  Future<void> showSettings() async {
    try {
      await methodChannel.invokeMethod<void>('showSettings');
    } on PlatformException catch (e) {
      throw SettingsError(e.code, e.message, e.details);
    }
  }

  @override
  Future<Payment> startPayment(PaymentParameters paymentParameters,
      PromptParameters promptParameters) async {
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

    try {
      final response =
          await methodChannel.invokeMethod<Map>('startPayment', params);
      if (response == null) {
        throw getChannelStateError("startPayment()", "returned null");
      }
      final paymentJson = castToMap(response);
      return Payment.fromJson(paymentJson);
    } on PlatformException catch (e) {
      throw PaymentError(e.code, e.message, e.details);
    }
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

  // **New Methods for Offline Payment Support**

  @override
  Future<bool> isOfflineProcessingAllowed() async {
    final result =
        await methodChannel.invokeMethod<bool>('isOfflineProcessingAllowed');
    if (result == null) {
      throw getChannelStateError(
          "isOfflineProcessingAllowed()", "returned null");
    }
    return result;
  }

  @override
  Future<Money?> getOfflineTotalStoredAmountLimit() async {
    final result = await methodChannel
        .invokeMethod<Map>('getOfflineTotalStoredAmountLimit');
    if (result == null) return null;
    return Money.fromJson(result.cast<String, Object?>());
  }

  @override
  Future<Money?> getOfflineTransactionAmountLimit() async {
    final result = await methodChannel
        .invokeMethod<Map>('getOfflineTransactionAmountLimit');
    if (result == null) return null;
    return Money.fromJson(result.cast<String, Object?>());
  }

  @override
  Future<List<OfflinePayment>> getPayments() async {
    try {
      final result = await methodChannel.invokeMethod<List>('getPayments');
      if (result == null) {
        throw getChannelStateError("getPayments()", "returned null");
      }
      return result
          .map((e) => OfflinePayment.fromJson(castToMap(e)))
          .toList();
    } on PlatformException catch (e) {
      throw OfflinePaymentQueueError(e.code, e.message, e.details);
    }
  }

  @override
  Future<Money?> getTotalStoredPaymentAmount() async {
    try {
      final result =
          await methodChannel.invokeMethod<Map>('getTotalStoredPaymentAmount');
      if (result == null) return null;
      return Money.fromJson(result.cast<String, Object?>());
    } on PlatformException catch (e) {
      throw OfflinePaymentQueueError(e.code, e.message, e.details);
    }
  }

  // **New Methods for Reader management Support**
  @override
  Future<List<ReaderInfo>> getReaders() async {
    final result = await methodChannel.invokeMethod<List>('getReaders');
    if (result == null) {
      throw StateError("getPayments() returned null, which should not happen.");
    }
    final readers =
        result.map((r) => ReaderInfo.fromJson(castToMap(r))).toList();
    return readers;
  }

  @override
  Future<ReaderInfo?> getReader(String id) async {
    final result =
        await methodChannel.invokeMethod<Map>('getReader', {"id": id});
    if (result == null) {
      return null;
    }
    return ReaderInfo.fromJson(castToMap(result));
  }

  @override
  Future<void> forget(String id) async {
    await methodChannel.invokeMethod('forget', {"id": id});
  }

  @override
  Future<void> blink(String id) async {
    await methodChannel.invokeMethod('blink', {"id": id});
  }

  @override
  Future<bool> isPairingInProgress() async {
    final result =
        await methodChannel.invokeMethod<bool>('isPairingInProgress');
    if (result == null) {
      throw StateError(
          "isPairingInProgress() returned null, which should not happen.");
    }
    return result;
  }

  @override
  ReaderCallbackReference setReaderChangedCallback(
      FutureOr<void> Function(ReaderChangedEvent event) callback) {
    String refId = _generateUniqueId();
    _startReaderCallbackIntent();
    _readerCallbacks.putIfAbsent(refId, () => callback);
    return ReaderCallbackReference(
        refId, () => removeReaderChangedCallback(refId));
  }

  void _startReaderCallbackIntent() {
    if (_readerCallbacks.isEmpty) {
      methodChannel.invokeMethod('setReaderChangedCallback');
    }
  }

  void _cancelReaderCallbackIntent() {
    if (_readerCallbacks.isEmpty) {
      methodChannel.invokeMethod('removeReaderChangedCallback');
    }
  }

  void removeReaderChangedCallback(String refId) {
    _readerCallbacks.remove(refId);
    _cancelReaderCallbackIntent();
  }

  @override
  PairingHandle pairReader(void Function(bool, String?) callback) {
    _startParing(callback);
    return PairingHandle(
      () {
        return _stopPairing();
      },
    );
  }

  void _startParing(void Function(bool, String? error) event) async {
    try {
      var result = await methodChannel.invokeMethod<bool>('pairReader');
      if (result == null) {
        event(false, null);
        return;
      }
      event(result, null);
    } catch (e) {
      event(false, "Pair failed");
    }
  }

  Future<StopResult> _stopPairing() async {
    var resultName = await methodChannel.invokeMethod<String>('stopPairing');
    if (resultName == null) {
      throw StateError(
          "stopRPairing() returned null, which should not happen.");
    }
    return StopResult.values.firstWhere((value) => value.name == resultName,
        orElse: () {
      throw ArgumentError("$resultName is not in ${StopResult.values}");
    });
  }
}

String _generateUniqueId() {
  return DateTime.now().millisecondsSinceEpoch.toString();
}

Map<String, Object?> castToMap(Map response) {
  Map<String, Object?> result = {};

  for (var entry in response.entries) {
    if (entry.key is String) {
      if (entry.value is Map) {
        result[entry.key as String] = castToMap(entry.value);
      } else {
        result[entry.key as String] = entry.value;
      }
    }
  }

  return result;
}
