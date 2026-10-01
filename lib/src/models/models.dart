import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'models.freezed.dart';
part 'models.g.dart';
part 'enums.dart';
part 'errors.dart';

/// Basic types

@freezed
abstract class Location with _$Location {
  const factory Location({
    required String id,
    @JsonKey(unknownEnumValue: CurrencyCode.unknown)
    required CurrencyCode currencyCode,
    required String name,
    String? merchantId,
    String? businessName,
    bool? cardProcessingActivated,
    String? mcc,
  }) = _Location;

  factory Location.fromJson(Map<String, Object?> json) =>
      _$LocationFromJson(json);
}

@freezed
abstract class Money with _$Money {
  const factory Money({
    required int amount,
    @JsonKey(unknownEnumValue: CurrencyCode.unknown)
    required CurrencyCode currencyCode,
  }) = _Money;

  factory Money.fromJson(Map<String, Object?> json) => _$MoneyFromJson(json);
}

/// Card objects

@freezed
abstract class Card with _$Card {
  const factory Card({
    @JsonKey(unknownEnumValue: CardBrand.unknown) required CardBrand brand,
    String? cardholderName,
    @JsonKey(unknownEnumValue: CardCoBrand.unknown) CardCoBrand? coBrand,
    @Default(0) num expirationMonth,
    @Default(0) num expirationYear,
    String? id,
    String? lastFourDigits,
    String? bin, // Android only
  }) = _Card;

  factory Card.fromJson(Map<String, Object?> json) => _$CardFromJson(json);
}

@freezed
abstract class OfflineCard with _$OfflineCard {
  const factory OfflineCard({
    @JsonKey(unknownEnumValue: CardBrand.unknown) required CardBrand brand,
    String? cardholderName,
    String? id,
    String? lastFourDigits,
    @JsonKey(unknownEnumValue: CardCoBrand.unknown)
    CardCoBrand? coBrand, // Android only
    num? expirationMonth, // Android only
    num? expirationYear, // Android only
    String? bin, // Android only
  }) = _OfflineCard;

  factory OfflineCard.fromJson(Map<String, Object?> json) =>
      _$OfflineCardFromJson(json);
}

@freezed
abstract class CardPaymentDetails with _$CardPaymentDetails {
  const factory CardPaymentDetails({
    String? applicationIdentifier,
    String? applicationName,
    String? authorizationCode,
    Card? card,
    @JsonKey(unknownEnumValue: EntryMethod.unknown)
    required EntryMethod entryMethod,
    @JsonKey(unknownEnumValue: CardPaymentStatus.unknown)
    required CardPaymentStatus status,
    CardSurchargeDetails? appliedCardSurchargeDetails,
    VerificationMethod? verificationMethod, // Android only
    VerificationResult? verificationResults, // Android only
  }) = _CardPaymentDetails;

  factory CardPaymentDetails.fromJson(Map<String, Object?> json) =>
      _$CardPaymentDetailsFromJson(json);
}

@freezed
abstract class CardSurchargeDetails with _$CardSurchargeDetails {
  const factory CardSurchargeDetails({
    required Money cardSurchargeMoney,
    Money? taxOnCardSurchargeMoney,
    Money? totalSurchargeMoney, // Android only
  }) = _CardSurchargeDetails;

  factory CardSurchargeDetails.fromJson(Map<String, Object?> json) =>
      _$CardSurchargeDetailsFromJson(json);
}

@freezed
abstract class CashPaymentDetails with _$CashPaymentDetails {
  const factory CashPaymentDetails({
    Money? buyerSuppliedMoney,
    Money? changeBackMoney,
  }) = _CashPaymentDetails;

  factory CashPaymentDetails.fromJson(Map<String, Object?> json) =>
      _$CashPaymentDetailsFromJson(json);
}

@freezed
abstract class CardInputMethods with _$CardInputMethods {
  const factory CardInputMethods({
    required int chip,
    required int contactless,
    required int swipe,
  }) = _CardInputMethods;

  factory CardInputMethods.fromJson(Map<String, Object?> json) =>
      _$CardInputMethodsFromJson(json);
}

/// Reader objects
@freezed
abstract class ReaderBatteryStatus with _$ReaderBatteryStatus {
  const factory ReaderBatteryStatus({
    required bool isCharging,
    ReaderBatteryLevel? level,
    required int percentage,
  }) = _ReaderBatteryStatus;

  factory ReaderBatteryStatus.fromJson(Map<String, Object?> json) =>
      _$ReaderBatteryStatusFromJson(json);
}

@freezed
abstract class ReaderStatusInfo with _$ReaderStatusInfo {
  const factory ReaderStatusInfo({
    required ReaderStatusInfoStatus status,
    ReaderStatusInfoUnavailableReason? unavailableReason,
    String? unavailableReasonTitle, // iOS only
    String? unavailableReasonDetail, // iOS only
  }) = _ReaderStatusInfo;

  factory ReaderStatusInfo.fromJson(Map<String, Object?> json) =>
      _$ReaderStatusInfoFromJson(json);
}

@freezed
abstract class ReaderFirmwareInfo with _$ReaderFirmwareInfo {
  const factory ReaderFirmwareInfo({
    String? failureReason, // iOS only
    required FirmwareUpdateStatus updateStatus,
    int? updatePercentage,
    DateTime? updateTime,
    String? version,
  }) = _ReaderFirmwareInfo;

  factory ReaderFirmwareInfo.fromJson(Map<String, Object?> json) =>
      _$ReaderFirmwareInfoFromJson(json);
}

@freezed
abstract class ReaderInfo with _$ReaderInfo {
  const factory ReaderInfo({
    ReaderBatteryStatus? batteryStatus,
    CardInsertionStatus? cardInsertionStatus, // iOS only
    @JsonKey(unknownEnumValue: ReaderConnectionType.unknown)
    required ReaderConnectionType connectionType,
    ReaderFirmwareInfo? firmwareInfo,
    required String id,
    required bool isBlinkable,
    bool? isConnectionRetryable, // iOS only
    required bool isForgettable,
    bool? isRebootable, // iOS only
    required ReaderModel model,
    required String name,
    String? serialNumber,
    required ReaderStatusInfo statusInfo,
    required List<CardInputMethod> supportedInputMethods,
  }) = _ReaderInfo;

  factory ReaderInfo.fromJson(Map<String, Object?> json) =>
      _$ReaderInfoFromJson(json);
}

@freezed
abstract class PromptParameters with _$PromptParameters {
  const factory PromptParameters({
    required List<AdditionalPaymentMethodType> additionalPaymentMethods,
    required PromptMode mode,
  }) = _PromptParameters;

  factory PromptParameters.fromJson(Map<String, Object?> json) =>
      _$PromptParametersFromJson(json);
}

/// Payments

/// A payment taken with the Mobile Payments SDK.
///
/// Mirrors the native hierarchy: every payment is either an [OnlinePayment] or
/// an [OfflinePayment]. Fields shared by both are available directly on
/// [Payment]; use a `switch` to reach the members specific to each variant.
@Freezed(unionKey: 'type')
sealed class Payment with _$Payment {
  const factory Payment.online({
    required Money amountMoney,
    Money? appFeeMoney,
    CashPaymentDetails? cashDetails,
    required DateTime createdAt,
    String? id,
    String? locationId,
    String? orderId,
    String? referenceId,
    @JsonKey(unknownEnumValue: SourceType.unknown)
    required SourceType sourceType,
    Money? tipMoney,
    required Money totalMoney,
    required DateTime updatedAt,
    CardPaymentDetails? cardDetails,
    String? customerId,
    String? note,
    @JsonKey(unknownEnumValue: PaymentStatus.unknown)
    required PaymentStatus status,
    String? teamMemberId,
    PaymentCapabilities? capabilities, // Android only
    List<PaymentProcessingFee>? processingFee, // Android only
    String? receiptNumber, // Android only
    String? receiptUrl, // Android only
    String? statementDescription, // Android only
  }) = OnlinePayment;

  const factory Payment.offline({
    required Money amountMoney,
    Money? appFeeMoney,
    CashPaymentDetails? cashDetails,
    required DateTime createdAt,
    String? id,
    String? locationId,
    String? orderId,
    String? referenceId,
    @JsonKey(unknownEnumValue: SourceType.unknown)
    required SourceType sourceType,
    Money? tipMoney,
    required Money totalMoney,
    required DateTime updatedAt,
    OfflineCardPaymentDetails? cardDetails,
    required String localId,
    @JsonKey(unknownEnumValue: OfflineStatus.unknown)
    required OfflineStatus status,
    DateTime? uploadedAt,
  }) = OfflinePayment;

  factory Payment.fromJson(Map<String, Object?> json) =>
      _$PaymentFromJson(json);
}

/// Android only. Returned on [OnlinePayment] from the Android SDK.
@freezed
abstract class PaymentCapabilities with _$PaymentCapabilities {
  const PaymentCapabilities._();

  const factory PaymentCapabilities({
    @Default(<String>[]) List<String> allCapabilities,
  }) = _PaymentCapabilities;

  factory PaymentCapabilities.fromJson(Map<String, Object?> json) =>
      _$PaymentCapabilitiesFromJson(json);

  static const String editTipAmountUp = 'EDIT_TIP_AMOUNT_UP';
  static const String editTipAmountDown = 'EDIT_TIP_AMOUNT_DOWN';
  static const String editAmountUp = 'EDIT_AMOUNT_UP';
  static const String editAmountDown = 'EDIT_AMOUNT_DOWN';

  bool get canEditTipUp => allCapabilities.contains(editTipAmountUp);
  bool get canEditTipDown => allCapabilities.contains(editTipAmountDown);
  bool get canEditAmountUp => allCapabilities.contains(editAmountUp);
  bool get canEditAmountDown => allCapabilities.contains(editAmountDown);
}

/// Android only. Returned on [OnlinePayment] from the Android SDK.
@freezed
abstract class PaymentProcessingFee with _$PaymentProcessingFee {
  const factory PaymentProcessingFee({
    required Money amountMoney,
    required DateTime effectiveAt,
    required ProcessingFeeType type,
  }) = _PaymentProcessingFee;

  factory PaymentProcessingFee.fromJson(Map<String, Object?> json) =>
      _$PaymentProcessingFeeFromJson(json);
}

@freezed
abstract class IdempotencyKeyData with _$IdempotencyKeyData {
  const factory IdempotencyKeyData({
    required String paymentAttemptId,
    required String idempotencyKey,
    required DateTime updatedAt,
  }) = _IdempotencyKeyData;

  factory IdempotencyKeyData.fromJson(Map<String, Object?> json) =>
      _$IdempotencyKeyDataFromJson(json);
}

@freezed
abstract class PaymentParameters with _$PaymentParameters {
  const factory PaymentParameters({
    bool? acceptPartialAuthorization,
    required bool allowCardSurcharge,
    required Money amountMoney,
    Money? appFeeMoney,
    bool? autocomplete,
    String? customerId,
    DelayAction? delayAction,
    num? delayDuration,
    required ProcessingMode processingMode,
    required String paymentAttemptId,
    String? locationId,
    String? note,
    String? orderId,
    String? referenceId,
    String? statementDescription,
    String? teamMemberId,
    Money? tipMoney,
  }) = _PaymentParameters;

  factory PaymentParameters.fromJson(Map<String, Object?> json) =>
      _$PaymentParametersFromJson(json);
}

@freezed
abstract class OfflineCardPaymentDetails with _$OfflineCardPaymentDetails {
  const factory OfflineCardPaymentDetails({
    String? applicationIdentifier,
    String? applicationName,
    OfflineCard? card,
    @JsonKey(unknownEnumValue: EntryMethod.unknown)
    required EntryMethod entryMethod,
  }) = _OfflineCardPaymentDetails;

  factory OfflineCardPaymentDetails.fromJson(Map<String, Object?> json) =>
      _$OfflineCardPaymentDetailsFromJson(json);
}

class ReaderCallbackReference extends CallbackReference {
  ReaderCallbackReference(super.id, super.clear);

  @Deprecated('Use id')
  String get redId => id;
}

class CallbackReference {
  final String id;
  final void Function() clear;

  CallbackReference(this.id, this.clear);
}

@freezed
abstract class ReaderChangedEvent with _$ReaderChangedEvent {
  const factory ReaderChangedEvent({
    required ReaderInfo reader,
    required ReaderChange change,
  }) = _ReaderChangedEvent;

  factory ReaderChangedEvent.fromJson(Map<String, Object?> json) =>
      _$ReaderChangedEventFromJson(json);
}

class PairingHandle {
  final Future<StopResult> Function() stop;

  PairingHandle._(this.stop);

  factory PairingHandle(Future<StopResult> Function() stop) {
    return PairingHandle._(stop);
  }
}

@freezed
abstract class TimeOfDay with _$TimeOfDay {
  const factory TimeOfDay({required int hour, required int minute}) =
      _TimeOfDay;
  factory TimeOfDay.fromJson(Map<String, Object?> json) =>
      _$TimeOfDayFromJson(json);
}

@freezed
abstract class ReaderSettings with _$ReaderSettings {
  const factory ReaderSettings({
    required bool isReducedChargingModeEnabled,
    TimeOfDay? preferredFirmwareUpdateTime,
  }) = _ReaderSettings;
  factory ReaderSettings.fromJson(Map<String, Object?> json) =>
      _$ReaderSettingsFromJson(json);
}

@freezed
abstract class SdkSettings with _$SdkSettings {
  const factory SdkSettings({
    required String version,
    required Environment environment,
    required String securityComplianceVersion,
  }) = _SdkSettings;

  factory SdkSettings.fromJson(Map<String, Object?> json) =>
      _$SdkSettingsFromJson(json);
}
