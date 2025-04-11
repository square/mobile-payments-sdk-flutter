import 'package:square_mobile_payments_sdk/square_mobile_payments_sdk.dart';

getChannelStateError(String tag, String desc) {
  return StateError(
      "$tag, $desc, which should not happen. It might indicate a problem with the native implementation");
}

getChannelArgumentError(
    String typeName, Object type, Iterable<String> validTypeNames) {
  return ArgumentError(
      "Invalid $typeName: '$type'. Expected one of: ${validTypeNames.join(', ')}");
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
