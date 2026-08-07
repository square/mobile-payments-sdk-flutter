// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Location _$LocationFromJson(Map<String, dynamic> json) => _Location(
  id: json['id'] as String,
  currencyCode: $enumDecode(
    _$CurrencyCodeEnumMap,
    json['currencyCode'],
    unknownValue: CurrencyCode.unknown,
  ),
  name: json['name'] as String,
  merchantId: json['merchantId'] as String?,
  businessName: json['businessName'] as String?,
  cardProcessingActivated: json['cardProcessingActivated'] as bool?,
  mcc: json['mcc'] as String?,
);

Map<String, dynamic> _$LocationToJson(_Location instance) => <String, dynamic>{
  'id': instance.id,
  'currencyCode': _$CurrencyCodeEnumMap[instance.currencyCode]!,
  'name': instance.name,
  'merchantId': instance.merchantId,
  'businessName': instance.businessName,
  'cardProcessingActivated': instance.cardProcessingActivated,
  'mcc': instance.mcc,
};

const _$CurrencyCodeEnumMap = {
  CurrencyCode.aud: 'aud',
  CurrencyCode.cad: 'cad',
  CurrencyCode.eur: 'eur',
  CurrencyCode.gbp: 'gbp',
  CurrencyCode.jpy: 'jpy',
  CurrencyCode.usd: 'usd',
  CurrencyCode.unknown: 'unknown',
};

_Money _$MoneyFromJson(Map<String, dynamic> json) => _Money(
  amount: (json['amount'] as num).toInt(),
  currencyCode: $enumDecode(
    _$CurrencyCodeEnumMap,
    json['currencyCode'],
    unknownValue: CurrencyCode.unknown,
  ),
);

Map<String, dynamic> _$MoneyToJson(_Money instance) => <String, dynamic>{
  'amount': instance.amount,
  'currencyCode': _$CurrencyCodeEnumMap[instance.currencyCode]!,
};

_Card _$CardFromJson(Map<String, dynamic> json) => _Card(
  brand: $enumDecode(
    _$CardBrandEnumMap,
    json['brand'],
    unknownValue: CardBrand.unknown,
  ),
  cardholderName: json['cardholderName'] as String?,
  coBrand: $enumDecodeNullable(
    _$CardCoBrandEnumMap,
    json['coBrand'],
    unknownValue: CardCoBrand.unknown,
  ),
  expirationMonth: json['expirationMonth'] as num? ?? 0,
  expirationYear: json['expirationYear'] as num? ?? 0,
  id: json['id'] as String?,
  lastFourDigits: json['lastFourDigits'] as String?,
  bin: json['bin'] as String?,
);

Map<String, dynamic> _$CardToJson(_Card instance) => <String, dynamic>{
  'brand': _$CardBrandEnumMap[instance.brand]!,
  'cardholderName': instance.cardholderName,
  'coBrand': _$CardCoBrandEnumMap[instance.coBrand],
  'expirationMonth': instance.expirationMonth,
  'expirationYear': instance.expirationYear,
  'id': instance.id,
  'lastFourDigits': instance.lastFourDigits,
  'bin': instance.bin,
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
  CardBrand.squareGiftCard: 'squareGiftCard',
  CardBrand.eftpos: 'eftpos',
  CardBrand.felica: 'felica',
  CardBrand.interac: 'interac',
  CardBrand.squareCapitalCard: 'squareCapitalCard',
  CardBrand.unknown: 'unknown',
};

const _$CardCoBrandEnumMap = {
  CardCoBrand.afterpay: 'afterpay',
  CardCoBrand.clearpay: 'clearpay',
  CardCoBrand.none: 'none',
  CardCoBrand.unknown: 'unknown',
};

_OfflineCard _$OfflineCardFromJson(Map<String, dynamic> json) => _OfflineCard(
  brand: $enumDecode(
    _$CardBrandEnumMap,
    json['brand'],
    unknownValue: CardBrand.unknown,
  ),
  cardholderName: json['cardholderName'] as String?,
  id: json['id'] as String?,
  lastFourDigits: json['lastFourDigits'] as String?,
  coBrand: $enumDecodeNullable(
    _$CardCoBrandEnumMap,
    json['coBrand'],
    unknownValue: CardCoBrand.unknown,
  ),
  expirationMonth: json['expirationMonth'] as num?,
  expirationYear: json['expirationYear'] as num?,
  bin: json['bin'] as String?,
);

Map<String, dynamic> _$OfflineCardToJson(_OfflineCard instance) =>
    <String, dynamic>{
      'brand': _$CardBrandEnumMap[instance.brand]!,
      'cardholderName': instance.cardholderName,
      'id': instance.id,
      'lastFourDigits': instance.lastFourDigits,
      'coBrand': _$CardCoBrandEnumMap[instance.coBrand],
      'expirationMonth': instance.expirationMonth,
      'expirationYear': instance.expirationYear,
      'bin': instance.bin,
    };

_CardPaymentDetails _$CardPaymentDetailsFromJson(Map<String, dynamic> json) =>
    _CardPaymentDetails(
      applicationIdentifier: json['applicationIdentifier'] as String?,
      applicationName: json['applicationName'] as String?,
      authorizationCode: json['authorizationCode'] as String?,
      card: json['card'] == null
          ? null
          : Card.fromJson(json['card'] as Map<String, dynamic>),
      entryMethod: $enumDecode(
        _$EntryMethodEnumMap,
        json['entryMethod'],
        unknownValue: EntryMethod.unknown,
      ),
      status: $enumDecode(
        _$CardPaymentStatusEnumMap,
        json['status'],
        unknownValue: CardPaymentStatus.unknown,
      ),
      appliedCardSurchargeDetails: json['appliedCardSurchargeDetails'] == null
          ? null
          : CardSurchargeDetails.fromJson(
              json['appliedCardSurchargeDetails'] as Map<String, dynamic>,
            ),
      verificationMethod: $enumDecodeNullable(
        _$VerificationMethodEnumMap,
        json['verificationMethod'],
      ),
      verificationResults: $enumDecodeNullable(
        _$VerificationResultEnumMap,
        json['verificationResults'],
      ),
    );

Map<String, dynamic> _$CardPaymentDetailsToJson(_CardPaymentDetails instance) =>
    <String, dynamic>{
      'applicationIdentifier': instance.applicationIdentifier,
      'applicationName': instance.applicationName,
      'authorizationCode': instance.authorizationCode,
      'card': instance.card,
      'entryMethod': _$EntryMethodEnumMap[instance.entryMethod]!,
      'status': _$CardPaymentStatusEnumMap[instance.status]!,
      'appliedCardSurchargeDetails': instance.appliedCardSurchargeDetails,
      'verificationMethod':
          _$VerificationMethodEnumMap[instance.verificationMethod],
      'verificationResults':
          _$VerificationResultEnumMap[instance.verificationResults],
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

const _$VerificationMethodEnumMap = {
  VerificationMethod.pin: 'pin',
  VerificationMethod.signature: 'signature',
  VerificationMethod.pinAndSignature: 'pinAndSignature',
  VerificationMethod.onDevice: 'onDevice',
  VerificationMethod.none: 'none',
};

const _$VerificationResultEnumMap = {
  VerificationResult.success: 'success',
  VerificationResult.failure: 'failure',
  VerificationResult.unknown: 'unknown',
};

_CardSurchargeDetails _$CardSurchargeDetailsFromJson(
  Map<String, dynamic> json,
) => _CardSurchargeDetails(
  cardSurchargeMoney: Money.fromJson(
    json['cardSurchargeMoney'] as Map<String, dynamic>,
  ),
  taxOnCardSurchargeMoney: json['taxOnCardSurchargeMoney'] == null
      ? null
      : Money.fromJson(json['taxOnCardSurchargeMoney'] as Map<String, dynamic>),
  totalSurchargeMoney: json['totalSurchargeMoney'] == null
      ? null
      : Money.fromJson(json['totalSurchargeMoney'] as Map<String, dynamic>),
);

Map<String, dynamic> _$CardSurchargeDetailsToJson(
  _CardSurchargeDetails instance,
) => <String, dynamic>{
  'cardSurchargeMoney': instance.cardSurchargeMoney,
  'taxOnCardSurchargeMoney': instance.taxOnCardSurchargeMoney,
  'totalSurchargeMoney': instance.totalSurchargeMoney,
};

_CashPaymentDetails _$CashPaymentDetailsFromJson(Map<String, dynamic> json) =>
    _CashPaymentDetails(
      buyerSuppliedMoney: json['buyerSuppliedMoney'] == null
          ? null
          : Money.fromJson(json['buyerSuppliedMoney'] as Map<String, dynamic>),
      changeBackMoney: json['changeBackMoney'] == null
          ? null
          : Money.fromJson(json['changeBackMoney'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CashPaymentDetailsToJson(_CashPaymentDetails instance) =>
    <String, dynamic>{
      'buyerSuppliedMoney': instance.buyerSuppliedMoney,
      'changeBackMoney': instance.changeBackMoney,
    };

_CardInputMethods _$CardInputMethodsFromJson(Map<String, dynamic> json) =>
    _CardInputMethods(
      chip: (json['chip'] as num).toInt(),
      contactless: (json['contactless'] as num).toInt(),
      swipe: (json['swipe'] as num).toInt(),
    );

Map<String, dynamic> _$CardInputMethodsToJson(_CardInputMethods instance) =>
    <String, dynamic>{
      'chip': instance.chip,
      'contactless': instance.contactless,
      'swipe': instance.swipe,
    };

_ReaderBatteryStatus _$ReaderBatteryStatusFromJson(Map<String, dynamic> json) =>
    _ReaderBatteryStatus(
      isCharging: json['isCharging'] as bool,
      level: $enumDecodeNullable(_$ReaderBatteryLevelEnumMap, json['level']),
      percentage: (json['percentage'] as num).toInt(),
    );

Map<String, dynamic> _$ReaderBatteryStatusToJson(
  _ReaderBatteryStatus instance,
) => <String, dynamic>{
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

_ReaderStatusInfo _$ReaderStatusInfoFromJson(Map<String, dynamic> json) =>
    _ReaderStatusInfo(
      status: $enumDecode(_$ReaderStatusInfoStatusEnumMap, json['status']),
      unavailableReason: $enumDecodeNullable(
        _$ReaderStatusInfoUnavailableReasonEnumMap,
        json['unavailableReason'],
      ),
      unavailableReasonTitle: json['unavailableReasonTitle'] as String?,
      unavailableReasonDetail: json['unavailableReasonDetail'] as String?,
    );

Map<String, dynamic> _$ReaderStatusInfoToJson(
  _ReaderStatusInfo instance,
) => <String, dynamic>{
  'status': _$ReaderStatusInfoStatusEnumMap[instance.status]!,
  'unavailableReason':
      _$ReaderStatusInfoUnavailableReasonEnumMap[instance.unavailableReason],
  'unavailableReasonTitle': instance.unavailableReasonTitle,
  'unavailableReasonDetail': instance.unavailableReasonDetail,
};

const _$ReaderStatusInfoStatusEnumMap = {
  ReaderStatusInfoStatus.connectingToDevice: 'connectingToDevice',
  ReaderStatusInfoStatus.connectingToSquare: 'connectingToSquare',
  ReaderStatusInfoStatus.readerUnavailable: 'readerUnavailable',
  ReaderStatusInfoStatus.faulty: 'faulty',
  ReaderStatusInfoStatus.ready: 'ready',
};

const _$ReaderStatusInfoUnavailableReasonEnumMap = {
  ReaderStatusInfoUnavailableReason.internalError: 'internalError',
  ReaderStatusInfoUnavailableReason.bluetoothDisabled: 'bluetoothDisabled',
  ReaderStatusInfoUnavailableReason.bluetoothFailure: 'bluetoothFailure',
  ReaderStatusInfoUnavailableReason.secureConnectionToSquareFailure:
      'secureConnectionToSquareFailure',
  ReaderStatusInfoUnavailableReason.secureConnectionNetworkFailure:
      'secureConnectionNetworkFailure',
  ReaderStatusInfoUnavailableReason.blockingUpdate: 'blockingUpdate',
  ReaderStatusInfoUnavailableReason.maxReadersConnected: 'maxReadersConnected',
  ReaderStatusInfoUnavailableReason.notConnectedToInternet:
      'notConnectedToInternet',
  ReaderStatusInfoUnavailableReason.readerTimeout: 'readerTimeout',
  ReaderStatusInfoUnavailableReason.revokedByDevice: 'revokedByDevice',
  ReaderStatusInfoUnavailableReason.tapToPayError: 'tapToPayError',
  ReaderStatusInfoUnavailableReason.tapToPayIsNotLinked: 'tapToPayIsNotLinked',
  ReaderStatusInfoUnavailableReason.offlineSessionExpired:
      'offlineSessionExpired',
  ReaderStatusInfoUnavailableReason.readerUnavailableOffline:
      'readerUnavailableOffline',
  ReaderStatusInfoUnavailableReason.offlineModeDisabled: 'offlineModeDisabled',
  ReaderStatusInfoUnavailableReason.readerUpdateFailed: 'readerUpdateFailed',
  ReaderStatusInfoUnavailableReason.merchantSuspended: 'merchantSuspended',
  ReaderStatusInfoUnavailableReason.merchantIneligible: 'merchantIneligible',
  ReaderStatusInfoUnavailableReason.merchantNotActivated:
      'merchantNotActivated',
  ReaderStatusInfoUnavailableReason.deviceNotSupported: 'deviceNotSupported',
  ReaderStatusInfoUnavailableReason.readerFirmwareUpdateRequired:
      'readerFirmwareUpdateRequired',
  ReaderStatusInfoUnavailableReason.readerNotSupported: 'readerNotSupported',
  ReaderStatusInfoUnavailableReason.deviceRooted: 'deviceRooted',
  ReaderStatusInfoUnavailableReason.deviceDeveloperMode: 'deviceDeveloperMode',
  ReaderStatusInfoUnavailableReason.disabled: 'disabled',
  ReaderStatusInfoUnavailableReason.hostIdMismatch: 'hostIdMismatch',
};

_ReaderFirmwareInfo _$ReaderFirmwareInfoFromJson(Map<String, dynamic> json) =>
    _ReaderFirmwareInfo(
      failureReason: json['failureReason'] as String?,
      updateStatus: $enumDecode(
        _$FirmwareUpdateStatusEnumMap,
        json['updateStatus'],
      ),
      updatePercentage: (json['updatePercentage'] as num?)?.toInt(),
      updateTime: json['updateTime'] == null
          ? null
          : DateTime.parse(json['updateTime'] as String),
      version: json['version'] as String?,
    );

Map<String, dynamic> _$ReaderFirmwareInfoToJson(_ReaderFirmwareInfo instance) =>
    <String, dynamic>{
      'failureReason': instance.failureReason,
      'updateStatus': _$FirmwareUpdateStatusEnumMap[instance.updateStatus]!,
      'updatePercentage': instance.updatePercentage,
      'updateTime': instance.updateTime?.toIso8601String(),
      'version': instance.version,
    };

const _$FirmwareUpdateStatusEnumMap = {
  FirmwareUpdateStatus.none: 'none',
  FirmwareUpdateStatus.pending: 'pending',
  FirmwareUpdateStatus.inProgress: 'inProgress',
  FirmwareUpdateStatus.failed: 'failed',
};

_ReaderInfo _$ReaderInfoFromJson(Map<String, dynamic> json) => _ReaderInfo(
  batteryStatus: json['batteryStatus'] == null
      ? null
      : ReaderBatteryStatus.fromJson(
          json['batteryStatus'] as Map<String, dynamic>,
        ),
  cardInsertionStatus: $enumDecodeNullable(
    _$CardInsertionStatusEnumMap,
    json['cardInsertionStatus'],
  ),
  connectionType: $enumDecode(
    _$ReaderConnectionTypeEnumMap,
    json['connectionType'],
    unknownValue: ReaderConnectionType.unknown,
  ),
  firmwareInfo: json['firmwareInfo'] == null
      ? null
      : ReaderFirmwareInfo.fromJson(
          json['firmwareInfo'] as Map<String, dynamic>,
        ),
  id: json['id'] as String,
  isBlinkable: json['isBlinkable'] as bool,
  isConnectionRetryable: json['isConnectionRetryable'] as bool?,
  isForgettable: json['isForgettable'] as bool,
  isRebootable: json['isRebootable'] as bool?,
  model: $enumDecode(_$ReaderModelEnumMap, json['model']),
  name: json['name'] as String,
  serialNumber: json['serialNumber'] as String?,
  statusInfo: ReaderStatusInfo.fromJson(
    json['statusInfo'] as Map<String, dynamic>,
  ),
  supportedInputMethods: (json['supportedInputMethods'] as List<dynamic>)
      .map((e) => $enumDecode(_$CardInputMethodEnumMap, e))
      .toList(),
);

Map<String, dynamic> _$ReaderInfoToJson(_ReaderInfo instance) =>
    <String, dynamic>{
      'batteryStatus': instance.batteryStatus,
      'cardInsertionStatus':
          _$CardInsertionStatusEnumMap[instance.cardInsertionStatus],
      'connectionType': _$ReaderConnectionTypeEnumMap[instance.connectionType]!,
      'firmwareInfo': instance.firmwareInfo,
      'id': instance.id,
      'isBlinkable': instance.isBlinkable,
      'isConnectionRetryable': instance.isConnectionRetryable,
      'isForgettable': instance.isForgettable,
      'isRebootable': instance.isRebootable,
      'model': _$ReaderModelEnumMap[instance.model]!,
      'name': instance.name,
      'serialNumber': instance.serialNumber,
      'statusInfo': instance.statusInfo,
      'supportedInputMethods': instance.supportedInputMethods
          .map((e) => _$CardInputMethodEnumMap[e]!)
          .toList(),
    };

const _$CardInsertionStatusEnumMap = {
  CardInsertionStatus.inserted: 'inserted',
  CardInsertionStatus.notInserted: 'notInserted',
  CardInsertionStatus.unknown: 'unknown',
};

const _$ReaderConnectionTypeEnumMap = {
  ReaderConnectionType.usb: 'usb',
  ReaderConnectionType.bluetooth: 'bluetooth',
  ReaderConnectionType.audio: 'audio',
  ReaderConnectionType.embedded: 'embedded',
  ReaderConnectionType.unknown: 'unknown',
};

const _$ReaderModelEnumMap = {
  ReaderModel.contactlessAndChip: 'contactlessAndChip',
  ReaderModel.magstripe: 'magstripe',
  ReaderModel.stand: 'stand',
  ReaderModel.tapToPay: 'tapToPay',
  ReaderModel.unknown: 'unknown',
};

const _$CardInputMethodEnumMap = {
  CardInputMethod.swiped: 'swiped',
  CardInputMethod.emv: 'emv',
  CardInputMethod.contactless: 'contactless',
  CardInputMethod.chip: 'chip',
};

_PromptParameters _$PromptParametersFromJson(Map<String, dynamic> json) =>
    _PromptParameters(
      additionalPaymentMethods:
          (json['additionalPaymentMethods'] as List<dynamic>)
              .map((e) => $enumDecode(_$AdditionalPaymentMethodTypeEnumMap, e))
              .toList(),
      mode: $enumDecode(_$PromptModeEnumMap, json['mode']),
    );

Map<String, dynamic> _$PromptParametersToJson(_PromptParameters instance) =>
    <String, dynamic>{
      'additionalPaymentMethods': instance.additionalPaymentMethods
          .map((e) => _$AdditionalPaymentMethodTypeEnumMap[e]!)
          .toList(),
      'mode': _$PromptModeEnumMap[instance.mode]!,
    };

const _$AdditionalPaymentMethodTypeEnumMap = {
  AdditionalPaymentMethodType.keyed: 'keyed',
  AdditionalPaymentMethodType.cash: 'cash',
  AdditionalPaymentMethodType.tapToPay: 'tapToPay',
};

const _$PromptModeEnumMap = {
  PromptMode.customMode: 'customMode',
  PromptMode.defaultMode: 'defaultMode',
};

OnlinePayment _$OnlinePaymentFromJson(Map<String, dynamic> json) =>
    OnlinePayment(
      amountMoney: Money.fromJson(json['amountMoney'] as Map<String, dynamic>),
      appFeeMoney: json['appFeeMoney'] == null
          ? null
          : Money.fromJson(json['appFeeMoney'] as Map<String, dynamic>),
      cashDetails: json['cashDetails'] == null
          ? null
          : CashPaymentDetails.fromJson(
              json['cashDetails'] as Map<String, dynamic>,
            ),
      createdAt: DateTime.parse(json['createdAt'] as String),
      id: json['id'] as String?,
      locationId: json['locationId'] as String?,
      orderId: json['orderId'] as String?,
      referenceId: json['referenceId'] as String?,
      sourceType: $enumDecode(
        _$SourceTypeEnumMap,
        json['sourceType'],
        unknownValue: SourceType.unknown,
      ),
      tipMoney: json['tipMoney'] == null
          ? null
          : Money.fromJson(json['tipMoney'] as Map<String, dynamic>),
      totalMoney: Money.fromJson(json['totalMoney'] as Map<String, dynamic>),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      cardDetails: json['cardDetails'] == null
          ? null
          : CardPaymentDetails.fromJson(
              json['cardDetails'] as Map<String, dynamic>,
            ),
      customerId: json['customerId'] as String?,
      note: json['note'] as String?,
      status: $enumDecode(
        _$PaymentStatusEnumMap,
        json['status'],
        unknownValue: PaymentStatus.unknown,
      ),
      teamMemberId: json['teamMemberId'] as String?,
      capabilities: json['capabilities'] == null
          ? null
          : PaymentCapabilities.fromJson(
              json['capabilities'] as Map<String, dynamic>,
            ),
      processingFee: (json['processingFee'] as List<dynamic>?)
          ?.map((e) => PaymentProcessingFee.fromJson(e as Map<String, dynamic>))
          .toList(),
      receiptNumber: json['receiptNumber'] as String?,
      receiptUrl: json['receiptUrl'] as String?,
      statementDescription: json['statementDescription'] as String?,
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$OnlinePaymentToJson(OnlinePayment instance) =>
    <String, dynamic>{
      'amountMoney': instance.amountMoney,
      'appFeeMoney': instance.appFeeMoney,
      'cashDetails': instance.cashDetails,
      'createdAt': instance.createdAt.toIso8601String(),
      'id': instance.id,
      'locationId': instance.locationId,
      'orderId': instance.orderId,
      'referenceId': instance.referenceId,
      'sourceType': _$SourceTypeEnumMap[instance.sourceType]!,
      'tipMoney': instance.tipMoney,
      'totalMoney': instance.totalMoney,
      'updatedAt': instance.updatedAt.toIso8601String(),
      'cardDetails': instance.cardDetails,
      'customerId': instance.customerId,
      'note': instance.note,
      'status': _$PaymentStatusEnumMap[instance.status]!,
      'teamMemberId': instance.teamMemberId,
      'capabilities': instance.capabilities,
      'processingFee': instance.processingFee,
      'receiptNumber': instance.receiptNumber,
      'receiptUrl': instance.receiptUrl,
      'statementDescription': instance.statementDescription,
      'type': instance.$type,
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

const _$PaymentStatusEnumMap = {
  PaymentStatus.approved: 'approved',
  PaymentStatus.complete: 'complete',
  PaymentStatus.canceled: 'canceled',
  PaymentStatus.failed: 'failed',
  PaymentStatus.initialized: 'initialized',
  PaymentStatus.pending: 'pending',
  PaymentStatus.unknown: 'unknown',
};

OfflinePayment _$OfflinePaymentFromJson(Map<String, dynamic> json) =>
    OfflinePayment(
      amountMoney: Money.fromJson(json['amountMoney'] as Map<String, dynamic>),
      appFeeMoney: json['appFeeMoney'] == null
          ? null
          : Money.fromJson(json['appFeeMoney'] as Map<String, dynamic>),
      cashDetails: json['cashDetails'] == null
          ? null
          : CashPaymentDetails.fromJson(
              json['cashDetails'] as Map<String, dynamic>,
            ),
      createdAt: DateTime.parse(json['createdAt'] as String),
      id: json['id'] as String?,
      locationId: json['locationId'] as String?,
      orderId: json['orderId'] as String?,
      referenceId: json['referenceId'] as String?,
      sourceType: $enumDecode(
        _$SourceTypeEnumMap,
        json['sourceType'],
        unknownValue: SourceType.unknown,
      ),
      tipMoney: json['tipMoney'] == null
          ? null
          : Money.fromJson(json['tipMoney'] as Map<String, dynamic>),
      totalMoney: Money.fromJson(json['totalMoney'] as Map<String, dynamic>),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      cardDetails: json['cardDetails'] == null
          ? null
          : OfflineCardPaymentDetails.fromJson(
              json['cardDetails'] as Map<String, dynamic>,
            ),
      localId: json['localId'] as String,
      status: $enumDecode(
        _$OfflineStatusEnumMap,
        json['status'],
        unknownValue: OfflineStatus.unknown,
      ),
      uploadedAt: json['uploadedAt'] == null
          ? null
          : DateTime.parse(json['uploadedAt'] as String),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$OfflinePaymentToJson(OfflinePayment instance) =>
    <String, dynamic>{
      'amountMoney': instance.amountMoney,
      'appFeeMoney': instance.appFeeMoney,
      'cashDetails': instance.cashDetails,
      'createdAt': instance.createdAt.toIso8601String(),
      'id': instance.id,
      'locationId': instance.locationId,
      'orderId': instance.orderId,
      'referenceId': instance.referenceId,
      'sourceType': _$SourceTypeEnumMap[instance.sourceType]!,
      'tipMoney': instance.tipMoney,
      'totalMoney': instance.totalMoney,
      'updatedAt': instance.updatedAt.toIso8601String(),
      'cardDetails': instance.cardDetails,
      'localId': instance.localId,
      'status': _$OfflineStatusEnumMap[instance.status]!,
      'uploadedAt': instance.uploadedAt?.toIso8601String(),
      'type': instance.$type,
    };

const _$OfflineStatusEnumMap = {
  OfflineStatus.failedToProcess: 'failedToProcess',
  OfflineStatus.failedToUpload: 'failedToUpload',
  OfflineStatus.processed: 'processed',
  OfflineStatus.queued: 'queued',
  OfflineStatus.unknown: 'unknown',
  OfflineStatus.uploaded: 'uploaded',
};

_PaymentCapabilities _$PaymentCapabilitiesFromJson(Map<String, dynamic> json) =>
    _PaymentCapabilities(
      allCapabilities:
          (json['allCapabilities'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
    );

Map<String, dynamic> _$PaymentCapabilitiesToJson(
  _PaymentCapabilities instance,
) => <String, dynamic>{'allCapabilities': instance.allCapabilities};

_PaymentProcessingFee _$PaymentProcessingFeeFromJson(
  Map<String, dynamic> json,
) => _PaymentProcessingFee(
  amountMoney: Money.fromJson(json['amountMoney'] as Map<String, dynamic>),
  effectiveAt: DateTime.parse(json['effectiveAt'] as String),
  type: $enumDecode(_$ProcessingFeeTypeEnumMap, json['type']),
);

Map<String, dynamic> _$PaymentProcessingFeeToJson(
  _PaymentProcessingFee instance,
) => <String, dynamic>{
  'amountMoney': instance.amountMoney,
  'effectiveAt': instance.effectiveAt.toIso8601String(),
  'type': _$ProcessingFeeTypeEnumMap[instance.type]!,
};

const _$ProcessingFeeTypeEnumMap = {
  ProcessingFeeType.initial: 'initial',
  ProcessingFeeType.adjustment: 'adjustment',
};

PaymentParametersCurrent _$PaymentParametersCurrentFromJson(
  Map<String, dynamic> json,
) => PaymentParametersCurrent(
  acceptPartialAuthorization: json['acceptPartialAuthorization'] as bool?,
  allowCardSurcharge: json['allowCardSurcharge'] as bool?,
  amountMoney: Money.fromJson(json['amountMoney'] as Map<String, dynamic>),
  appFeeMoney: json['appFeeMoney'] == null
      ? null
      : Money.fromJson(json['appFeeMoney'] as Map<String, dynamic>),
  autocomplete: json['autocomplete'] as bool?,
  customerId: json['customerId'] as String?,
  delayAction: $enumDecodeNullable(_$DelayActionEnumMap, json['delayAction']),
  delayDuration: json['delayDuration'] as num?,
  processingMode: $enumDecode(_$ProcessingModeEnumMap, json['processingMode']),
  paymentAttemptId: json['paymentAttemptId'] as String,
  locationId: json['locationId'] as String?,
  note: json['note'] as String?,
  orderId: json['orderId'] as String?,
  referenceId: json['referenceId'] as String?,
  statementDescription: json['statementDescription'] as String?,
  teamMemberId: json['teamMemberId'] as String?,
  tipMoney: json['tipMoney'] == null
      ? null
      : Money.fromJson(json['tipMoney'] as Map<String, dynamic>),
  $type: json['type'] as String?,
);

Map<String, dynamic> _$PaymentParametersCurrentToJson(
  PaymentParametersCurrent instance,
) => <String, dynamic>{
  'acceptPartialAuthorization': instance.acceptPartialAuthorization,
  'allowCardSurcharge': instance.allowCardSurcharge,
  'amountMoney': instance.amountMoney,
  'appFeeMoney': instance.appFeeMoney,
  'autocomplete': instance.autocomplete,
  'customerId': instance.customerId,
  'delayAction': _$DelayActionEnumMap[instance.delayAction],
  'delayDuration': instance.delayDuration,
  'processingMode': _$ProcessingModeEnumMap[instance.processingMode]!,
  'paymentAttemptId': instance.paymentAttemptId,
  'locationId': instance.locationId,
  'note': instance.note,
  'orderId': instance.orderId,
  'referenceId': instance.referenceId,
  'statementDescription': instance.statementDescription,
  'teamMemberId': instance.teamMemberId,
  'tipMoney': instance.tipMoney,
  'type': instance.$type,
};

const _$DelayActionEnumMap = {
  DelayAction.cancel: 'cancel',
  DelayAction.complete: 'complete',
};

const _$ProcessingModeEnumMap = {
  ProcessingMode.autoDetect: 'autoDetect',
  ProcessingMode.offlineOnly: 'offlineOnly',
  ProcessingMode.onlineOnly: 'onlineOnly',
};

_LegacyPaymentParameters _$LegacyPaymentParametersFromJson(
  Map<String, dynamic> json,
) => _LegacyPaymentParameters(
  acceptPartialAuthorization: json['acceptPartialAuthorization'] as bool?,
  allowCardSurcharge: json['allowCardSurcharge'] as bool?,
  amountMoney: Money.fromJson(json['amountMoney'] as Map<String, dynamic>),
  appFeeMoney: json['appFeeMoney'] == null
      ? null
      : Money.fromJson(json['appFeeMoney'] as Map<String, dynamic>),
  autocomplete: json['autocomplete'] as bool?,
  customerId: json['customerId'] as String?,
  delayAction: $enumDecodeNullable(_$DelayActionEnumMap, json['delayAction']),
  delayDuration: json['delayDuration'] as num?,
  processingMode: $enumDecode(_$ProcessingModeEnumMap, json['processingMode']),
  idempotencyKey: json['idempotencyKey'] as String,
  locationId: json['locationId'] as String?,
  note: json['note'] as String?,
  orderId: json['orderId'] as String?,
  referenceId: json['referenceId'] as String?,
  statementDescription: json['statementDescription'] as String?,
  teamMemberId: json['teamMemberId'] as String?,
  tipMoney: json['tipMoney'] == null
      ? null
      : Money.fromJson(json['tipMoney'] as Map<String, dynamic>),
  $type: json['type'] as String?,
);

Map<String, dynamic> _$LegacyPaymentParametersToJson(
  _LegacyPaymentParameters instance,
) => <String, dynamic>{
  'acceptPartialAuthorization': instance.acceptPartialAuthorization,
  'allowCardSurcharge': instance.allowCardSurcharge,
  'amountMoney': instance.amountMoney,
  'appFeeMoney': instance.appFeeMoney,
  'autocomplete': instance.autocomplete,
  'customerId': instance.customerId,
  'delayAction': _$DelayActionEnumMap[instance.delayAction],
  'delayDuration': instance.delayDuration,
  'processingMode': _$ProcessingModeEnumMap[instance.processingMode]!,
  'idempotencyKey': instance.idempotencyKey,
  'locationId': instance.locationId,
  'note': instance.note,
  'orderId': instance.orderId,
  'referenceId': instance.referenceId,
  'statementDescription': instance.statementDescription,
  'teamMemberId': instance.teamMemberId,
  'tipMoney': instance.tipMoney,
  'type': instance.$type,
};

_OfflineCardPaymentDetails _$OfflineCardPaymentDetailsFromJson(
  Map<String, dynamic> json,
) => _OfflineCardPaymentDetails(
  applicationIdentifier: json['applicationIdentifier'] as String?,
  applicationName: json['applicationName'] as String?,
  card: json['card'] == null
      ? null
      : OfflineCard.fromJson(json['card'] as Map<String, dynamic>),
  entryMethod: $enumDecode(
    _$EntryMethodEnumMap,
    json['entryMethod'],
    unknownValue: EntryMethod.unknown,
  ),
);

Map<String, dynamic> _$OfflineCardPaymentDetailsToJson(
  _OfflineCardPaymentDetails instance,
) => <String, dynamic>{
  'applicationIdentifier': instance.applicationIdentifier,
  'applicationName': instance.applicationName,
  'card': instance.card,
  'entryMethod': _$EntryMethodEnumMap[instance.entryMethod]!,
};

_ReaderChangedEvent _$ReaderChangedEventFromJson(Map<String, dynamic> json) =>
    _ReaderChangedEvent(
      reader: ReaderInfo.fromJson(json['reader'] as Map<String, dynamic>),
      change: $enumDecode(_$ReaderChangeEnumMap, json['change']),
    );

Map<String, dynamic> _$ReaderChangedEventToJson(_ReaderChangedEvent instance) =>
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
  ReaderChange.firmwareUpdateDidFail: 'firmwareUpdateDidFail',
  ReaderChange.firmwareUpdatePercentDidChange: 'firmwareUpdatePercentDidChange',
  ReaderChange.firmwareUpdateStatusDidChange: 'firmwareUpdateStatusDidChange',
  ReaderChange.firmwareUpdateTimeDidChange: 'firmwareUpdateTimeDidChange',
  ReaderChange.readerStatusDidChange: 'readerStatusDidChange',
  ReaderChange.changedState: 'changedState',
  ReaderChange.added: 'added',
  ReaderChange.removed: 'removed',
  ReaderChange.batteryThreshold: 'batteryThreshold',
  ReaderChange.batteryCharging: 'batteryCharging',
  ReaderChange.firmwareProgress: 'firmwareProgress',
};

_TimeOfDay _$TimeOfDayFromJson(Map<String, dynamic> json) => _TimeOfDay(
  hour: (json['hour'] as num).toInt(),
  minute: (json['minute'] as num).toInt(),
);

Map<String, dynamic> _$TimeOfDayToJson(_TimeOfDay instance) =>
    <String, dynamic>{'hour': instance.hour, 'minute': instance.minute};

_ReaderSettings _$ReaderSettingsFromJson(Map<String, dynamic> json) =>
    _ReaderSettings(
      isReducedChargingModeEnabled:
          json['isReducedChargingModeEnabled'] as bool,
      preferredFirmwareUpdateTime: json['preferredFirmwareUpdateTime'] == null
          ? null
          : TimeOfDay.fromJson(
              json['preferredFirmwareUpdateTime'] as Map<String, dynamic>,
            ),
    );

Map<String, dynamic> _$ReaderSettingsToJson(_ReaderSettings instance) =>
    <String, dynamic>{
      'isReducedChargingModeEnabled': instance.isReducedChargingModeEnabled,
      'preferredFirmwareUpdateTime': instance.preferredFirmwareUpdateTime,
    };
