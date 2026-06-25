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
  noNetwork,
  unsupportedCountry,
  usageError,
  obsoleteSdk
}

enum MockReaderUIErrorCode {
  versionMismatch,
  invalidApplicationId,
  unexpected,
  notAuthorized,
  noScene,
  unavailable,
}

enum SettingsErrorCode {
  missingParameters,
  notRootViewController,
  usageError,
}

enum PaymentErrorCode {
  missingParameters,
  canceled,
  notAuthorized,
  timeout,
  // android
  locationServicesDisabled,
  deviceClockSkewed,
  usageError,
  consentNotProvided,
  obsoleteSdk,
  // ios
  notRootViewController,
  deviceTimeDoesNotMatchServerTime,
  invalidPaymentParameters,
  invalidPaymentSource,
  locationPermissionNeeded,
  merchantNotOptedIntoOfflineProcessing,
  noNetwork,
  offlineStoredAmountExceeded,
  offlineTransactionAmountExceeded,
  paymentAlreadyInProgress,
  sandboxUnsupportedForOfflineProcessing,
  unexpected,
  unsupportedMode,
  trackingConsentIsPending,
  paymentAttemptIdReused,
}

enum OfflinePaymentQueueErrorCode {
  notAuthorized,
  unexpected,
  unsupportedSandboxEnvironment,
  canceled,
  timeout,
  locationServicesDisabled,
  deviceClockSkewed,
  usageError,
  consentNotProvided,
  obsoleteSdk
}

enum ReaderCardInfoError {
  cardError,
  notAuthorized,
  readerError,
  storeError,
  unknown,
  unsupportedEntryMethod,
}

enum ReaderPairingErrorCode {
  bluetoothDisabled,
  bluetoothUnsupported,
  bluetoothPermissionDenied,
  bondFailed,
  notAuthorized,
  timeout,
  updateRequired,
  unknown,
  // android
  bluetoothAlreadyScanning,
  usageError,
  internalFirmwareError,
  // ios
  bluetoothNotReady,
  bluetoothPermissionNotDetermined,
  bluetoothPermissionRestricted,
  bluetoothPermissionUnknownCase,
  bluetoothResetting,
  bluetoothUnknownError,
  failedToConnect,
  sandboxNotSupported,
  simulatorNotSupported,
  readerAlreadyPairing
}

enum TapToPayErrorCode {
  alreadyLinked,
  banned,
  linkingFailed,
  linkingCanceled,
  invalidToken,
  notAuthorized,
  notAvailable,
  noNetwork,
  networkError,
  other,
  passcodeDisabled,
  unexpected,
  unsupportedOSVersion,
  unsupportedDeviceModel,
}
