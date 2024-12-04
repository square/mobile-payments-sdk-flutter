part of 'models.dart';

enum AccountType {
  Savings,
  Checking,
  Credit,
}

enum AdditionalPaymentMethodType {
  Keyed,
}

enum AuthorizationState {
  Authorized,
  Authorizing,
  NotAuthorized,
}

enum CardBrand {
  Alipay,
  AmericanExpress,
  CashApp,
  ChinaUnionPay,
  Discover,
  DiscoverDiners,
  Ebt,
  Eftpos,
  Felica,
  Id,
  Interac,
  Jcb,
  Mastercard,
  OtherBrand,
  SquareCapitalCard,
  SquareGiftCard,
  Suica,
  Unknown,
  Visa,
}

enum CardCoBrand {
  Afterpay,
  Clearpay,
  None,
  Unknown,
}

enum CardPaymentStatus {
  Authorized,
  Captured,
  Voided,
  Failed,
  Unknown,
}

enum CardInsertionStatus {
  Inserted,
  NotInserted,
  Unknown,
}

enum CurrencyCode {
  Aud,
  Cad,
  Eur,
  Gbp,
  Jpy,
  Usd,
}

enum DelayAction {
  Cancel,
  Complete,
}

enum EntryMethod {
  Keyed,
  Swiped,
  Emv,
  Contactless,
  OnFile,
  Unknown,
}

enum Environment {
  Production,
  Sandbox,
}

enum PaymentStatus {
  Approved,
  Complete,
  Canceled,
  Failed,
  Unknown,
}

enum PromptMode {
  Custom,
  Default,
}

enum SourceType {
  BankAccount,
  Card,
  Cash,
  External,
  SquareAccount,
  Unknown,
  Wallet,
}

// Reader Enums
enum ReaderBatteryLevel {
  CriticallyLow,
  Full,
  High,
  Low,
  Mid,
}

enum ReaderChange {
  BatteryDidBeginCharging,
  BatteryDidEndCharging,
  BatteryLevelDidChange,
  CardInserted,
  CardRemoved,
  ConnectionDidFail,
  ConnectionStateDidChange,
  FirmwareUpdateDidFail,
  FirmwareUpdatePercentDidChange,
  StateDidChange,
}

enum ReaderConnectionFailureRecoverySuggestion {
  ActivateAccount,
  ContactSupport,
  NoSuggestion,
  Retry,
}

enum ReaderConnectionState {
  Connected,
  Connecting,
  FailedToConnect,
  NotConnected,
}

enum ReaderFirmwareUpdateError {
  ConnectionTimeout,
  FirmwareFailure,
  ServerCallFailure,
  UnknownError,
}

enum ReaderModel {
  ContactlessAndChip,
  Embedded,
  Magstripe,
  Stand,
  Unknown,
}

enum ReaderConnectionFailureReason {
  DeniedByServer,
  GenericError,
  MaxReadersConnected,
  NetworkTimeout,
  NetworkTransportError,
  NotConnectedToInternet,
  ReaderTimeout,
  RevokedByDevice,
  ServerError,
  Unknown,
}

enum ReaderState {
  Connecting,
  Disabled,
  Disconnected,
  FailedToConnect,
  Ready,
  UpdatingFirmware,
}

// Offline Mode Enums
enum OfflinePaymentQueueError {
  NotAuthorized,
  Unexpected,
  UnsupportedSandboxEnvironment,
}

enum OfflineStatus {
  FailedToProcess,
  FailedToUpload,
  Processed,
  Queued,
  Unknown,
  Uploaded,
}

enum ProcessingMode {
  AutoDetect,
  OfflineOnly,
  OnlineOnly,
}
