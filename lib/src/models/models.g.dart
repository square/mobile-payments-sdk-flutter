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
      cardholderName: json['cardholderName'] as String?,
      coBrand: $enumDecode(_$CardCoBrandEnumMap, json['coBrand']),
      expirationMonth: json['expirationMonth'] as num? ?? 0,
      expirationYear: json['expirationYear'] as num? ?? 0,
      id: json['id'] as String?,
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
  CardBrand.otherBrand: 'otherBrand',
  CardBrand.visa: 'visa',
  CardBrand.mastercard: 'mastercard',
  CardBrand.americanExpress: 'americanExpress',
  CardBrand.discover: 'discover',
  CardBrand.discoverDiners: 'discoverDiners',
  CardBrand.ebt: 'ebt',
  CardBrand.jcb: 'jcb',
  CardBrand.chinaUnionPay: 'chinaUnionPay',
  CardBrand.unionPayInternational: 'unionPayInternational',
  CardBrand.squareGiftCard: 'squareGiftCard',
  CardBrand.alipay: 'alipay',
  CardBrand.cashApp: 'cashApp',
  CardBrand.eftpos: 'eftpos',
  CardBrand.felica: 'felica',
  CardBrand.interac: 'interac',
  CardBrand.squareCapitalCard: 'squareCapitalCard',
  CardBrand.suica: 'suica',
  CardBrand.id: 'id',
  CardBrand.quicpay: 'quicpay',
  CardBrand.unknown: 'unknown',
};

const _$CardCoBrandEnumMap = {
  CardCoBrand.afterpay: 'afterpay',
  CardCoBrand.clearpay: 'clearpay',
  CardCoBrand.none: 'none',
  CardCoBrand.unknown: 'unknown',
};

_$OfflineCardImpl _$$OfflineCardImplFromJson(Map<String, dynamic> json) =>
    _$OfflineCardImpl(
      brand: $enumDecode(_$CardBrandEnumMap, json['brand']),
      cardholderName: json['cardholderName'] as String?,
      id: json['id'] as String?,
      lastFourDigits: json['lastFourDigits'] as String?,
    );

Map<String, dynamic> _$$OfflineCardImplToJson(_$OfflineCardImpl instance) =>
    <String, dynamic>{
      'brand': _$CardBrandEnumMap[instance.brand]!,
      'cardholderName': instance.cardholderName,
      'id': instance.id,
      'lastFourDigits': instance.lastFourDigits,
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

_$ReaderBatteryStatusImpl _$$ReaderBatteryStatusImplFromJson(
        Map<String, dynamic> json) =>
    _$ReaderBatteryStatusImpl(
      isCharging: json['isCharging'] as bool,
      level: $enumDecodeNullable(_$ReaderBatteryLevelEnumMap, json['level']),
      percentage: (json['percentage'] as num).toInt(),
    );

Map<String, dynamic> _$$ReaderBatteryStatusImplToJson(
        _$ReaderBatteryStatusImpl instance) =>
    <String, dynamic>{
      'isCharging': instance.isCharging,
      'level': _$ReaderBatteryLevelEnumMap[instance.level],
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
      failureInfo: json['failureInfo'] == null
          ? null
          : ReaderConnectionFailureInfo.fromJson(
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
      failureReason: json['failureReason'] as String?,
      updatePercentage: (json['updatePercentage'] as num?)?.toInt(),
      version: json['version'] as String?,
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
      batteryStatus: json['batteryStatus'] == null
          ? null
          : ReaderBatteryStatus.fromJson(
              json['batteryStatus'] as Map<String, dynamic>),
      cardInsertionStatus: $enumDecodeNullable(
          _$CardInsertionStatusEnumMap, json['cardInsertionStatus']),
      connectionInfo: json['connectionInfo'] == null
          ? null
          : ReaderConnectionInfo.fromJson(
              json['connectionInfo'] as Map<String, dynamic>),
      firmwareInfo: json['firmwareInfo'] == null
          ? null
          : ReaderFirmwareInfo.fromJson(
              json['firmwareInfo'] as Map<String, dynamic>),
      id: json['id'] as String,
      isBlinkable: json['isBlinkable'] as bool,
      isConnectionRetryable: json['isConnectionRetryable'] as bool?,
      isForgettable: json['isForgettable'] as bool,
      model: $enumDecode(_$ReaderModelEnumMap, json['model']),
      name: json['name'] as String,
      serialNumber: json['serialNumber'] as String?,
      state: $enumDecode(_$ReaderStateEnumMap, json['state']),
      supportedInputMethods: (json['supportedInputMethods'] as List<dynamic>)
          .map((e) => $enumDecode(_$CardInputMethodEnumMap, e))
          .toList(),
    );

Map<String, dynamic> _$$ReaderInfoImplToJson(_$ReaderInfoImpl instance) =>
    <String, dynamic>{
      'batteryStatus': instance.batteryStatus,
      'cardInsertionStatus':
          _$CardInsertionStatusEnumMap[instance.cardInsertionStatus],
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
      'supportedInputMethods': instance.supportedInputMethods
          .map((e) => _$CardInputMethodEnumMap[e]!)
          .toList(),
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
  ReaderModel.tapToPay: 'tapToPay',
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

const _$CardInputMethodEnumMap = {
  CardInputMethod.swiped: 'swiped',
  CardInputMethod.emv: 'emv',
  CardInputMethod.contactless: 'contactless',
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
      appFeeMoney: json['appFeeMoney'] == null
          ? null
          : Money.fromJson(json['appFeeMoney'] as Map<String, dynamic>),
      createdAt: DateTime.parse(json['createdAt'] as String),
      id: json['id'] as String?,
      locationId: json['locationId'] as String?,
      orderId: json['orderId'] as String?,
      referenceId: json['referenceId'] as String?,
      sourceType: $enumDecode(_$SourceTypeEnumMap, json['sourceType']),
      tipMoney: json['tipMoney'] == null
          ? null
          : Money.fromJson(json['tipMoney'] as Map<String, dynamic>),
      totalMoney: Money.fromJson(json['totalMoney'] as Map<String, dynamic>),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$PaymentImplToJson(_$PaymentImpl instance) =>
    <String, dynamic>{
      'amountMoney': instance.amountMoney,
      'appFeeMoney': instance.appFeeMoney,
      'createdAt': instance.createdAt.toIso8601String(),
      'id': instance.id,
      'locationId': instance.locationId,
      'orderId': instance.orderId,
      'referenceId': instance.referenceId,
      'sourceType': _$SourceTypeEnumMap[instance.sourceType]!,
      'tipMoney': instance.tipMoney,
      'totalMoney': instance.totalMoney,
      'updatedAt': instance.updatedAt.toIso8601String(),
    };

const _$SourceTypeEnumMap = {
  SourceType.bankAccount: 'bankAccount',
  SourceType.card: 'card',
  SourceType.cash: 'cash',
  SourceType.externalSource: 'externalSource',
  SourceType.squareAccount: 'squareAccount',
  SourceType.cardOnFile: 'cardOnFile',
  SourceType.unknown: 'unknown',
  SourceType.wallet: 'wallet',
};

_$PaymentParametersImpl _$$PaymentParametersImplFromJson(
        Map<String, dynamic> json) =>
    _$PaymentParametersImpl(
      acceptPartialAuthorization:
          (json['acceptPartialAuthorization'] as num?)?.toInt(),
      amountMoney: Money.fromJson(json['amountMoney'] as Map<String, dynamic>),
      appFeeMoney: json['appFeeMoney'] == null
          ? null
          : Money.fromJson(json['appFeeMoney'] as Map<String, dynamic>),
      autocomplete: json['autocomplete'] as bool?,
      customerId: json['customerId'] as String?,
      delayAction:
          $enumDecodeNullable(_$DelayActionEnumMap, json['delayAction']),
      delayDuration: json['delayDuration'] as num?,
      processingMode: json['processingMode'] as num?,
      idempotencyKey: json['idempotencyKey'] as String,
      locationId: json['locationId'] as String?,
      note: json['note'] as String?,
      orderId: json['orderId'] as String?,
      referenceId: json['referenceId'] as String?,
      teamMemberId: json['teamMemberId'] as String?,
      tipMoney: json['tipMoney'] == null
          ? null
          : Money.fromJson(json['tipMoney'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PaymentParametersImplToJson(
        _$PaymentParametersImpl instance) =>
    <String, dynamic>{
      'acceptPartialAuthorization': instance.acceptPartialAuthorization,
      'amountMoney': instance.amountMoney,
      'appFeeMoney': instance.appFeeMoney,
      'autocomplete': instance.autocomplete,
      'customerId': instance.customerId,
      'delayAction': _$DelayActionEnumMap[instance.delayAction],
      'delayDuration': instance.delayDuration,
      'processingMode': instance.processingMode,
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

_$OfflinePaymentImpl _$$OfflinePaymentImplFromJson(Map<String, dynamic> json) =>
    _$OfflinePaymentImpl(
      amountMoney: Money.fromJson(json['amountMoney'] as Map<String, dynamic>),
      appFeeMoney: json['appFeeMoney'] == null
          ? null
          : Money.fromJson(json['appFeeMoney'] as Map<String, dynamic>),
      createdAt: DateTime.parse(json['createdAt'] as String),
      id: json['id'] as String?,
      locationId: json['locationId'] as String?,
      orderId: json['orderId'] as String?,
      referenceId: json['referenceId'] as String?,
      tipMoney: json['tipMoney'] == null
          ? null
          : Money.fromJson(json['tipMoney'] as Map<String, dynamic>),
      totalMoney: Money.fromJson(json['totalMoney'] as Map<String, dynamic>),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      cardDetails: json['cardDetails'] == null
          ? null
          : OfflineCardPaymentDetails.fromJson(
              json['cardDetails'] as Map<String, dynamic>),
      localId: json['localId'] as String,
      status: $enumDecode(_$OfflineStatusEnumMap, json['status']),
      uploadedAt: json['uploadedAt'] == null
          ? null
          : DateTime.parse(json['uploadedAt'] as String),
    );

Map<String, dynamic> _$$OfflinePaymentImplToJson(
        _$OfflinePaymentImpl instance) =>
    <String, dynamic>{
      'amountMoney': instance.amountMoney,
      'appFeeMoney': instance.appFeeMoney,
      'createdAt': instance.createdAt.toIso8601String(),
      'id': instance.id,
      'locationId': instance.locationId,
      'orderId': instance.orderId,
      'referenceId': instance.referenceId,
      'tipMoney': instance.tipMoney,
      'totalMoney': instance.totalMoney,
      'updatedAt': instance.updatedAt.toIso8601String(),
      'cardDetails': instance.cardDetails,
      'localId': instance.localId,
      'status': _$OfflineStatusEnumMap[instance.status]!,
      'uploadedAt': instance.uploadedAt?.toIso8601String(),
    };

const _$OfflineStatusEnumMap = {
  OfflineStatus.failedToProcess: 'failedToProcess',
  OfflineStatus.failedToUpload: 'failedToUpload',
  OfflineStatus.processed: 'processed',
  OfflineStatus.queued: 'queued',
  OfflineStatus.unknown: 'unknown',
  OfflineStatus.uploaded: 'uploaded',
};

_$OfflineCardPaymentDetailsImpl _$$OfflineCardPaymentDetailsImplFromJson(
        Map<String, dynamic> json) =>
    _$OfflineCardPaymentDetailsImpl(
      applicationIdentifier: json['applicationIdentifier'] as String?,
      applicationName: json['applicationName'] as String?,
      card: json['card'] == null
          ? null
          : OfflineCard.fromJson(json['card'] as Map<String, dynamic>),
      entryMethod: $enumDecode(_$EntryMethodEnumMap, json['entryMethod']),
    );

Map<String, dynamic> _$$OfflineCardPaymentDetailsImplToJson(
        _$OfflineCardPaymentDetailsImpl instance) =>
    <String, dynamic>{
      'applicationIdentifier': instance.applicationIdentifier,
      'applicationName': instance.applicationName,
      'card': instance.card,
      'entryMethod': _$EntryMethodEnumMap[instance.entryMethod]!,
    };

_$ReaderChangedEventImpl _$$ReaderChangedEventImplFromJson(
        Map<String, dynamic> json) =>
    _$ReaderChangedEventImpl(
      reader: ReaderInfo.fromJson(json['reader'] as Map<String, dynamic>),
      change: $enumDecode(_$ReaderChangeEnumMap, json['change']),
    );

Map<String, dynamic> _$$ReaderChangedEventImplToJson(
        _$ReaderChangedEventImpl instance) =>
    <String, dynamic>{
      'reader': instance.reader,
      'change': _$ReaderChangeEnumMap[instance.change]!,
    };

const _$ReaderChangeEnumMap = {
  ReaderChange.batteryDidBeginCharging: 'batteryDidBeginCharging',
  ReaderChange.batteryDidEndCharging: 'batteryDidEndCharging',
  ReaderChange.batteryLevelDidChange: 'batteryLevelDidChange',
  ReaderChange.cardInserted: 'cardInserted',
  ReaderChange.cardRemoved: 'cardRemoved',
  ReaderChange.connectionDidFail: 'connectionDidFail',
  ReaderChange.connectionStateDidChange: 'connectionStateDidChange',
  ReaderChange.firmwareUpdateDidFail: 'firmwareUpdateDidFail',
  ReaderChange.firmwareUpdatePercentDidChange: 'firmwareUpdatePercentDidChange',
  ReaderChange.stateDidChange: 'stateDidChange',
  ReaderChange.changedState: 'changedState',
  ReaderChange.added: 'added',
  ReaderChange.removed: 'removed',
  ReaderChange.batteryThreshold: 'batteryThreshold',
  ReaderChange.batteryCharging: 'batteryCharging',
  ReaderChange.firmwareProgress: 'firmwareProgress',
};
