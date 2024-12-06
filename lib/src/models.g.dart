// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LocationImpl _$$LocationImplFromJson(Map<String, dynamic> json) =>
    _$LocationImpl(
      id: json['id'] as String,
      currencyCode: $enumDecode(_$CurrencyCodeEnumMap, json['currencyCode']),
      name: json['name'] as String,
    );

Map<String, dynamic> _$$LocationImplToJson(_$LocationImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'currencyCode': _$CurrencyCodeEnumMap[instance.currencyCode]!,
      'name': instance.name,
    };

const _$CurrencyCodeEnumMap = {
  CurrencyCode.aud: 'aud',
  CurrencyCode.cad: 'cad',
  CurrencyCode.eur: 'eur',
  CurrencyCode.gbp: 'gbp',
  CurrencyCode.jpy: 'jpy',
  CurrencyCode.usd: 'usd',
};

_$MoneyImpl _$$MoneyImplFromJson(Map<String, dynamic> json) => _$MoneyImpl(
      amount: (json['amount'] as num?)?.toInt(),
      currencyCode: $enumDecode(_$CurrencyCodeEnumMap, json['currencyCode']),
    );

Map<String, dynamic> _$$MoneyImplToJson(_$MoneyImpl instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'currencyCode': _$CurrencyCodeEnumMap[instance.currencyCode]!,
    };

_$CardImpl _$$CardImplFromJson(Map<String, dynamic> json) => _$CardImpl(
      brand: $enumDecode(_$CardBrandEnumMap, json['brand']),
      cardholderName: json['cardholderName'] as String,
      coBrand: $enumDecode(_$CardCoBrandEnumMap, json['coBrand']),
      expirationMonth: json['expirationMonth'] as num? ?? 0,
      expirationYear: json['expirationYear'] as num? ?? 0,
      id: json['id'] as String,
      lastFourDigits: json['lastFourDigits'] as String,
    );

Map<String, dynamic> _$$CardImplToJson(_$CardImpl instance) =>
    <String, dynamic>{
      'brand': _$CardBrandEnumMap[instance.brand]!,
      'cardholderName': instance.cardholderName,
      'coBrand': _$CardCoBrandEnumMap[instance.coBrand]!,
      'expirationMonth': instance.expirationMonth,
      'expirationYear': instance.expirationYear,
      'id': instance.id,
      'lastFourDigits': instance.lastFourDigits,
    };

const _$CardBrandEnumMap = {
  CardBrand.alipay: 'alipay',
  CardBrand.americanExpress: 'americanExpress',
  CardBrand.cashApp: 'cashApp',
  CardBrand.chinaUnionPay: 'chinaUnionPay',
  CardBrand.discover: 'discover',
  CardBrand.discoverDiners: 'discoverDiners',
  CardBrand.ebt: 'ebt',
  CardBrand.eftpos: 'eftpos',
  CardBrand.felica: 'felica',
  CardBrand.id: 'id',
  CardBrand.interac: 'interac',
  CardBrand.jcb: 'jcb',
  CardBrand.mastercard: 'mastercard',
  CardBrand.otherBrand: 'otherBrand',
  CardBrand.squareCapitalCard: 'squareCapitalCard',
  CardBrand.squareGiftCard: 'squareGiftCard',
  CardBrand.suica: 'suica',
  CardBrand.unknown: 'unknown',
  CardBrand.visa: 'visa',
};

const _$CardCoBrandEnumMap = {
  CardCoBrand.afterpay: 'afterpay',
  CardCoBrand.clearpay: 'clearpay',
  CardCoBrand.none: 'none',
  CardCoBrand.unknown: 'unknown',
};

_$CardPaymentDetailsImpl _$$CardPaymentDetailsImplFromJson(
        Map<String, dynamic> json) =>
    _$CardPaymentDetailsImpl(
      applicationIdentifier: json['applicationIdentifier'] as String,
      applicationName: json['applicationName'] as String,
      authorizationCode: json['authorizationCode'] as String,
      card: Card.fromJson(json['card'] as Map<String, dynamic>),
      entryMethod: $enumDecode(_$EntryMethodEnumMap, json['entryMethod']),
      status: $enumDecode(_$CardPaymentStatusEnumMap, json['status']),
    );

Map<String, dynamic> _$$CardPaymentDetailsImplToJson(
        _$CardPaymentDetailsImpl instance) =>
    <String, dynamic>{
      'applicationIdentifier': instance.applicationIdentifier,
      'applicationName': instance.applicationName,
      'authorizationCode': instance.authorizationCode,
      'card': instance.card,
      'entryMethod': _$EntryMethodEnumMap[instance.entryMethod]!,
      'status': _$CardPaymentStatusEnumMap[instance.status]!,
    };

const _$EntryMethodEnumMap = {
  EntryMethod.keyed: 'keyed',
  EntryMethod.swiped: 'swiped',
  EntryMethod.emv: 'emv',
  EntryMethod.contactless: 'contactless',
  EntryMethod.onFile: 'onFile',
  EntryMethod.unknown: 'unknown',
};

const _$CardPaymentStatusEnumMap = {
  CardPaymentStatus.authorized: 'authorized',
  CardPaymentStatus.captured: 'captured',
  CardPaymentStatus.voided: 'voided',
  CardPaymentStatus.failed: 'failed',
  CardPaymentStatus.unknown: 'unknown',
};

_$CardInputMethodsImpl _$$CardInputMethodsImplFromJson(
        Map<String, dynamic> json) =>
    _$CardInputMethodsImpl(
      chip: (json['chip'] as num).toInt(),
      contactless: (json['contactless'] as num).toInt(),
      swipe: (json['swipe'] as num).toInt(),
    );

Map<String, dynamic> _$$CardInputMethodsImplToJson(
        _$CardInputMethodsImpl instance) =>
    <String, dynamic>{
      'chip': instance.chip,
      'contactless': instance.contactless,
      'swipe': instance.swipe,
    };

_$ReaderBatteryStatusImpl _$$ReaderBatteryStatusImplFromJson(
        Map<String, dynamic> json) =>
    _$ReaderBatteryStatusImpl(
      isCharging: (json['isCharging'] as num).toInt(),
      level: $enumDecode(_$ReaderBatteryLevelEnumMap, json['level']),
      percentage: json['percentage'] as num? ?? 0,
    );

Map<String, dynamic> _$$ReaderBatteryStatusImplToJson(
        _$ReaderBatteryStatusImpl instance) =>
    <String, dynamic>{
      'isCharging': instance.isCharging,
      'level': _$ReaderBatteryLevelEnumMap[instance.level]!,
      'percentage': instance.percentage,
    };

const _$ReaderBatteryLevelEnumMap = {
  ReaderBatteryLevel.criticallyLow: 'criticallyLow',
  ReaderBatteryLevel.full: 'full',
  ReaderBatteryLevel.high: 'high',
  ReaderBatteryLevel.low: 'low',
  ReaderBatteryLevel.mid: 'mid',
};

_$ReaderConnectionFailureInfoImpl _$$ReaderConnectionFailureInfoImplFromJson(
        Map<String, dynamic> json) =>
    _$ReaderConnectionFailureInfoImpl(
      failureReason: $enumDecode(
          _$ReaderConnectionFailureReasonEnumMap, json['failureReason']),
      localizedDescription: json['localizedDescription'] as String,
      localizedTitle: json['localizedTitle'] as String,
      recoverySuggestion: $enumDecode(
          _$ReaderConnectionFailureRecoverySuggestionEnumMap,
          json['recoverySuggestion']),
    );

Map<String, dynamic> _$$ReaderConnectionFailureInfoImplToJson(
        _$ReaderConnectionFailureInfoImpl instance) =>
    <String, dynamic>{
      'failureReason':
          _$ReaderConnectionFailureReasonEnumMap[instance.failureReason]!,
      'localizedDescription': instance.localizedDescription,
      'localizedTitle': instance.localizedTitle,
      'recoverySuggestion': _$ReaderConnectionFailureRecoverySuggestionEnumMap[
          instance.recoverySuggestion]!,
    };

const _$ReaderConnectionFailureReasonEnumMap = {
  ReaderConnectionFailureReason.deniedByServer: 'deniedByServer',
  ReaderConnectionFailureReason.genericError: 'genericError',
  ReaderConnectionFailureReason.maxReadersConnected: 'maxReadersConnected',
  ReaderConnectionFailureReason.networkTimeout: 'networkTimeout',
  ReaderConnectionFailureReason.networkTransportError: 'networkTransportError',
  ReaderConnectionFailureReason.notConnectedToInternet:
      'notConnectedToInternet',
  ReaderConnectionFailureReason.readerTimeout: 'readerTimeout',
  ReaderConnectionFailureReason.revokedByDevice: 'revokedByDevice',
  ReaderConnectionFailureReason.serverError: 'serverError',
  ReaderConnectionFailureReason.unknown: 'unknown',
};

const _$ReaderConnectionFailureRecoverySuggestionEnumMap = {
  ReaderConnectionFailureRecoverySuggestion.activateAccount: 'activateAccount',
  ReaderConnectionFailureRecoverySuggestion.contactSupport: 'contactSupport',
  ReaderConnectionFailureRecoverySuggestion.noSuggestion: 'noSuggestion',
  ReaderConnectionFailureRecoverySuggestion.retry: 'retry',
};

_$ReaderConnectionInfoImpl _$$ReaderConnectionInfoImplFromJson(
        Map<String, dynamic> json) =>
    _$ReaderConnectionInfoImpl(
      failureInfo: ReaderConnectionFailureInfo.fromJson(
          json['failureInfo'] as Map<String, dynamic>),
      state: $enumDecode(_$ReaderConnectionStateEnumMap, json['state']),
    );

Map<String, dynamic> _$$ReaderConnectionInfoImplToJson(
        _$ReaderConnectionInfoImpl instance) =>
    <String, dynamic>{
      'failureInfo': instance.failureInfo,
      'state': _$ReaderConnectionStateEnumMap[instance.state]!,
    };

const _$ReaderConnectionStateEnumMap = {
  ReaderConnectionState.connected: 'connected',
  ReaderConnectionState.connecting: 'connecting',
  ReaderConnectionState.failedToConnect: 'failedToConnect',
  ReaderConnectionState.notConnected: 'notConnected',
};

_$ReaderFirmwareInfoImpl _$$ReaderFirmwareInfoImplFromJson(
        Map<String, dynamic> json) =>
    _$ReaderFirmwareInfoImpl(
      failureReason: json['failureReason'] as String,
      updatePercentage: (json['updatePercentage'] as num).toDouble(),
      version: json['version'] as String,
    );

Map<String, dynamic> _$$ReaderFirmwareInfoImplToJson(
        _$ReaderFirmwareInfoImpl instance) =>
    <String, dynamic>{
      'failureReason': instance.failureReason,
      'updatePercentage': instance.updatePercentage,
      'version': instance.version,
    };

_$ReaderInfoImpl _$$ReaderInfoImplFromJson(Map<String, dynamic> json) =>
    _$ReaderInfoImpl(
      batteryStatus: ReaderBatteryStatus.fromJson(
          json['batteryStatus'] as Map<String, dynamic>),
      cardInsertionStatus: $enumDecode(
          _$CardInsertionStatusEnumMap, json['cardInsertionStatus']),
      connectionInfo: ReaderConnectionInfo.fromJson(
          json['connectionInfo'] as Map<String, dynamic>),
      firmwareInfo: ReaderFirmwareInfo.fromJson(
          json['firmwareInfo'] as Map<String, dynamic>),
      id: json['id'] as num? ?? 0,
      isBlinkable: (json['isBlinkable'] as num).toInt(),
      isConnectionRetryable: (json['isConnectionRetryable'] as num).toInt(),
      isForgettable: (json['isForgettable'] as num).toInt(),
      model: $enumDecode(_$ReaderModelEnumMap, json['model']),
      name: json['name'] as String,
      serialNumber: json['serialNumber'] as String? ?? "",
      state: $enumDecode(_$ReaderStateEnumMap, json['state']),
      supportedInputMethods: (json['supportedInputMethods'] as List<dynamic>)
          .map((e) => CardInputMethods.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ReaderInfoImplToJson(_$ReaderInfoImpl instance) =>
    <String, dynamic>{
      'batteryStatus': instance.batteryStatus,
      'cardInsertionStatus':
          _$CardInsertionStatusEnumMap[instance.cardInsertionStatus]!,
      'connectionInfo': instance.connectionInfo,
      'firmwareInfo': instance.firmwareInfo,
      'id': instance.id,
      'isBlinkable': instance.isBlinkable,
      'isConnectionRetryable': instance.isConnectionRetryable,
      'isForgettable': instance.isForgettable,
      'model': _$ReaderModelEnumMap[instance.model]!,
      'name': instance.name,
      'serialNumber': instance.serialNumber,
      'state': _$ReaderStateEnumMap[instance.state]!,
      'supportedInputMethods': instance.supportedInputMethods,
    };

const _$CardInsertionStatusEnumMap = {
  CardInsertionStatus.inserted: 'inserted',
  CardInsertionStatus.notInserted: 'notInserted',
  CardInsertionStatus.unknown: 'unknown',
};

const _$ReaderModelEnumMap = {
  ReaderModel.contactlessAndChip: 'contactlessAndChip',
  ReaderModel.embedded: 'embedded',
  ReaderModel.magstripe: 'magstripe',
  ReaderModel.stand: 'stand',
  ReaderModel.unknown: 'unknown',
};

const _$ReaderStateEnumMap = {
  ReaderState.connecting: 'connecting',
  ReaderState.disabled: 'disabled',
  ReaderState.disconnected: 'disconnected',
  ReaderState.failedToConnect: 'failedToConnect',
  ReaderState.ready: 'ready',
  ReaderState.updatingFirmware: 'updatingFirmware',
};

_$PromptParametersImpl _$$PromptParametersImplFromJson(
        Map<String, dynamic> json) =>
    _$PromptParametersImpl(
      additionalPaymentMethods:
          (json['additionalPaymentMethods'] as List<dynamic>)
              .map((e) => $enumDecode(_$AdditionalPaymentMethodTypeEnumMap, e))
              .toList(),
      mode: $enumDecode(_$PromptModeEnumMap, json['mode']),
    );

Map<String, dynamic> _$$PromptParametersImplToJson(
        _$PromptParametersImpl instance) =>
    <String, dynamic>{
      'additionalPaymentMethods': instance.additionalPaymentMethods
          .map((e) => _$AdditionalPaymentMethodTypeEnumMap[e]!)
          .toList(),
      'mode': _$PromptModeEnumMap[instance.mode]!,
    };

const _$AdditionalPaymentMethodTypeEnumMap = {
  AdditionalPaymentMethodType.keyed: 'keyed',
};

const _$PromptModeEnumMap = {
  PromptMode.customMode: 'customMode',
  PromptMode.defaultMode: 'defaultMode',
};

_$PaymentImpl _$$PaymentImplFromJson(Map<String, dynamic> json) =>
    _$PaymentImpl(
      amountMoney: Money.fromJson(json['amountMoney'] as Map<String, dynamic>),
      appFeeMoney: Money.fromJson(json['appFeeMoney'] as Map<String, dynamic>),
      createdAt: json['createdAt'] as String,
      id: json['id'] as String,
      locationId: json['locationId'] as String,
      orderId: json['orderId'] as String,
      referenceId: json['referenceId'] as String,
      sourceType: $enumDecode(_$SourceTypeEnumMap, json['sourceType']),
      tipMoney: Money.fromJson(json['tipMoney'] as Map<String, dynamic>),
      totalMoney: Money.fromJson(json['totalMoney'] as Map<String, dynamic>),
      updatedAt: json['updatedAt'] as String,
    );

Map<String, dynamic> _$$PaymentImplToJson(_$PaymentImpl instance) =>
    <String, dynamic>{
      'amountMoney': instance.amountMoney,
      'appFeeMoney': instance.appFeeMoney,
      'createdAt': instance.createdAt,
      'id': instance.id,
      'locationId': instance.locationId,
      'orderId': instance.orderId,
      'referenceId': instance.referenceId,
      'sourceType': _$SourceTypeEnumMap[instance.sourceType]!,
      'tipMoney': instance.tipMoney,
      'totalMoney': instance.totalMoney,
      'updatedAt': instance.updatedAt,
    };

const _$SourceTypeEnumMap = {
  SourceType.bankAccount: 'bankAccount',
  SourceType.card: 'card',
  SourceType.cash: 'cash',
  SourceType.externalSource: 'externalSource',
  SourceType.squareAccount: 'squareAccount',
  SourceType.unknown: 'unknown',
  SourceType.wallet: 'wallet',
};

_$PaymentParametersImpl _$$PaymentParametersImplFromJson(
        Map<String, dynamic> json) =>
    _$PaymentParametersImpl(
      acceptPartialAuthorization:
          (json['acceptPartialAuthorization'] as num).toInt(),
      amountMoney: Money.fromJson(json['amountMoney'] as Map<String, dynamic>),
      appFeeMoney: Money.fromJson(json['appFeeMoney'] as Map<String, dynamic>),
      autocomplete: (json['autocomplete'] as num).toInt(),
      customerId: json['customerId'] as String,
      delayAction: $enumDecode(_$DelayActionEnumMap, json['delayAction']),
      delayDuration: json['delayDuration'] as num? ?? 0,
      idempotencyKey: json['idempotencyKey'] as String,
      locationId: json['locationId'] as String,
      note: json['note'] as String,
      orderId: json['orderId'] as String,
      referenceId: json['referenceId'] as String,
      teamMemberId: json['teamMemberId'] as String,
      tipMoney: Money.fromJson(json['tipMoney'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PaymentParametersImplToJson(
        _$PaymentParametersImpl instance) =>
    <String, dynamic>{
      'acceptPartialAuthorization': instance.acceptPartialAuthorization,
      'amountMoney': instance.amountMoney,
      'appFeeMoney': instance.appFeeMoney,
      'autocomplete': instance.autocomplete,
      'customerId': instance.customerId,
      'delayAction': _$DelayActionEnumMap[instance.delayAction]!,
      'delayDuration': instance.delayDuration,
      'idempotencyKey': instance.idempotencyKey,
      'locationId': instance.locationId,
      'note': instance.note,
      'orderId': instance.orderId,
      'referenceId': instance.referenceId,
      'teamMemberId': instance.teamMemberId,
      'tipMoney': instance.tipMoney,
    };

const _$DelayActionEnumMap = {
  DelayAction.cancel: 'cancel',
  DelayAction.complete: 'complete',
};

_$OnlinePaymentImpl _$$OnlinePaymentImplFromJson(Map<String, dynamic> json) =>
    _$OnlinePaymentImpl(
      amountMoney: Money.fromJson(json['amountMoney'] as Map<String, dynamic>),
      appFeeMoney: Money.fromJson(json['appFeeMoney'] as Map<String, dynamic>),
      cardDetails: CardPaymentDetails.fromJson(
          json['cardDetails'] as Map<String, dynamic>),
      createdAt: json['createdAt'] as String,
      customerId: json['customerId'] as String,
      id: json['id'] as String,
      locationId: json['locationId'] as String,
      note: json['note'] as String,
      orderId: json['orderId'] as String,
      referenceId: json['referenceId'] as String,
      status: $enumDecode(_$PaymentStatusEnumMap, json['status']),
      tipMoney: Money.fromJson(json['tipMoney'] as Map<String, dynamic>),
      totalMoney: Money.fromJson(json['totalMoney'] as Map<String, dynamic>),
      updatedAt: json['updatedAt'] as String,
    );

Map<String, dynamic> _$$OnlinePaymentImplToJson(_$OnlinePaymentImpl instance) =>
    <String, dynamic>{
      'amountMoney': instance.amountMoney,
      'appFeeMoney': instance.appFeeMoney,
      'cardDetails': instance.cardDetails,
      'createdAt': instance.createdAt,
      'customerId': instance.customerId,
      'id': instance.id,
      'locationId': instance.locationId,
      'note': instance.note,
      'orderId': instance.orderId,
      'referenceId': instance.referenceId,
      'status': _$PaymentStatusEnumMap[instance.status]!,
      'tipMoney': instance.tipMoney,
      'totalMoney': instance.totalMoney,
      'updatedAt': instance.updatedAt,
    };

const _$PaymentStatusEnumMap = {
  PaymentStatus.approved: 'approved',
  PaymentStatus.complete: 'complete',
  PaymentStatus.canceled: 'canceled',
  PaymentStatus.failed: 'failed',
  PaymentStatus.unknown: 'unknown',
};
