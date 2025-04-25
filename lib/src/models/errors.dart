// For documentation on the errors
// Visit https://developer.squareup.com/docs/mobile-payments-sdk/ios/handling-errors and
//       https://developer.squareup.com/docs/mobile-payments-sdk/android/handling-errors

part of 'models.dart';

enum AuthorizationErrorCode {
  missingParameters,
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
  unexpected,
  //android
  noNetwork,
  unsupportedCountry,
  usageError
}

enum MockReaderUIErrorCode {
  versionMismatch,
  invalidApplicationId,
  unexpected,
  notAuthorized,
  noScene,
  unknown,
}

enum SettingsErrorCode {
  notRootViewController,
  usageError,
}

enum PaymentErrorCode {
  missingParameters,
  notRootViewController,
  //ios
  deviceTimeDoesNotMatchServerTime,
  idempotencyKeyReused,
  invalidPaymentParameters,
  invalidPaymentSource,
  locationPermissionNeeded,
  merchantNotOptedIntoOfflineProcessing,
  noNetwork,
  noNetworkAndMerchantNotOptedIntoOfflineProcessing,
  notAuthorized,
  offlineStoredAmountExceeded,
  offlineTransactionAmountExceeded,
  paymentAlreadyInProgress,
  sandboxUnsupportedForOfflineProcessing,
  timedOut,
  unexpected,
  unsupportedMode,
  //android
  canceled,
  timeout,
  locationServicesDisabled,
  deviceClockSkewed,
  usageError,
  unknown
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
