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

factory Location.fromJson(Map<String, Object?> json)
      => _$LocationFromJson(json);
}

@freezed
class Money with _$Money {
  const factory Money({
    int? amount,
    required CurrencyCode currencyCode,
  }) = _Money;

  factory Money.fromJson(Map<String, Object?> json)
      => _$MoneyFromJson(json);
}

/// Card objects 

@freezed
class Card with _$Card {
  const factory Card({
    required CardBrand brand,
    required String cardholderName,
    required CardCoBrand coBrand,
    @Default(0) num expirationMonth,
    @Default(0) num expirationYear,
    required String id,
    required String lastFourDigits,
  }) = _Card;

  factory Card.fromJson(Map<String, Object?> json)
      => _$CardFromJson(json);
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

  factory CardPaymentDetails.fromJson(Map<String, Object?> json)
      => _$CardPaymentDetailsFromJson(json);
}

@freezed
class CardInputMethods with _$CardInputMethods {
  const factory CardInputMethods({
    required int chip,
    required int contactless,
    required int swipe,
  }) = _CardInputMethods;

  factory CardInputMethods.fromJson(Map<String, Object?> json)
      => _$CardInputMethodsFromJson(json);
}

/// Reader objects
@freezed
class ReaderBatteryStatus with _$ReaderBatteryStatus {
  const factory ReaderBatteryStatus({
    required int isCharging,
    required ReaderBatteryLevel level,
    @Default(0) num percentage,
  }) = _ReaderBatteryStatus;

  factory ReaderBatteryStatus.fromJson(Map<String, Object?> json)
      => _$ReaderBatteryStatusFromJson(json);
}

@freezed
class ReaderConnectionFailureInfo with _$ReaderConnectionFailureInfo {
  const factory ReaderConnectionFailureInfo({
    required ReaderConnectionFailureReason failureReason,
    required String localizedDescription,
    required String localizedTitle,
    required ReaderConnectionFailureRecoverySuggestion recoverySuggestion,
  }) = _ReaderConnectionFailureInfo;

  factory ReaderConnectionFailureInfo.fromJson(Map<String, Object?> json)
      => _$ReaderConnectionFailureInfoFromJson(json);
}

@freezed
class ReaderConnectionInfo with _$ReaderConnectionInfo {
  const factory ReaderConnectionInfo({
    required ReaderConnectionFailureInfo failureInfo,
    required ReaderConnectionState state,
  }) = _ReaderConnectionInfo;

  factory ReaderConnectionInfo.fromJson(Map<String, Object?> json)
      => _$ReaderConnectionInfoFromJson(json);
}

@freezed
class ReaderFirmwareInfo with _$ReaderFirmwareInfo {
  const factory ReaderFirmwareInfo({
    required String failureReason,
    required double updatePercentage,
    required String version,
  }) = _ReaderFirmwareInfo;

  factory ReaderFirmwareInfo.fromJson(Map<String, Object?> json)
      => _$ReaderFirmwareInfoFromJson(json);
}

@freezed
class ReaderInfo with _$ReaderInfo {
  const factory ReaderInfo({
    required ReaderBatteryStatus batteryStatus,
    required CardInsertionStatus cardInsertionStatus,
    required ReaderConnectionInfo connectionInfo,
    required ReaderFirmwareInfo firmwareInfo,
    @Default(0) num id,
    required int isBlinkable,
    required int isConnectionRetryable,
    required int isForgettable,
    required ReaderModel model,
    required String name,
    @Default("") String serialNumber,
    required ReaderState state,
    required List<CardInputMethods> supportedInputMethods,
  }) = _ReaderInfo;

  factory ReaderInfo.fromJson(Map<String, Object?> json)
      => _$ReaderInfoFromJson(json);
}

@freezed
class PromptParameters with _$PromptParameters {
  const factory PromptParameters({
    required List<AdditionalPaymentMethodType> additionalPaymentMethods,
    required PromptMode mode,
  }) = _PromptParameters;

  factory PromptParameters.fromJson(Map<String, Object?> json)
      => _$PromptParametersFromJson(json);
}

/// Payments

@freezed
class Payment with _$Payment {
  const factory Payment({
    required Money amountMoney,
    Money? appFeeMoney,
    required String createdAt,
    String? id,
    String? locationId,
    String? orderId,
    String? referenceId,
    required SourceType sourceType,
    Money? tipMoney,
    required Money totalMoney,
    required String updatedAt,
  }) = _Payment;

  factory Payment.fromJson(Map<String, Object?> json)
      => _$PaymentFromJson(json);
}

@freezed
class PaymentParameters with _$PaymentParameters {
  const factory PaymentParameters({
    int? acceptPartialAuthorization,
    required Money amountMoney, 
    Money? appFeeMoney, // Nullable
    int? autocomplete, // Nullable
    String? customerId, // Nullable
    DelayAction? delayAction, // Nullable
    num? delayDuration, // Nullable
    required String idempotencyKey, // Required
    String? locationId, // Nullable
    String? note, // Nullable
    String? orderId, // Nullable
    String? referenceId, // Nullable
    String? teamMemberId, // Nullable
    Money? tipMoney, // Nullable
  }) = _PaymentParameters;

  factory PaymentParameters.fromJson(Map<String, Object?> json)
      => _$PaymentParametersFromJson(json);
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

  factory OnlinePayment.fromJson(Map<String, Object?> json)
      => _$OnlinePaymentFromJson(json);
}
