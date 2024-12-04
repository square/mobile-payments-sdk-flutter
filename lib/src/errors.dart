// For documentation on the errors
// Visit https://developer.squareup.com/docs/mobile-payments-sdk/ios/handling-errors and
//       https://developer.squareup.com/docs/mobile-payments-sdk/android/handling-errors

part of 'models.dart';

enum AuthorizationError {
  AlreadyAuthorized,
  AlreadyInProgress,
  AuthorizationCodeAlreadyRedeemed,
  DeauthorizationInProgress,
  DeviceTimeDoesNotMatchServerTime,
  EmptyAccessToken,
  EmptyLocationId,
  ExpiredAuthorizationCode,
  InvalidAccessToken,
  InvalidAuthorizationCode,
  InvalidLocationId,
  LocationNotActivatedForCardProcessing,
  NoNetwork,
  Unexpected,
  UnsupportedCountry,
}

enum PaymentError {
  DeviceTimeDoesNotMatchServerTime,
  IdempotencyKeyReused,
  InvalidPaymentParameters,
  InvalidPaymentSource,
  LocationPermissionNeeded,
  MerchantNotOptedIntoOfflineProcessing,
  NoNetwork,
  NotAuthorized,
  OfflineStoredAmountExceeded,
  OfflineTransactionAmountExceeded,
  PaymentAlreadyInProgress,
  SandboxUnsupportedForOfflineProcessing,
  TimedOut,
  Unexpected,
  UnsupportedMode,
}

enum ReaderCardInfoError {
  CardError,
  NotAuthorized,
  ReaderError,
  StoreError,
  Unknown,
  UnsupportedEntryMethod,
}

enum ReaderPairingError {
  BluetoothDisabled,
  BluetoothNotReady,
  BluetoothNotSupported,
  BluetoothPermissionDenied,
  BluetoothPermissionNotDetermined,
  BluetoothPermissionRestricted,
  BluetoothPermissionUnknownCase,
  BluetoothResetting,
  BluetoothUnknownError,
  BondingRemoved,
  FailedToConnect,
  NotAuthorized,
  NotSupported,
  ReaderAlreadyPairing,
  TimedOut,
  UpdateRequired,
}