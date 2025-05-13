import 'package:square_mobile_payments_sdk/square_mobile_payments_sdk.dart';

getChannelStateError(String tag, String desc) {
  return StateError(
      "$tag, $desc, which should not happen. It might indicate a problem with the channel native implementation");
}

getChannelArgumentError(
    String typeName, Object type, Iterable<String> validTypeNames) {
  return ArgumentError(
      "Invalid $typeName: Channel return '$type'. Expected one of: ${validTypeNames.join(', ')}");
}

T assertEnumValue<T extends Enum>(List<T> values, String name) {
  return values.firstWhere((e) => e.name == name,
      orElse: () => throw getChannelArgumentError(
          values.first.runtimeType.toString(),
          name,
          values.map((e) => e.name)));
}

class AuthorizeError implements Exception {
  late final AuthorizationErrorCode code;
  late final String message;
  final dynamic details;

  AuthorizeError(String code, String? message, [this.details]) {
    this.code = assertEnumValue(AuthorizationErrorCode.values, code);
    this.message = message ?? "Unknown Authorized Error";
  }

  @override
  String toString() {
    return 'AuthorizeError(code: $code, message: $message, details: $details)';
  }
}

class MockReaderUIError implements Exception {
  late final MockReaderUIErrorCode code;
  late final String message;
  final dynamic details;

  MockReaderUIError(String code, String? message, [this.details]) {
    this.code = assertEnumValue(MockReaderUIErrorCode.values, code);
    this.message = message ?? "Unknown MockReaderUI Error";
  }

  @override
  String toString() {
    return 'MockReaderUIError(code: $code, message: $message, details: $details)';
  }
}

class SettingsError implements Exception {
  late final SettingsErrorCode code;
  late final String message;
  final dynamic details;

  SettingsError(String code, String? message, [this.details]) {
    this.code = assertEnumValue(SettingsErrorCode.values, code);
    this.message = message ?? "Unknown Settings Error";
  }

  @override
  String toString() {
    return 'SettingsError(code: $code, message: $message, details: $details)';
  }
}

class PaymentError implements Exception {
  late final PaymentErrorCode code;
  late final String message;
  final dynamic details;

  PaymentError(String code, String? message, [this.details]) {
    this.code = assertEnumValue(PaymentErrorCode.values, code);
    this.message = message ?? "Unknown Payment Error";
  }

  @override
  String toString() {
    return 'PaymentError(code: $code, message: $message, details: $details)';
  }
}

class OfflinePaymentQueueError implements Exception {
  late final OfflinePaymentQueueErrorCode code;
  late final String message;
  final dynamic details;

  OfflinePaymentQueueError(String code, String? message, [this.details]) {
    this.code = assertEnumValue(OfflinePaymentQueueErrorCode.values, code);
    this.message = message ?? "Unknown Offline Payment Queue Error";
  }

  @override
  String toString() {
    return 'OfflinePaymentQueueError(code: $code, message: $message, details: $details)';
  }
}
