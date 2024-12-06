part of 'models.dart';

enum AccountType {
  savings,
  checking,
  credit,
}

enum AdditionalPaymentMethodType {
  keyed,
}

enum AuthorizationState {
  authorized,
  authorizing,
  notAuthorized,
}

enum CardBrand {
  alipay,
  americanExpress,
  cashApp,
  chinaUnionPay,
  discover,
  discoverDiners,
  ebt,
  eftpos,
  felica,
  id,
  interac,
  jcb,
  mastercard,
  otherBrand,
  squareCapitalCard,
  squareGiftCard,
  suica,
  unknown,
  visa,
}

enum CardCoBrand {
  afterpay,
  clearpay,
  none,
  unknown,
}

enum CardPaymentStatus {
  authorized,
  captured,
  voided,
  failed,
  unknown,
}

enum CardInsertionStatus {
  inserted,
  notInserted,
  unknown,
}

enum CurrencyCode {
  aud,
  cad,
  eur,
  gbp,
  jpy,
  usd,
}

enum DelayAction {
  cancel,
  complete,
}

enum EntryMethod {
  keyed,
  swiped,
  emv,
  contactless,
  onFile,
  unknown,
}

enum Environment {
  production,
  sandbox,
}

enum PaymentStatus {
  approved,
  complete,
  canceled,
  failed,
  unknown,
}

// Note: in native SDKs the enums don't have the Mode suffix. In Dart, default is a reserved keyword
enum PromptMode {
  customMode,
  defaultMode,
}

enum SourceType {
  bankAccount,
  card,
  cash,
  externalSource, // Note external is a reserved keyword
  squareAccount,
  unknown,
  wallet,
}

// Reader Enums
enum ReaderBatteryLevel {
  criticallyLow,
  full,
  high,
  low,
  mid,
}

enum ReaderChange {
  batteryDidBeginCharging,
  batteryDidEndCharging,
  batteryLevelDidChange,
  cardInserted,
  cardRemoved,
  connectionDidFail,
  connectionStateDidChange,
  firmwareUpdateDidFail,
  firmwareUpdatePercentDidChange,
  stateDidChange,
}

enum ReaderConnectionFailureRecoverySuggestion {
  activateAccount,
  contactSupport,
  noSuggestion,
  retry,
}

enum ReaderConnectionState {
  connected,
  connecting,
  failedToConnect,
  notConnected,
}

enum ReaderFirmwareUpdateError {
  connectionTimeout,
  firmwareFailure,
  serverCallFailure,
  unknownError,
}

enum ReaderModel {
  contactlessAndChip,
  embedded,
  magstripe,
  stand,
  unknown,
}

enum ReaderConnectionFailureReason {
  deniedByServer,
  genericError,
  maxReadersConnected,
  networkTimeout,
  networkTransportError,
  notConnectedToInternet,
  readerTimeout,
  revokedByDevice,
  serverError,
  unknown,
}

enum ReaderState {
  connecting,
  disabled,
  disconnected,
  failedToConnect,
  ready,
  updatingFirmware,
}

// Offline Mode Enums
enum OfflinePaymentQueueError {
  notAuthorized,
  unexpected,
  unsupportedSandboxEnvironment,
}

enum OfflineStatus {
  failedToProcess,
  failedToUpload,
  processed,
  queued,
  unknown,
  uploaded,
}

enum ProcessingMode {
  autoDetect,
  offlineOnly,
  onlineOnly,
}
