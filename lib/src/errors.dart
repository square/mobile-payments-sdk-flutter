// For documentation on the errors
// Visit https://developer.squareup.com/docs/mobile-payments-sdk/ios/handling-errors and
//       https://developer.squareup.com/docs/mobile-payments-sdk/android/handling-errors

part of 'models.dart';

enum AuthorizationError {
  alreadyAuthorized,
  alreadyInProgress,
  authorizationCodeAlreadyRedeemed,
  deauthorizationInProgress,
  deviceTimeDoesNotMatchServerTime,
  emptyAccessToken,
  emptyLocationId,
  expiredAuthorizationCode,
  invalidAccessToken,
  invalidAuthorizationCode,
  invalidLocationId,
  locationNotActivatedForCardProcessing,
  noNetwork,
  unexpected,
  unsupportedCountry,
}

enum PaymentError {
  deviceTimeDoesNotMatchServerTime,
  idempotencyKeyReused,
  invalidPaymentParameters,
  invalidPaymentSource,
  locationPermissionNeeded,
  merchantNotOptedIntoOfflineProcessing,
  noNetwork,
  notAuthorized,
  offlineStoredAmountExceeded,
  offlineTransactionAmountExceeded,
  paymentAlreadyInProgress,
  sandboxUnsupportedForOfflineProcessing,
  timedOut,
  unexpected,
  unsupportedMode,
}

enum ReaderCardInfoError {
  cardError,
  notAuthorized,
  readerError,
  storeError,
  unknown,
  unsupportedEntryMethod,
}

enum ReaderPairingError {
  bluetoothDisabled,
  bluetoothNotReady,
  bluetoothNotSupported,
  bluetoothPermissionDenied,
  bluetoothPermissionNotDetermined,
  bluetoothPermissionRestricted,
  bluetoothPermissionUnknownCase,
  bluetoothResetting,
  bluetoothUnknownError,
  bondingRemoved,
  failedToConnect,
  notAuthorized,
  sandboxNotSupported,
  simulatorNotSupported,
  readerAlreadyPairing,
  timedOut,
  updateRequired,
}