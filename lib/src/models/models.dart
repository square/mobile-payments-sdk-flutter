import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'models.freezed.dart';
part 'models.g.dart';
part 'enums.dart';
part 'errors.dart';

/// Basic types

@freezed
class Location with _$Location {
  const factory Location({
    required String id,
    required CurrencyCode currencyCode,
    required String name,
  }) = _Location;

  factory Location.fromJson(Map<String, Object?> json) =>
      _$LocationFromJson(json);
}

@freezed
class Money with _$Money {
  const factory Money({
    int? amount,
    required CurrencyCode currencyCode,
  }) = _Money;

  factory Money.fromJson(Map<String, Object?> json) => _$MoneyFromJson(json);
}

/// Card objects

@freezed
class Card with _$Card {
  const factory Card({
    required CardBrand brand,
    String? cardholderName,
    required CardCoBrand coBrand,
    @Default(0) num expirationMonth,
    @Default(0) num expirationYear,
    String? id,
    required String lastFourDigits,
  }) = _Card;

  factory Card.fromJson(Map<String, Object?> json) => _$CardFromJson(json);
}

@freezed
class OfflineCard with _$OfflineCard {
  const factory OfflineCard({
    required CardBrand brand,
    String? cardholderName,
    String? id,
    String? lastFourDigits,
  }) = _OfflineCard;

  factory OfflineCard.fromJson(Map<String, Object?> json) =>
      _$OfflineCardFromJson(json);
}

@freezed
class CardPaymentDetails with _$CardPaymentDetails {
  const factory CardPaymentDetails({
    required String applicationIdentifier,
    required String applicationName,
    required String authorizationCode,
    required Card card,
    required EntryMethod entryMethod,
    required CardPaymentStatus status,
  }) = _CardPaymentDetails;

  factory CardPaymentDetails.fromJson(Map<String, Object?> json) =>
      _$CardPaymentDetailsFromJson(json);
}

@freezed
class CardInputMethods with _$CardInputMethods {
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
class ReaderBatteryStatus with _$ReaderBatteryStatus {
  const factory ReaderBatteryStatus({
    required bool isCharging,
    ReaderBatteryLevel? level,
    required int percentage,
  }) = _ReaderBatteryStatus;

  factory ReaderBatteryStatus.fromJson(Map<String, Object?> json) =>
      _$ReaderBatteryStatusFromJson(json);
}

@freezed
class ReaderStatusInfo with _$ReaderStatusInfo{
  const factory ReaderStatusInfo({
    required ReaderStatusInfoStatus status,
    ReaderStatusInfoUnavailableReason? unavailableReason,
  }) = _ReaderStatusInfo;

  factory ReaderStatusInfo.fromJson(Map<String, Object?> json) =>
      _$ReaderStatusInfoFromJson(json);
}

@freezed
class ReaderFirmwareInfo with _$ReaderFirmwareInfo {
  const factory ReaderFirmwareInfo({
    String? failureReason,
    int? updatePercentage,
    String? version,
  }) = _ReaderFirmwareInfo;

  factory ReaderFirmwareInfo.fromJson(Map<String, Object?> json) =>
      _$ReaderFirmwareInfoFromJson(json);
}

@freezed
class ReaderInfo with _$ReaderInfo {
  const factory ReaderInfo({
    ReaderBatteryStatus? batteryStatus,
    CardInsertionStatus? cardInsertionStatus,
    ReaderFirmwareInfo? firmwareInfo,
    required String id,
    required bool isBlinkable,
    bool? isConnectionRetryable,
    required bool isForgettable,
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
class PromptParameters with _$PromptParameters {
  const factory PromptParameters({
    required List<AdditionalPaymentMethodType> additionalPaymentMethods,
    required PromptMode mode,
  }) = _PromptParameters;

  factory PromptParameters.fromJson(Map<String, Object?> json) =>
      _$PromptParametersFromJson(json);
}

/// Payments

@freezed
class Payment with _$Payment {
  const factory Payment({
    required Money amountMoney,
    Money? appFeeMoney,
    required DateTime createdAt,
    String? id,
    String? locationId,
    String? orderId,
    String? referenceId,
    required SourceType sourceType,
    Money? tipMoney,
    required Money totalMoney,
    required DateTime updatedAt,
  }) = _Payment;

  factory Payment.fromJson(Map<String, Object?> json) =>
      _$PaymentFromJson(json);
}

@Freezed(unionKey: 'type') // 👈 needed because we have two constructors
class PaymentParameters with _$PaymentParameters {
  /// ✅ Current / recommended constructor
  @FreezedUnionValue('current')
  const factory PaymentParameters({
    int? acceptPartialAuthorization,
    required Money amountMoney,
    Money? appFeeMoney,
    bool? autocomplete,
    String? customerId,
    DelayAction? delayAction,
    num? delayDuration,
    required num processingMode,
    required String paymentAttemptId, 
    String? locationId,
    String? note,
    String? orderId,
    String? referenceId,
    String? teamMemberId,
    Money? tipMoney,
  }) = _PaymentParameters;

  /// ⚠️ Deprecated constructor 
  @Deprecated('Use the constructor with paymentAttemptId instead.')
  @FreezedUnionValue('legacy')
  const factory PaymentParameters.legacy({
    int? acceptPartialAuthorization,
    required Money amountMoney,
    Money? appFeeMoney,
    bool? autocomplete,
    String? customerId,
    DelayAction? delayAction,
    num? delayDuration,
    required num processingMode,
    required String idempotencyKey, 
    String? locationId,
    String? note,
    String? orderId,
    String? referenceId,
    String? teamMemberId,
    Money? tipMoney,
  }) = _LegacyPaymentParameters;

  factory PaymentParameters.fromJson(Map<String, Object?> json) =>
      _$PaymentParametersFromJson(json);
}

@freezed
class OnlinePayment with _$OnlinePayment {
  const factory OnlinePayment({
    required Money amountMoney,
    required Money appFeeMoney,
    required CardPaymentDetails cardDetails,
    required String createdAt,
    required String customerId,
    required String id,
    required String locationId,
    required String note,
    required String orderId,
    required String referenceId,
    required PaymentStatus status,
    required Money tipMoney,
    required Money totalMoney,
    required String updatedAt,
  }) = _OnlinePayment;

  factory OnlinePayment.fromJson(Map<String, Object?> json) =>
      _$OnlinePaymentFromJson(json);
}

@freezed
class OfflinePayment with _$OfflinePayment {
  const factory OfflinePayment({
    required Money amountMoney,
    Money? appFeeMoney,
    required DateTime createdAt,
    String? id,
    String? locationId,
    String? orderId,
    String? referenceId,
    Money? tipMoney,
    required Money totalMoney,
    required DateTime updatedAt,
    OfflineCardPaymentDetails? cardDetails,
    required String localId,
    required OfflineStatus status,
    DateTime? uploadedAt,
  }) = _OfflinePayment;

  factory OfflinePayment.fromJson(Map<String, dynamic> json) =>
      _$OfflinePaymentFromJson(json);
}

@freezed
class OfflineCardPaymentDetails with _$OfflineCardPaymentDetails {
  const factory OfflineCardPaymentDetails({
    String? applicationIdentifier,
    String? applicationName,
    OfflineCard? card,
    required EntryMethod entryMethod,
  }) = _OfflineCardPaymentDetails;

  factory OfflineCardPaymentDetails.fromJson(Map<String, Object?> json) =>
      _$OfflineCardPaymentDetailsFromJson(json);
}

class ReaderCallbackReference {
  final String redId;
  final void Function() clear;

  ReaderCallbackReference._(this.redId, this.clear);

  factory ReaderCallbackReference(String redId, void Function() clear) {
    return ReaderCallbackReference._(redId, clear);
  }
}

@freezed
class ReaderChangedEvent with _$ReaderChangedEvent {
  const factory ReaderChangedEvent(
      {required ReaderInfo reader,
      required ReaderChange change}) = _ReaderChangedEvent;

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
