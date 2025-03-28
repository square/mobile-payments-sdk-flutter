// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Location _$LocationFromJson(Map<String, dynamic> json) {
  return _Location.fromJson(json);
}

/// @nodoc
mixin _$Location {
  String get id => throw _privateConstructorUsedError;
  CurrencyCode get currencyCode => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  /// Serializes this Location to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Location
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LocationCopyWith<Location> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationCopyWith<$Res> {
  factory $LocationCopyWith(Location value, $Res Function(Location) then) =
      _$LocationCopyWithImpl<$Res, Location>;
  @useResult
  $Res call({String id, CurrencyCode currencyCode, String name});
}

/// @nodoc
class _$LocationCopyWithImpl<$Res, $Val extends Location>
    implements $LocationCopyWith<$Res> {
  _$LocationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Location
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? currencyCode = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      currencyCode: null == currencyCode
          ? _value.currencyCode
          : currencyCode // ignore: cast_nullable_to_non_nullable
              as CurrencyCode,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LocationImplCopyWith<$Res>
    implements $LocationCopyWith<$Res> {
  factory _$$LocationImplCopyWith(
          _$LocationImpl value, $Res Function(_$LocationImpl) then) =
      __$$LocationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, CurrencyCode currencyCode, String name});
}

/// @nodoc
class __$$LocationImplCopyWithImpl<$Res>
    extends _$LocationCopyWithImpl<$Res, _$LocationImpl>
    implements _$$LocationImplCopyWith<$Res> {
  __$$LocationImplCopyWithImpl(
      _$LocationImpl _value, $Res Function(_$LocationImpl) _then)
      : super(_value, _then);

  /// Create a copy of Location
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? currencyCode = null,
    Object? name = null,
  }) {
    return _then(_$LocationImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      currencyCode: null == currencyCode
          ? _value.currencyCode
          : currencyCode // ignore: cast_nullable_to_non_nullable
              as CurrencyCode,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LocationImpl with DiagnosticableTreeMixin implements _Location {
  const _$LocationImpl(
      {required this.id, required this.currencyCode, required this.name});

  factory _$LocationImpl.fromJson(Map<String, dynamic> json) =>
      _$$LocationImplFromJson(json);

  @override
  final String id;
  @override
  final CurrencyCode currencyCode;
  @override
  final String name;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Location(id: $id, currencyCode: $currencyCode, name: $name)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Location'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('currencyCode', currencyCode))
      ..add(DiagnosticsProperty('name', name));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.currencyCode, currencyCode) ||
                other.currencyCode == currencyCode) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, currencyCode, name);

  /// Create a copy of Location
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LocationImplCopyWith<_$LocationImpl> get copyWith =>
      __$$LocationImplCopyWithImpl<_$LocationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LocationImplToJson(
      this,
    );
  }
}

abstract class _Location implements Location {
  const factory _Location(
      {required final String id,
      required final CurrencyCode currencyCode,
      required final String name}) = _$LocationImpl;

  factory _Location.fromJson(Map<String, dynamic> json) =
      _$LocationImpl.fromJson;

  @override
  String get id;
  @override
  CurrencyCode get currencyCode;
  @override
  String get name;

  /// Create a copy of Location
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LocationImplCopyWith<_$LocationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Money _$MoneyFromJson(Map<String, dynamic> json) {
  return _Money.fromJson(json);
}

/// @nodoc
mixin _$Money {
  int? get amount => throw _privateConstructorUsedError;
  CurrencyCode get currencyCode => throw _privateConstructorUsedError;

  /// Serializes this Money to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Money
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MoneyCopyWith<Money> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MoneyCopyWith<$Res> {
  factory $MoneyCopyWith(Money value, $Res Function(Money) then) =
      _$MoneyCopyWithImpl<$Res, Money>;
  @useResult
  $Res call({int? amount, CurrencyCode currencyCode});
}

/// @nodoc
class _$MoneyCopyWithImpl<$Res, $Val extends Money>
    implements $MoneyCopyWith<$Res> {
  _$MoneyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Money
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = freezed,
    Object? currencyCode = null,
  }) {
    return _then(_value.copyWith(
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int?,
      currencyCode: null == currencyCode
          ? _value.currencyCode
          : currencyCode // ignore: cast_nullable_to_non_nullable
              as CurrencyCode,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MoneyImplCopyWith<$Res> implements $MoneyCopyWith<$Res> {
  factory _$$MoneyImplCopyWith(
          _$MoneyImpl value, $Res Function(_$MoneyImpl) then) =
      __$$MoneyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? amount, CurrencyCode currencyCode});
}

/// @nodoc
class __$$MoneyImplCopyWithImpl<$Res>
    extends _$MoneyCopyWithImpl<$Res, _$MoneyImpl>
    implements _$$MoneyImplCopyWith<$Res> {
  __$$MoneyImplCopyWithImpl(
      _$MoneyImpl _value, $Res Function(_$MoneyImpl) _then)
      : super(_value, _then);

  /// Create a copy of Money
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = freezed,
    Object? currencyCode = null,
  }) {
    return _then(_$MoneyImpl(
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int?,
      currencyCode: null == currencyCode
          ? _value.currencyCode
          : currencyCode // ignore: cast_nullable_to_non_nullable
              as CurrencyCode,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MoneyImpl with DiagnosticableTreeMixin implements _Money {
  const _$MoneyImpl({this.amount, required this.currencyCode});

  factory _$MoneyImpl.fromJson(Map<String, dynamic> json) =>
      _$$MoneyImplFromJson(json);

  @override
  final int? amount;
  @override
  final CurrencyCode currencyCode;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Money(amount: $amount, currencyCode: $currencyCode)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Money'))
      ..add(DiagnosticsProperty('amount', amount))
      ..add(DiagnosticsProperty('currencyCode', currencyCode));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MoneyImpl &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.currencyCode, currencyCode) ||
                other.currencyCode == currencyCode));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, amount, currencyCode);

  /// Create a copy of Money
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MoneyImplCopyWith<_$MoneyImpl> get copyWith =>
      __$$MoneyImplCopyWithImpl<_$MoneyImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MoneyImplToJson(
      this,
    );
  }
}

abstract class _Money implements Money {
  const factory _Money(
      {final int? amount,
      required final CurrencyCode currencyCode}) = _$MoneyImpl;

  factory _Money.fromJson(Map<String, dynamic> json) = _$MoneyImpl.fromJson;

  @override
  int? get amount;
  @override
  CurrencyCode get currencyCode;

  /// Create a copy of Money
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MoneyImplCopyWith<_$MoneyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Card _$CardFromJson(Map<String, dynamic> json) {
  return _Card.fromJson(json);
}

/// @nodoc
mixin _$Card {
  CardBrand get brand => throw _privateConstructorUsedError;
  String? get cardholderName => throw _privateConstructorUsedError;
  CardCoBrand get coBrand => throw _privateConstructorUsedError;
  num get expirationMonth => throw _privateConstructorUsedError;
  num get expirationYear => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;
  String get lastFourDigits => throw _privateConstructorUsedError;

  /// Serializes this Card to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Card
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CardCopyWith<Card> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CardCopyWith<$Res> {
  factory $CardCopyWith(Card value, $Res Function(Card) then) =
      _$CardCopyWithImpl<$Res, Card>;
  @useResult
  $Res call(
      {CardBrand brand,
      String? cardholderName,
      CardCoBrand coBrand,
      num expirationMonth,
      num expirationYear,
      String? id,
      String lastFourDigits});
}

/// @nodoc
class _$CardCopyWithImpl<$Res, $Val extends Card>
    implements $CardCopyWith<$Res> {
  _$CardCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Card
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? brand = null,
    Object? cardholderName = freezed,
    Object? coBrand = null,
    Object? expirationMonth = null,
    Object? expirationYear = null,
    Object? id = freezed,
    Object? lastFourDigits = null,
  }) {
    return _then(_value.copyWith(
      brand: null == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as CardBrand,
      cardholderName: freezed == cardholderName
          ? _value.cardholderName
          : cardholderName // ignore: cast_nullable_to_non_nullable
              as String?,
      coBrand: null == coBrand
          ? _value.coBrand
          : coBrand // ignore: cast_nullable_to_non_nullable
              as CardCoBrand,
      expirationMonth: null == expirationMonth
          ? _value.expirationMonth
          : expirationMonth // ignore: cast_nullable_to_non_nullable
              as num,
      expirationYear: null == expirationYear
          ? _value.expirationYear
          : expirationYear // ignore: cast_nullable_to_non_nullable
              as num,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      lastFourDigits: null == lastFourDigits
          ? _value.lastFourDigits
          : lastFourDigits // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CardImplCopyWith<$Res> implements $CardCopyWith<$Res> {
  factory _$$CardImplCopyWith(
          _$CardImpl value, $Res Function(_$CardImpl) then) =
      __$$CardImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {CardBrand brand,
      String? cardholderName,
      CardCoBrand coBrand,
      num expirationMonth,
      num expirationYear,
      String? id,
      String lastFourDigits});
}

/// @nodoc
class __$$CardImplCopyWithImpl<$Res>
    extends _$CardCopyWithImpl<$Res, _$CardImpl>
    implements _$$CardImplCopyWith<$Res> {
  __$$CardImplCopyWithImpl(_$CardImpl _value, $Res Function(_$CardImpl) _then)
      : super(_value, _then);

  /// Create a copy of Card
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? brand = null,
    Object? cardholderName = freezed,
    Object? coBrand = null,
    Object? expirationMonth = null,
    Object? expirationYear = null,
    Object? id = freezed,
    Object? lastFourDigits = null,
  }) {
    return _then(_$CardImpl(
      brand: null == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as CardBrand,
      cardholderName: freezed == cardholderName
          ? _value.cardholderName
          : cardholderName // ignore: cast_nullable_to_non_nullable
              as String?,
      coBrand: null == coBrand
          ? _value.coBrand
          : coBrand // ignore: cast_nullable_to_non_nullable
              as CardCoBrand,
      expirationMonth: null == expirationMonth
          ? _value.expirationMonth
          : expirationMonth // ignore: cast_nullable_to_non_nullable
              as num,
      expirationYear: null == expirationYear
          ? _value.expirationYear
          : expirationYear // ignore: cast_nullable_to_non_nullable
              as num,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      lastFourDigits: null == lastFourDigits
          ? _value.lastFourDigits
          : lastFourDigits // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CardImpl with DiagnosticableTreeMixin implements _Card {
  const _$CardImpl(
      {required this.brand,
      this.cardholderName,
      required this.coBrand,
      this.expirationMonth = 0,
      this.expirationYear = 0,
      this.id,
      required this.lastFourDigits});

  factory _$CardImpl.fromJson(Map<String, dynamic> json) =>
      _$$CardImplFromJson(json);

  @override
  final CardBrand brand;
  @override
  final String? cardholderName;
  @override
  final CardCoBrand coBrand;
  @override
  @JsonKey()
  final num expirationMonth;
  @override
  @JsonKey()
  final num expirationYear;
  @override
  final String? id;
  @override
  final String lastFourDigits;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Card(brand: $brand, cardholderName: $cardholderName, coBrand: $coBrand, expirationMonth: $expirationMonth, expirationYear: $expirationYear, id: $id, lastFourDigits: $lastFourDigits)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Card'))
      ..add(DiagnosticsProperty('brand', brand))
      ..add(DiagnosticsProperty('cardholderName', cardholderName))
      ..add(DiagnosticsProperty('coBrand', coBrand))
      ..add(DiagnosticsProperty('expirationMonth', expirationMonth))
      ..add(DiagnosticsProperty('expirationYear', expirationYear))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('lastFourDigits', lastFourDigits));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CardImpl &&
            (identical(other.brand, brand) || other.brand == brand) &&
            (identical(other.cardholderName, cardholderName) ||
                other.cardholderName == cardholderName) &&
            (identical(other.coBrand, coBrand) || other.coBrand == coBrand) &&
            (identical(other.expirationMonth, expirationMonth) ||
                other.expirationMonth == expirationMonth) &&
            (identical(other.expirationYear, expirationYear) ||
                other.expirationYear == expirationYear) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.lastFourDigits, lastFourDigits) ||
                other.lastFourDigits == lastFourDigits));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, brand, cardholderName, coBrand,
      expirationMonth, expirationYear, id, lastFourDigits);

  /// Create a copy of Card
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CardImplCopyWith<_$CardImpl> get copyWith =>
      __$$CardImplCopyWithImpl<_$CardImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CardImplToJson(
      this,
    );
  }
}

abstract class _Card implements Card {
  const factory _Card(
      {required final CardBrand brand,
      final String? cardholderName,
      required final CardCoBrand coBrand,
      final num expirationMonth,
      final num expirationYear,
      final String? id,
      required final String lastFourDigits}) = _$CardImpl;

  factory _Card.fromJson(Map<String, dynamic> json) = _$CardImpl.fromJson;

  @override
  CardBrand get brand;
  @override
  String? get cardholderName;
  @override
  CardCoBrand get coBrand;
  @override
  num get expirationMonth;
  @override
  num get expirationYear;
  @override
  String? get id;
  @override
  String get lastFourDigits;

  /// Create a copy of Card
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CardImplCopyWith<_$CardImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CardPaymentDetails _$CardPaymentDetailsFromJson(Map<String, dynamic> json) {
  return _CardPaymentDetails.fromJson(json);
}

/// @nodoc
mixin _$CardPaymentDetails {
  String get applicationIdentifier => throw _privateConstructorUsedError;
  String get applicationName => throw _privateConstructorUsedError;
  String get authorizationCode => throw _privateConstructorUsedError;
  Card get card => throw _privateConstructorUsedError;
  EntryMethod get entryMethod => throw _privateConstructorUsedError;
  CardPaymentStatus get status => throw _privateConstructorUsedError;

  /// Serializes this CardPaymentDetails to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CardPaymentDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CardPaymentDetailsCopyWith<CardPaymentDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CardPaymentDetailsCopyWith<$Res> {
  factory $CardPaymentDetailsCopyWith(
          CardPaymentDetails value, $Res Function(CardPaymentDetails) then) =
      _$CardPaymentDetailsCopyWithImpl<$Res, CardPaymentDetails>;
  @useResult
  $Res call(
      {String applicationIdentifier,
      String applicationName,
      String authorizationCode,
      Card card,
      EntryMethod entryMethod,
      CardPaymentStatus status});

  $CardCopyWith<$Res> get card;
}

/// @nodoc
class _$CardPaymentDetailsCopyWithImpl<$Res, $Val extends CardPaymentDetails>
    implements $CardPaymentDetailsCopyWith<$Res> {
  _$CardPaymentDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CardPaymentDetails
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? applicationIdentifier = null,
    Object? applicationName = null,
    Object? authorizationCode = null,
    Object? card = null,
    Object? entryMethod = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      applicationIdentifier: null == applicationIdentifier
          ? _value.applicationIdentifier
          : applicationIdentifier // ignore: cast_nullable_to_non_nullable
              as String,
      applicationName: null == applicationName
          ? _value.applicationName
          : applicationName // ignore: cast_nullable_to_non_nullable
              as String,
      authorizationCode: null == authorizationCode
          ? _value.authorizationCode
          : authorizationCode // ignore: cast_nullable_to_non_nullable
              as String,
      card: null == card
          ? _value.card
          : card // ignore: cast_nullable_to_non_nullable
              as Card,
      entryMethod: null == entryMethod
          ? _value.entryMethod
          : entryMethod // ignore: cast_nullable_to_non_nullable
              as EntryMethod,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CardPaymentStatus,
    ) as $Val);
  }

  /// Create a copy of CardPaymentDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CardCopyWith<$Res> get card {
    return $CardCopyWith<$Res>(_value.card, (value) {
      return _then(_value.copyWith(card: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CardPaymentDetailsImplCopyWith<$Res>
    implements $CardPaymentDetailsCopyWith<$Res> {
  factory _$$CardPaymentDetailsImplCopyWith(_$CardPaymentDetailsImpl value,
          $Res Function(_$CardPaymentDetailsImpl) then) =
      __$$CardPaymentDetailsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String applicationIdentifier,
      String applicationName,
      String authorizationCode,
      Card card,
      EntryMethod entryMethod,
      CardPaymentStatus status});

  @override
  $CardCopyWith<$Res> get card;
}

/// @nodoc
class __$$CardPaymentDetailsImplCopyWithImpl<$Res>
    extends _$CardPaymentDetailsCopyWithImpl<$Res, _$CardPaymentDetailsImpl>
    implements _$$CardPaymentDetailsImplCopyWith<$Res> {
  __$$CardPaymentDetailsImplCopyWithImpl(_$CardPaymentDetailsImpl _value,
      $Res Function(_$CardPaymentDetailsImpl) _then)
      : super(_value, _then);

  /// Create a copy of CardPaymentDetails
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? applicationIdentifier = null,
    Object? applicationName = null,
    Object? authorizationCode = null,
    Object? card = null,
    Object? entryMethod = null,
    Object? status = null,
  }) {
    return _then(_$CardPaymentDetailsImpl(
      applicationIdentifier: null == applicationIdentifier
          ? _value.applicationIdentifier
          : applicationIdentifier // ignore: cast_nullable_to_non_nullable
              as String,
      applicationName: null == applicationName
          ? _value.applicationName
          : applicationName // ignore: cast_nullable_to_non_nullable
              as String,
      authorizationCode: null == authorizationCode
          ? _value.authorizationCode
          : authorizationCode // ignore: cast_nullable_to_non_nullable
              as String,
      card: null == card
          ? _value.card
          : card // ignore: cast_nullable_to_non_nullable
              as Card,
      entryMethod: null == entryMethod
          ? _value.entryMethod
          : entryMethod // ignore: cast_nullable_to_non_nullable
              as EntryMethod,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CardPaymentStatus,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CardPaymentDetailsImpl
    with DiagnosticableTreeMixin
    implements _CardPaymentDetails {
  const _$CardPaymentDetailsImpl(
      {required this.applicationIdentifier,
      required this.applicationName,
      required this.authorizationCode,
      required this.card,
      required this.entryMethod,
      required this.status});

  factory _$CardPaymentDetailsImpl.fromJson(Map<String, dynamic> json) =>
      _$$CardPaymentDetailsImplFromJson(json);

  @override
  final String applicationIdentifier;
  @override
  final String applicationName;
  @override
  final String authorizationCode;
  @override
  final Card card;
  @override
  final EntryMethod entryMethod;
  @override
  final CardPaymentStatus status;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CardPaymentDetails(applicationIdentifier: $applicationIdentifier, applicationName: $applicationName, authorizationCode: $authorizationCode, card: $card, entryMethod: $entryMethod, status: $status)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CardPaymentDetails'))
      ..add(DiagnosticsProperty('applicationIdentifier', applicationIdentifier))
      ..add(DiagnosticsProperty('applicationName', applicationName))
      ..add(DiagnosticsProperty('authorizationCode', authorizationCode))
      ..add(DiagnosticsProperty('card', card))
      ..add(DiagnosticsProperty('entryMethod', entryMethod))
      ..add(DiagnosticsProperty('status', status));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CardPaymentDetailsImpl &&
            (identical(other.applicationIdentifier, applicationIdentifier) ||
                other.applicationIdentifier == applicationIdentifier) &&
            (identical(other.applicationName, applicationName) ||
                other.applicationName == applicationName) &&
            (identical(other.authorizationCode, authorizationCode) ||
                other.authorizationCode == authorizationCode) &&
            (identical(other.card, card) || other.card == card) &&
            (identical(other.entryMethod, entryMethod) ||
                other.entryMethod == entryMethod) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, applicationIdentifier,
      applicationName, authorizationCode, card, entryMethod, status);

  /// Create a copy of CardPaymentDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CardPaymentDetailsImplCopyWith<_$CardPaymentDetailsImpl> get copyWith =>
      __$$CardPaymentDetailsImplCopyWithImpl<_$CardPaymentDetailsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CardPaymentDetailsImplToJson(
      this,
    );
  }
}

abstract class _CardPaymentDetails implements CardPaymentDetails {
  const factory _CardPaymentDetails(
      {required final String applicationIdentifier,
      required final String applicationName,
      required final String authorizationCode,
      required final Card card,
      required final EntryMethod entryMethod,
      required final CardPaymentStatus status}) = _$CardPaymentDetailsImpl;

  factory _CardPaymentDetails.fromJson(Map<String, dynamic> json) =
      _$CardPaymentDetailsImpl.fromJson;

  @override
  String get applicationIdentifier;
  @override
  String get applicationName;
  @override
  String get authorizationCode;
  @override
  Card get card;
  @override
  EntryMethod get entryMethod;
  @override
  CardPaymentStatus get status;

  /// Create a copy of CardPaymentDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CardPaymentDetailsImplCopyWith<_$CardPaymentDetailsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CardInputMethods _$CardInputMethodsFromJson(Map<String, dynamic> json) {
  return _CardInputMethods.fromJson(json);
}

/// @nodoc
mixin _$CardInputMethods {
  int get chip => throw _privateConstructorUsedError;
  int get contactless => throw _privateConstructorUsedError;
  int get swipe => throw _privateConstructorUsedError;

  /// Serializes this CardInputMethods to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CardInputMethods
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CardInputMethodsCopyWith<CardInputMethods> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CardInputMethodsCopyWith<$Res> {
  factory $CardInputMethodsCopyWith(
          CardInputMethods value, $Res Function(CardInputMethods) then) =
      _$CardInputMethodsCopyWithImpl<$Res, CardInputMethods>;
  @useResult
  $Res call({int chip, int contactless, int swipe});
}

/// @nodoc
class _$CardInputMethodsCopyWithImpl<$Res, $Val extends CardInputMethods>
    implements $CardInputMethodsCopyWith<$Res> {
  _$CardInputMethodsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CardInputMethods
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chip = null,
    Object? contactless = null,
    Object? swipe = null,
  }) {
    return _then(_value.copyWith(
      chip: null == chip
          ? _value.chip
          : chip // ignore: cast_nullable_to_non_nullable
              as int,
      contactless: null == contactless
          ? _value.contactless
          : contactless // ignore: cast_nullable_to_non_nullable
              as int,
      swipe: null == swipe
          ? _value.swipe
          : swipe // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CardInputMethodsImplCopyWith<$Res>
    implements $CardInputMethodsCopyWith<$Res> {
  factory _$$CardInputMethodsImplCopyWith(_$CardInputMethodsImpl value,
          $Res Function(_$CardInputMethodsImpl) then) =
      __$$CardInputMethodsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int chip, int contactless, int swipe});
}

/// @nodoc
class __$$CardInputMethodsImplCopyWithImpl<$Res>
    extends _$CardInputMethodsCopyWithImpl<$Res, _$CardInputMethodsImpl>
    implements _$$CardInputMethodsImplCopyWith<$Res> {
  __$$CardInputMethodsImplCopyWithImpl(_$CardInputMethodsImpl _value,
      $Res Function(_$CardInputMethodsImpl) _then)
      : super(_value, _then);

  /// Create a copy of CardInputMethods
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chip = null,
    Object? contactless = null,
    Object? swipe = null,
  }) {
    return _then(_$CardInputMethodsImpl(
      chip: null == chip
          ? _value.chip
          : chip // ignore: cast_nullable_to_non_nullable
              as int,
      contactless: null == contactless
          ? _value.contactless
          : contactless // ignore: cast_nullable_to_non_nullable
              as int,
      swipe: null == swipe
          ? _value.swipe
          : swipe // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CardInputMethodsImpl
    with DiagnosticableTreeMixin
    implements _CardInputMethods {
  const _$CardInputMethodsImpl(
      {required this.chip, required this.contactless, required this.swipe});

  factory _$CardInputMethodsImpl.fromJson(Map<String, dynamic> json) =>
      _$$CardInputMethodsImplFromJson(json);

  @override
  final int chip;
  @override
  final int contactless;
  @override
  final int swipe;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CardInputMethods(chip: $chip, contactless: $contactless, swipe: $swipe)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CardInputMethods'))
      ..add(DiagnosticsProperty('chip', chip))
      ..add(DiagnosticsProperty('contactless', contactless))
      ..add(DiagnosticsProperty('swipe', swipe));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CardInputMethodsImpl &&
            (identical(other.chip, chip) || other.chip == chip) &&
            (identical(other.contactless, contactless) ||
                other.contactless == contactless) &&
            (identical(other.swipe, swipe) || other.swipe == swipe));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, chip, contactless, swipe);

  /// Create a copy of CardInputMethods
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CardInputMethodsImplCopyWith<_$CardInputMethodsImpl> get copyWith =>
      __$$CardInputMethodsImplCopyWithImpl<_$CardInputMethodsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CardInputMethodsImplToJson(
      this,
    );
  }
}

abstract class _CardInputMethods implements CardInputMethods {
  const factory _CardInputMethods(
      {required final int chip,
      required final int contactless,
      required final int swipe}) = _$CardInputMethodsImpl;

  factory _CardInputMethods.fromJson(Map<String, dynamic> json) =
      _$CardInputMethodsImpl.fromJson;

  @override
  int get chip;
  @override
  int get contactless;
  @override
  int get swipe;

  /// Create a copy of CardInputMethods
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CardInputMethodsImplCopyWith<_$CardInputMethodsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ReaderBatteryStatus _$ReaderBatteryStatusFromJson(Map<String, dynamic> json) {
  return _ReaderBatteryStatus.fromJson(json);
}

/// @nodoc
mixin _$ReaderBatteryStatus {
  int get isCharging => throw _privateConstructorUsedError;
  ReaderBatteryLevel get level => throw _privateConstructorUsedError;
  num get percentage => throw _privateConstructorUsedError;

  /// Serializes this ReaderBatteryStatus to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ReaderBatteryStatus
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReaderBatteryStatusCopyWith<ReaderBatteryStatus> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReaderBatteryStatusCopyWith<$Res> {
  factory $ReaderBatteryStatusCopyWith(
          ReaderBatteryStatus value, $Res Function(ReaderBatteryStatus) then) =
      _$ReaderBatteryStatusCopyWithImpl<$Res, ReaderBatteryStatus>;
  @useResult
  $Res call({int isCharging, ReaderBatteryLevel level, num percentage});
}

/// @nodoc
class _$ReaderBatteryStatusCopyWithImpl<$Res, $Val extends ReaderBatteryStatus>
    implements $ReaderBatteryStatusCopyWith<$Res> {
  _$ReaderBatteryStatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReaderBatteryStatus
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isCharging = null,
    Object? level = null,
    Object? percentage = null,
  }) {
    return _then(_value.copyWith(
      isCharging: null == isCharging
          ? _value.isCharging
          : isCharging // ignore: cast_nullable_to_non_nullable
              as int,
      level: null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as ReaderBatteryLevel,
      percentage: null == percentage
          ? _value.percentage
          : percentage // ignore: cast_nullable_to_non_nullable
              as num,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReaderBatteryStatusImplCopyWith<$Res>
    implements $ReaderBatteryStatusCopyWith<$Res> {
  factory _$$ReaderBatteryStatusImplCopyWith(_$ReaderBatteryStatusImpl value,
          $Res Function(_$ReaderBatteryStatusImpl) then) =
      __$$ReaderBatteryStatusImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int isCharging, ReaderBatteryLevel level, num percentage});
}

/// @nodoc
class __$$ReaderBatteryStatusImplCopyWithImpl<$Res>
    extends _$ReaderBatteryStatusCopyWithImpl<$Res, _$ReaderBatteryStatusImpl>
    implements _$$ReaderBatteryStatusImplCopyWith<$Res> {
  __$$ReaderBatteryStatusImplCopyWithImpl(_$ReaderBatteryStatusImpl _value,
      $Res Function(_$ReaderBatteryStatusImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReaderBatteryStatus
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isCharging = null,
    Object? level = null,
    Object? percentage = null,
  }) {
    return _then(_$ReaderBatteryStatusImpl(
      isCharging: null == isCharging
          ? _value.isCharging
          : isCharging // ignore: cast_nullable_to_non_nullable
              as int,
      level: null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as ReaderBatteryLevel,
      percentage: null == percentage
          ? _value.percentage
          : percentage // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReaderBatteryStatusImpl
    with DiagnosticableTreeMixin
    implements _ReaderBatteryStatus {
  const _$ReaderBatteryStatusImpl(
      {required this.isCharging, required this.level, this.percentage = 0});

  factory _$ReaderBatteryStatusImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReaderBatteryStatusImplFromJson(json);

  @override
  final int isCharging;
  @override
  final ReaderBatteryLevel level;
  @override
  @JsonKey()
  final num percentage;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ReaderBatteryStatus(isCharging: $isCharging, level: $level, percentage: $percentage)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ReaderBatteryStatus'))
      ..add(DiagnosticsProperty('isCharging', isCharging))
      ..add(DiagnosticsProperty('level', level))
      ..add(DiagnosticsProperty('percentage', percentage));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReaderBatteryStatusImpl &&
            (identical(other.isCharging, isCharging) ||
                other.isCharging == isCharging) &&
            (identical(other.level, level) || other.level == level) &&
            (identical(other.percentage, percentage) ||
                other.percentage == percentage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, isCharging, level, percentage);

  /// Create a copy of ReaderBatteryStatus
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReaderBatteryStatusImplCopyWith<_$ReaderBatteryStatusImpl> get copyWith =>
      __$$ReaderBatteryStatusImplCopyWithImpl<_$ReaderBatteryStatusImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReaderBatteryStatusImplToJson(
      this,
    );
  }
}

abstract class _ReaderBatteryStatus implements ReaderBatteryStatus {
  const factory _ReaderBatteryStatus(
      {required final int isCharging,
      required final ReaderBatteryLevel level,
      final num percentage}) = _$ReaderBatteryStatusImpl;

  factory _ReaderBatteryStatus.fromJson(Map<String, dynamic> json) =
      _$ReaderBatteryStatusImpl.fromJson;

  @override
  int get isCharging;
  @override
  ReaderBatteryLevel get level;
  @override
  num get percentage;

  /// Create a copy of ReaderBatteryStatus
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReaderBatteryStatusImplCopyWith<_$ReaderBatteryStatusImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ReaderConnectionFailureInfo _$ReaderConnectionFailureInfoFromJson(
    Map<String, dynamic> json) {
  return _ReaderConnectionFailureInfo.fromJson(json);
}

/// @nodoc
mixin _$ReaderConnectionFailureInfo {
  ReaderConnectionFailureReason get failureReason =>
      throw _privateConstructorUsedError;
  String get localizedDescription => throw _privateConstructorUsedError;
  String get localizedTitle => throw _privateConstructorUsedError;
  ReaderConnectionFailureRecoverySuggestion get recoverySuggestion =>
      throw _privateConstructorUsedError;

  /// Serializes this ReaderConnectionFailureInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ReaderConnectionFailureInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReaderConnectionFailureInfoCopyWith<ReaderConnectionFailureInfo>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReaderConnectionFailureInfoCopyWith<$Res> {
  factory $ReaderConnectionFailureInfoCopyWith(
          ReaderConnectionFailureInfo value,
          $Res Function(ReaderConnectionFailureInfo) then) =
      _$ReaderConnectionFailureInfoCopyWithImpl<$Res,
          ReaderConnectionFailureInfo>;
  @useResult
  $Res call(
      {ReaderConnectionFailureReason failureReason,
      String localizedDescription,
      String localizedTitle,
      ReaderConnectionFailureRecoverySuggestion recoverySuggestion});
}

/// @nodoc
class _$ReaderConnectionFailureInfoCopyWithImpl<$Res,
        $Val extends ReaderConnectionFailureInfo>
    implements $ReaderConnectionFailureInfoCopyWith<$Res> {
  _$ReaderConnectionFailureInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReaderConnectionFailureInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failureReason = null,
    Object? localizedDescription = null,
    Object? localizedTitle = null,
    Object? recoverySuggestion = null,
  }) {
    return _then(_value.copyWith(
      failureReason: null == failureReason
          ? _value.failureReason
          : failureReason // ignore: cast_nullable_to_non_nullable
              as ReaderConnectionFailureReason,
      localizedDescription: null == localizedDescription
          ? _value.localizedDescription
          : localizedDescription // ignore: cast_nullable_to_non_nullable
              as String,
      localizedTitle: null == localizedTitle
          ? _value.localizedTitle
          : localizedTitle // ignore: cast_nullable_to_non_nullable
              as String,
      recoverySuggestion: null == recoverySuggestion
          ? _value.recoverySuggestion
          : recoverySuggestion // ignore: cast_nullable_to_non_nullable
              as ReaderConnectionFailureRecoverySuggestion,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReaderConnectionFailureInfoImplCopyWith<$Res>
    implements $ReaderConnectionFailureInfoCopyWith<$Res> {
  factory _$$ReaderConnectionFailureInfoImplCopyWith(
          _$ReaderConnectionFailureInfoImpl value,
          $Res Function(_$ReaderConnectionFailureInfoImpl) then) =
      __$$ReaderConnectionFailureInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ReaderConnectionFailureReason failureReason,
      String localizedDescription,
      String localizedTitle,
      ReaderConnectionFailureRecoverySuggestion recoverySuggestion});
}

/// @nodoc
class __$$ReaderConnectionFailureInfoImplCopyWithImpl<$Res>
    extends _$ReaderConnectionFailureInfoCopyWithImpl<$Res,
        _$ReaderConnectionFailureInfoImpl>
    implements _$$ReaderConnectionFailureInfoImplCopyWith<$Res> {
  __$$ReaderConnectionFailureInfoImplCopyWithImpl(
      _$ReaderConnectionFailureInfoImpl _value,
      $Res Function(_$ReaderConnectionFailureInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReaderConnectionFailureInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failureReason = null,
    Object? localizedDescription = null,
    Object? localizedTitle = null,
    Object? recoverySuggestion = null,
  }) {
    return _then(_$ReaderConnectionFailureInfoImpl(
      failureReason: null == failureReason
          ? _value.failureReason
          : failureReason // ignore: cast_nullable_to_non_nullable
              as ReaderConnectionFailureReason,
      localizedDescription: null == localizedDescription
          ? _value.localizedDescription
          : localizedDescription // ignore: cast_nullable_to_non_nullable
              as String,
      localizedTitle: null == localizedTitle
          ? _value.localizedTitle
          : localizedTitle // ignore: cast_nullable_to_non_nullable
              as String,
      recoverySuggestion: null == recoverySuggestion
          ? _value.recoverySuggestion
          : recoverySuggestion // ignore: cast_nullable_to_non_nullable
              as ReaderConnectionFailureRecoverySuggestion,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReaderConnectionFailureInfoImpl
    with DiagnosticableTreeMixin
    implements _ReaderConnectionFailureInfo {
  const _$ReaderConnectionFailureInfoImpl(
      {required this.failureReason,
      required this.localizedDescription,
      required this.localizedTitle,
      required this.recoverySuggestion});

  factory _$ReaderConnectionFailureInfoImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ReaderConnectionFailureInfoImplFromJson(json);

  @override
  final ReaderConnectionFailureReason failureReason;
  @override
  final String localizedDescription;
  @override
  final String localizedTitle;
  @override
  final ReaderConnectionFailureRecoverySuggestion recoverySuggestion;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ReaderConnectionFailureInfo(failureReason: $failureReason, localizedDescription: $localizedDescription, localizedTitle: $localizedTitle, recoverySuggestion: $recoverySuggestion)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ReaderConnectionFailureInfo'))
      ..add(DiagnosticsProperty('failureReason', failureReason))
      ..add(DiagnosticsProperty('localizedDescription', localizedDescription))
      ..add(DiagnosticsProperty('localizedTitle', localizedTitle))
      ..add(DiagnosticsProperty('recoverySuggestion', recoverySuggestion));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReaderConnectionFailureInfoImpl &&
            (identical(other.failureReason, failureReason) ||
                other.failureReason == failureReason) &&
            (identical(other.localizedDescription, localizedDescription) ||
                other.localizedDescription == localizedDescription) &&
            (identical(other.localizedTitle, localizedTitle) ||
                other.localizedTitle == localizedTitle) &&
            (identical(other.recoverySuggestion, recoverySuggestion) ||
                other.recoverySuggestion == recoverySuggestion));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, failureReason,
      localizedDescription, localizedTitle, recoverySuggestion);

  /// Create a copy of ReaderConnectionFailureInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReaderConnectionFailureInfoImplCopyWith<_$ReaderConnectionFailureInfoImpl>
      get copyWith => __$$ReaderConnectionFailureInfoImplCopyWithImpl<
          _$ReaderConnectionFailureInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReaderConnectionFailureInfoImplToJson(
      this,
    );
  }
}

abstract class _ReaderConnectionFailureInfo
    implements ReaderConnectionFailureInfo {
  const factory _ReaderConnectionFailureInfo(
      {required final ReaderConnectionFailureReason failureReason,
      required final String localizedDescription,
      required final String localizedTitle,
      required final ReaderConnectionFailureRecoverySuggestion
          recoverySuggestion}) = _$ReaderConnectionFailureInfoImpl;

  factory _ReaderConnectionFailureInfo.fromJson(Map<String, dynamic> json) =
      _$ReaderConnectionFailureInfoImpl.fromJson;

  @override
  ReaderConnectionFailureReason get failureReason;
  @override
  String get localizedDescription;
  @override
  String get localizedTitle;
  @override
  ReaderConnectionFailureRecoverySuggestion get recoverySuggestion;

  /// Create a copy of ReaderConnectionFailureInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReaderConnectionFailureInfoImplCopyWith<_$ReaderConnectionFailureInfoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ReaderConnectionInfo _$ReaderConnectionInfoFromJson(Map<String, dynamic> json) {
  return _ReaderConnectionInfo.fromJson(json);
}

/// @nodoc
mixin _$ReaderConnectionInfo {
  ReaderConnectionFailureInfo get failureInfo =>
      throw _privateConstructorUsedError;
  ReaderConnectionState get state => throw _privateConstructorUsedError;

  /// Serializes this ReaderConnectionInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ReaderConnectionInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReaderConnectionInfoCopyWith<ReaderConnectionInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReaderConnectionInfoCopyWith<$Res> {
  factory $ReaderConnectionInfoCopyWith(ReaderConnectionInfo value,
          $Res Function(ReaderConnectionInfo) then) =
      _$ReaderConnectionInfoCopyWithImpl<$Res, ReaderConnectionInfo>;
  @useResult
  $Res call(
      {ReaderConnectionFailureInfo failureInfo, ReaderConnectionState state});

  $ReaderConnectionFailureInfoCopyWith<$Res> get failureInfo;
}

/// @nodoc
class _$ReaderConnectionInfoCopyWithImpl<$Res,
        $Val extends ReaderConnectionInfo>
    implements $ReaderConnectionInfoCopyWith<$Res> {
  _$ReaderConnectionInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReaderConnectionInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failureInfo = null,
    Object? state = null,
  }) {
    return _then(_value.copyWith(
      failureInfo: null == failureInfo
          ? _value.failureInfo
          : failureInfo // ignore: cast_nullable_to_non_nullable
              as ReaderConnectionFailureInfo,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as ReaderConnectionState,
    ) as $Val);
  }

  /// Create a copy of ReaderConnectionInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ReaderConnectionFailureInfoCopyWith<$Res> get failureInfo {
    return $ReaderConnectionFailureInfoCopyWith<$Res>(_value.failureInfo,
        (value) {
      return _then(_value.copyWith(failureInfo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ReaderConnectionInfoImplCopyWith<$Res>
    implements $ReaderConnectionInfoCopyWith<$Res> {
  factory _$$ReaderConnectionInfoImplCopyWith(_$ReaderConnectionInfoImpl value,
          $Res Function(_$ReaderConnectionInfoImpl) then) =
      __$$ReaderConnectionInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ReaderConnectionFailureInfo failureInfo, ReaderConnectionState state});

  @override
  $ReaderConnectionFailureInfoCopyWith<$Res> get failureInfo;
}

/// @nodoc
class __$$ReaderConnectionInfoImplCopyWithImpl<$Res>
    extends _$ReaderConnectionInfoCopyWithImpl<$Res, _$ReaderConnectionInfoImpl>
    implements _$$ReaderConnectionInfoImplCopyWith<$Res> {
  __$$ReaderConnectionInfoImplCopyWithImpl(_$ReaderConnectionInfoImpl _value,
      $Res Function(_$ReaderConnectionInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReaderConnectionInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failureInfo = null,
    Object? state = null,
  }) {
    return _then(_$ReaderConnectionInfoImpl(
      failureInfo: null == failureInfo
          ? _value.failureInfo
          : failureInfo // ignore: cast_nullable_to_non_nullable
              as ReaderConnectionFailureInfo,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as ReaderConnectionState,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReaderConnectionInfoImpl
    with DiagnosticableTreeMixin
    implements _ReaderConnectionInfo {
  const _$ReaderConnectionInfoImpl(
      {required this.failureInfo, required this.state});

  factory _$ReaderConnectionInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReaderConnectionInfoImplFromJson(json);

  @override
  final ReaderConnectionFailureInfo failureInfo;
  @override
  final ReaderConnectionState state;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ReaderConnectionInfo(failureInfo: $failureInfo, state: $state)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ReaderConnectionInfo'))
      ..add(DiagnosticsProperty('failureInfo', failureInfo))
      ..add(DiagnosticsProperty('state', state));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReaderConnectionInfoImpl &&
            (identical(other.failureInfo, failureInfo) ||
                other.failureInfo == failureInfo) &&
            (identical(other.state, state) || other.state == state));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, failureInfo, state);

  /// Create a copy of ReaderConnectionInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReaderConnectionInfoImplCopyWith<_$ReaderConnectionInfoImpl>
      get copyWith =>
          __$$ReaderConnectionInfoImplCopyWithImpl<_$ReaderConnectionInfoImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReaderConnectionInfoImplToJson(
      this,
    );
  }
}

abstract class _ReaderConnectionInfo implements ReaderConnectionInfo {
  const factory _ReaderConnectionInfo(
      {required final ReaderConnectionFailureInfo failureInfo,
      required final ReaderConnectionState state}) = _$ReaderConnectionInfoImpl;

  factory _ReaderConnectionInfo.fromJson(Map<String, dynamic> json) =
      _$ReaderConnectionInfoImpl.fromJson;

  @override
  ReaderConnectionFailureInfo get failureInfo;
  @override
  ReaderConnectionState get state;

  /// Create a copy of ReaderConnectionInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReaderConnectionInfoImplCopyWith<_$ReaderConnectionInfoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ReaderFirmwareInfo _$ReaderFirmwareInfoFromJson(Map<String, dynamic> json) {
  return _ReaderFirmwareInfo.fromJson(json);
}

/// @nodoc
mixin _$ReaderFirmwareInfo {
  String get failureReason => throw _privateConstructorUsedError;
  double get updatePercentage => throw _privateConstructorUsedError;
  String get version => throw _privateConstructorUsedError;

  /// Serializes this ReaderFirmwareInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ReaderFirmwareInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReaderFirmwareInfoCopyWith<ReaderFirmwareInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReaderFirmwareInfoCopyWith<$Res> {
  factory $ReaderFirmwareInfoCopyWith(
          ReaderFirmwareInfo value, $Res Function(ReaderFirmwareInfo) then) =
      _$ReaderFirmwareInfoCopyWithImpl<$Res, ReaderFirmwareInfo>;
  @useResult
  $Res call({String failureReason, double updatePercentage, String version});
}

/// @nodoc
class _$ReaderFirmwareInfoCopyWithImpl<$Res, $Val extends ReaderFirmwareInfo>
    implements $ReaderFirmwareInfoCopyWith<$Res> {
  _$ReaderFirmwareInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReaderFirmwareInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failureReason = null,
    Object? updatePercentage = null,
    Object? version = null,
  }) {
    return _then(_value.copyWith(
      failureReason: null == failureReason
          ? _value.failureReason
          : failureReason // ignore: cast_nullable_to_non_nullable
              as String,
      updatePercentage: null == updatePercentage
          ? _value.updatePercentage
          : updatePercentage // ignore: cast_nullable_to_non_nullable
              as double,
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReaderFirmwareInfoImplCopyWith<$Res>
    implements $ReaderFirmwareInfoCopyWith<$Res> {
  factory _$$ReaderFirmwareInfoImplCopyWith(_$ReaderFirmwareInfoImpl value,
          $Res Function(_$ReaderFirmwareInfoImpl) then) =
      __$$ReaderFirmwareInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String failureReason, double updatePercentage, String version});
}

/// @nodoc
class __$$ReaderFirmwareInfoImplCopyWithImpl<$Res>
    extends _$ReaderFirmwareInfoCopyWithImpl<$Res, _$ReaderFirmwareInfoImpl>
    implements _$$ReaderFirmwareInfoImplCopyWith<$Res> {
  __$$ReaderFirmwareInfoImplCopyWithImpl(_$ReaderFirmwareInfoImpl _value,
      $Res Function(_$ReaderFirmwareInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReaderFirmwareInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failureReason = null,
    Object? updatePercentage = null,
    Object? version = null,
  }) {
    return _then(_$ReaderFirmwareInfoImpl(
      failureReason: null == failureReason
          ? _value.failureReason
          : failureReason // ignore: cast_nullable_to_non_nullable
              as String,
      updatePercentage: null == updatePercentage
          ? _value.updatePercentage
          : updatePercentage // ignore: cast_nullable_to_non_nullable
              as double,
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReaderFirmwareInfoImpl
    with DiagnosticableTreeMixin
    implements _ReaderFirmwareInfo {
  const _$ReaderFirmwareInfoImpl(
      {required this.failureReason,
      required this.updatePercentage,
      required this.version});

  factory _$ReaderFirmwareInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReaderFirmwareInfoImplFromJson(json);

  @override
  final String failureReason;
  @override
  final double updatePercentage;
  @override
  final String version;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ReaderFirmwareInfo(failureReason: $failureReason, updatePercentage: $updatePercentage, version: $version)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ReaderFirmwareInfo'))
      ..add(DiagnosticsProperty('failureReason', failureReason))
      ..add(DiagnosticsProperty('updatePercentage', updatePercentage))
      ..add(DiagnosticsProperty('version', version));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReaderFirmwareInfoImpl &&
            (identical(other.failureReason, failureReason) ||
                other.failureReason == failureReason) &&
            (identical(other.updatePercentage, updatePercentage) ||
                other.updatePercentage == updatePercentage) &&
            (identical(other.version, version) || other.version == version));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, failureReason, updatePercentage, version);

  /// Create a copy of ReaderFirmwareInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReaderFirmwareInfoImplCopyWith<_$ReaderFirmwareInfoImpl> get copyWith =>
      __$$ReaderFirmwareInfoImplCopyWithImpl<_$ReaderFirmwareInfoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReaderFirmwareInfoImplToJson(
      this,
    );
  }
}

abstract class _ReaderFirmwareInfo implements ReaderFirmwareInfo {
  const factory _ReaderFirmwareInfo(
      {required final String failureReason,
      required final double updatePercentage,
      required final String version}) = _$ReaderFirmwareInfoImpl;

  factory _ReaderFirmwareInfo.fromJson(Map<String, dynamic> json) =
      _$ReaderFirmwareInfoImpl.fromJson;

  @override
  String get failureReason;
  @override
  double get updatePercentage;
  @override
  String get version;

  /// Create a copy of ReaderFirmwareInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReaderFirmwareInfoImplCopyWith<_$ReaderFirmwareInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ReaderInfo _$ReaderInfoFromJson(Map<String, dynamic> json) {
  return _ReaderInfo.fromJson(json);
}

/// @nodoc
mixin _$ReaderInfo {
  ReaderBatteryStatus get batteryStatus => throw _privateConstructorUsedError;
  CardInsertionStatus get cardInsertionStatus =>
      throw _privateConstructorUsedError;
  ReaderConnectionInfo get connectionInfo => throw _privateConstructorUsedError;
  ReaderFirmwareInfo get firmwareInfo => throw _privateConstructorUsedError;
  num get id => throw _privateConstructorUsedError;
  int get isBlinkable => throw _privateConstructorUsedError;
  int get isConnectionRetryable => throw _privateConstructorUsedError;
  int get isForgettable => throw _privateConstructorUsedError;
  ReaderModel get model => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get serialNumber => throw _privateConstructorUsedError;
  ReaderState get state => throw _privateConstructorUsedError;
  List<CardInputMethods> get supportedInputMethods =>
      throw _privateConstructorUsedError;

  /// Serializes this ReaderInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ReaderInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReaderInfoCopyWith<ReaderInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReaderInfoCopyWith<$Res> {
  factory $ReaderInfoCopyWith(
          ReaderInfo value, $Res Function(ReaderInfo) then) =
      _$ReaderInfoCopyWithImpl<$Res, ReaderInfo>;
  @useResult
  $Res call(
      {ReaderBatteryStatus batteryStatus,
      CardInsertionStatus cardInsertionStatus,
      ReaderConnectionInfo connectionInfo,
      ReaderFirmwareInfo firmwareInfo,
      num id,
      int isBlinkable,
      int isConnectionRetryable,
      int isForgettable,
      ReaderModel model,
      String name,
      String serialNumber,
      ReaderState state,
      List<CardInputMethods> supportedInputMethods});

  $ReaderBatteryStatusCopyWith<$Res> get batteryStatus;
  $ReaderConnectionInfoCopyWith<$Res> get connectionInfo;
  $ReaderFirmwareInfoCopyWith<$Res> get firmwareInfo;
}

/// @nodoc
class _$ReaderInfoCopyWithImpl<$Res, $Val extends ReaderInfo>
    implements $ReaderInfoCopyWith<$Res> {
  _$ReaderInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReaderInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? batteryStatus = null,
    Object? cardInsertionStatus = null,
    Object? connectionInfo = null,
    Object? firmwareInfo = null,
    Object? id = null,
    Object? isBlinkable = null,
    Object? isConnectionRetryable = null,
    Object? isForgettable = null,
    Object? model = null,
    Object? name = null,
    Object? serialNumber = null,
    Object? state = null,
    Object? supportedInputMethods = null,
  }) {
    return _then(_value.copyWith(
      batteryStatus: null == batteryStatus
          ? _value.batteryStatus
          : batteryStatus // ignore: cast_nullable_to_non_nullable
              as ReaderBatteryStatus,
      cardInsertionStatus: null == cardInsertionStatus
          ? _value.cardInsertionStatus
          : cardInsertionStatus // ignore: cast_nullable_to_non_nullable
              as CardInsertionStatus,
      connectionInfo: null == connectionInfo
          ? _value.connectionInfo
          : connectionInfo // ignore: cast_nullable_to_non_nullable
              as ReaderConnectionInfo,
      firmwareInfo: null == firmwareInfo
          ? _value.firmwareInfo
          : firmwareInfo // ignore: cast_nullable_to_non_nullable
              as ReaderFirmwareInfo,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as num,
      isBlinkable: null == isBlinkable
          ? _value.isBlinkable
          : isBlinkable // ignore: cast_nullable_to_non_nullable
              as int,
      isConnectionRetryable: null == isConnectionRetryable
          ? _value.isConnectionRetryable
          : isConnectionRetryable // ignore: cast_nullable_to_non_nullable
              as int,
      isForgettable: null == isForgettable
          ? _value.isForgettable
          : isForgettable // ignore: cast_nullable_to_non_nullable
              as int,
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as ReaderModel,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      serialNumber: null == serialNumber
          ? _value.serialNumber
          : serialNumber // ignore: cast_nullable_to_non_nullable
              as String,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as ReaderState,
      supportedInputMethods: null == supportedInputMethods
          ? _value.supportedInputMethods
          : supportedInputMethods // ignore: cast_nullable_to_non_nullable
              as List<CardInputMethods>,
    ) as $Val);
  }

  /// Create a copy of ReaderInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ReaderBatteryStatusCopyWith<$Res> get batteryStatus {
    return $ReaderBatteryStatusCopyWith<$Res>(_value.batteryStatus, (value) {
      return _then(_value.copyWith(batteryStatus: value) as $Val);
    });
  }

  /// Create a copy of ReaderInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ReaderConnectionInfoCopyWith<$Res> get connectionInfo {
    return $ReaderConnectionInfoCopyWith<$Res>(_value.connectionInfo, (value) {
      return _then(_value.copyWith(connectionInfo: value) as $Val);
    });
  }

  /// Create a copy of ReaderInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ReaderFirmwareInfoCopyWith<$Res> get firmwareInfo {
    return $ReaderFirmwareInfoCopyWith<$Res>(_value.firmwareInfo, (value) {
      return _then(_value.copyWith(firmwareInfo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ReaderInfoImplCopyWith<$Res>
    implements $ReaderInfoCopyWith<$Res> {
  factory _$$ReaderInfoImplCopyWith(
          _$ReaderInfoImpl value, $Res Function(_$ReaderInfoImpl) then) =
      __$$ReaderInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ReaderBatteryStatus batteryStatus,
      CardInsertionStatus cardInsertionStatus,
      ReaderConnectionInfo connectionInfo,
      ReaderFirmwareInfo firmwareInfo,
      num id,
      int isBlinkable,
      int isConnectionRetryable,
      int isForgettable,
      ReaderModel model,
      String name,
      String serialNumber,
      ReaderState state,
      List<CardInputMethods> supportedInputMethods});

  @override
  $ReaderBatteryStatusCopyWith<$Res> get batteryStatus;
  @override
  $ReaderConnectionInfoCopyWith<$Res> get connectionInfo;
  @override
  $ReaderFirmwareInfoCopyWith<$Res> get firmwareInfo;
}

/// @nodoc
class __$$ReaderInfoImplCopyWithImpl<$Res>
    extends _$ReaderInfoCopyWithImpl<$Res, _$ReaderInfoImpl>
    implements _$$ReaderInfoImplCopyWith<$Res> {
  __$$ReaderInfoImplCopyWithImpl(
      _$ReaderInfoImpl _value, $Res Function(_$ReaderInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReaderInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? batteryStatus = null,
    Object? cardInsertionStatus = null,
    Object? connectionInfo = null,
    Object? firmwareInfo = null,
    Object? id = null,
    Object? isBlinkable = null,
    Object? isConnectionRetryable = null,
    Object? isForgettable = null,
    Object? model = null,
    Object? name = null,
    Object? serialNumber = null,
    Object? state = null,
    Object? supportedInputMethods = null,
  }) {
    return _then(_$ReaderInfoImpl(
      batteryStatus: null == batteryStatus
          ? _value.batteryStatus
          : batteryStatus // ignore: cast_nullable_to_non_nullable
              as ReaderBatteryStatus,
      cardInsertionStatus: null == cardInsertionStatus
          ? _value.cardInsertionStatus
          : cardInsertionStatus // ignore: cast_nullable_to_non_nullable
              as CardInsertionStatus,
      connectionInfo: null == connectionInfo
          ? _value.connectionInfo
          : connectionInfo // ignore: cast_nullable_to_non_nullable
              as ReaderConnectionInfo,
      firmwareInfo: null == firmwareInfo
          ? _value.firmwareInfo
          : firmwareInfo // ignore: cast_nullable_to_non_nullable
              as ReaderFirmwareInfo,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as num,
      isBlinkable: null == isBlinkable
          ? _value.isBlinkable
          : isBlinkable // ignore: cast_nullable_to_non_nullable
              as int,
      isConnectionRetryable: null == isConnectionRetryable
          ? _value.isConnectionRetryable
          : isConnectionRetryable // ignore: cast_nullable_to_non_nullable
              as int,
      isForgettable: null == isForgettable
          ? _value.isForgettable
          : isForgettable // ignore: cast_nullable_to_non_nullable
              as int,
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as ReaderModel,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      serialNumber: null == serialNumber
          ? _value.serialNumber
          : serialNumber // ignore: cast_nullable_to_non_nullable
              as String,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as ReaderState,
      supportedInputMethods: null == supportedInputMethods
          ? _value._supportedInputMethods
          : supportedInputMethods // ignore: cast_nullable_to_non_nullable
              as List<CardInputMethods>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReaderInfoImpl with DiagnosticableTreeMixin implements _ReaderInfo {
  const _$ReaderInfoImpl(
      {required this.batteryStatus,
      required this.cardInsertionStatus,
      required this.connectionInfo,
      required this.firmwareInfo,
      this.id = 0,
      required this.isBlinkable,
      required this.isConnectionRetryable,
      required this.isForgettable,
      required this.model,
      required this.name,
      this.serialNumber = "",
      required this.state,
      required final List<CardInputMethods> supportedInputMethods})
      : _supportedInputMethods = supportedInputMethods;

  factory _$ReaderInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReaderInfoImplFromJson(json);

  @override
  final ReaderBatteryStatus batteryStatus;
  @override
  final CardInsertionStatus cardInsertionStatus;
  @override
  final ReaderConnectionInfo connectionInfo;
  @override
  final ReaderFirmwareInfo firmwareInfo;
  @override
  @JsonKey()
  final num id;
  @override
  final int isBlinkable;
  @override
  final int isConnectionRetryable;
  @override
  final int isForgettable;
  @override
  final ReaderModel model;
  @override
  final String name;
  @override
  @JsonKey()
  final String serialNumber;
  @override
  final ReaderState state;
  final List<CardInputMethods> _supportedInputMethods;
  @override
  List<CardInputMethods> get supportedInputMethods {
    if (_supportedInputMethods is EqualUnmodifiableListView)
      return _supportedInputMethods;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_supportedInputMethods);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ReaderInfo(batteryStatus: $batteryStatus, cardInsertionStatus: $cardInsertionStatus, connectionInfo: $connectionInfo, firmwareInfo: $firmwareInfo, id: $id, isBlinkable: $isBlinkable, isConnectionRetryable: $isConnectionRetryable, isForgettable: $isForgettable, model: $model, name: $name, serialNumber: $serialNumber, state: $state, supportedInputMethods: $supportedInputMethods)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ReaderInfo'))
      ..add(DiagnosticsProperty('batteryStatus', batteryStatus))
      ..add(DiagnosticsProperty('cardInsertionStatus', cardInsertionStatus))
      ..add(DiagnosticsProperty('connectionInfo', connectionInfo))
      ..add(DiagnosticsProperty('firmwareInfo', firmwareInfo))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('isBlinkable', isBlinkable))
      ..add(DiagnosticsProperty('isConnectionRetryable', isConnectionRetryable))
      ..add(DiagnosticsProperty('isForgettable', isForgettable))
      ..add(DiagnosticsProperty('model', model))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('serialNumber', serialNumber))
      ..add(DiagnosticsProperty('state', state))
      ..add(
          DiagnosticsProperty('supportedInputMethods', supportedInputMethods));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReaderInfoImpl &&
            (identical(other.batteryStatus, batteryStatus) ||
                other.batteryStatus == batteryStatus) &&
            (identical(other.cardInsertionStatus, cardInsertionStatus) ||
                other.cardInsertionStatus == cardInsertionStatus) &&
            (identical(other.connectionInfo, connectionInfo) ||
                other.connectionInfo == connectionInfo) &&
            (identical(other.firmwareInfo, firmwareInfo) ||
                other.firmwareInfo == firmwareInfo) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.isBlinkable, isBlinkable) ||
                other.isBlinkable == isBlinkable) &&
            (identical(other.isConnectionRetryable, isConnectionRetryable) ||
                other.isConnectionRetryable == isConnectionRetryable) &&
            (identical(other.isForgettable, isForgettable) ||
                other.isForgettable == isForgettable) &&
            (identical(other.model, model) || other.model == model) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.serialNumber, serialNumber) ||
                other.serialNumber == serialNumber) &&
            (identical(other.state, state) || other.state == state) &&
            const DeepCollectionEquality()
                .equals(other._supportedInputMethods, _supportedInputMethods));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      batteryStatus,
      cardInsertionStatus,
      connectionInfo,
      firmwareInfo,
      id,
      isBlinkable,
      isConnectionRetryable,
      isForgettable,
      model,
      name,
      serialNumber,
      state,
      const DeepCollectionEquality().hash(_supportedInputMethods));

  /// Create a copy of ReaderInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReaderInfoImplCopyWith<_$ReaderInfoImpl> get copyWith =>
      __$$ReaderInfoImplCopyWithImpl<_$ReaderInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReaderInfoImplToJson(
      this,
    );
  }
}

abstract class _ReaderInfo implements ReaderInfo {
  const factory _ReaderInfo(
          {required final ReaderBatteryStatus batteryStatus,
          required final CardInsertionStatus cardInsertionStatus,
          required final ReaderConnectionInfo connectionInfo,
          required final ReaderFirmwareInfo firmwareInfo,
          final num id,
          required final int isBlinkable,
          required final int isConnectionRetryable,
          required final int isForgettable,
          required final ReaderModel model,
          required final String name,
          final String serialNumber,
          required final ReaderState state,
          required final List<CardInputMethods> supportedInputMethods}) =
      _$ReaderInfoImpl;

  factory _ReaderInfo.fromJson(Map<String, dynamic> json) =
      _$ReaderInfoImpl.fromJson;

  @override
  ReaderBatteryStatus get batteryStatus;
  @override
  CardInsertionStatus get cardInsertionStatus;
  @override
  ReaderConnectionInfo get connectionInfo;
  @override
  ReaderFirmwareInfo get firmwareInfo;
  @override
  num get id;
  @override
  int get isBlinkable;
  @override
  int get isConnectionRetryable;
  @override
  int get isForgettable;
  @override
  ReaderModel get model;
  @override
  String get name;
  @override
  String get serialNumber;
  @override
  ReaderState get state;
  @override
  List<CardInputMethods> get supportedInputMethods;

  /// Create a copy of ReaderInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReaderInfoImplCopyWith<_$ReaderInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PromptParameters _$PromptParametersFromJson(Map<String, dynamic> json) {
  return _PromptParameters.fromJson(json);
}

/// @nodoc
mixin _$PromptParameters {
  List<AdditionalPaymentMethodType> get additionalPaymentMethods =>
      throw _privateConstructorUsedError;
  PromptMode get mode => throw _privateConstructorUsedError;

  /// Serializes this PromptParameters to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PromptParameters
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PromptParametersCopyWith<PromptParameters> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PromptParametersCopyWith<$Res> {
  factory $PromptParametersCopyWith(
          PromptParameters value, $Res Function(PromptParameters) then) =
      _$PromptParametersCopyWithImpl<$Res, PromptParameters>;
  @useResult
  $Res call(
      {List<AdditionalPaymentMethodType> additionalPaymentMethods,
      PromptMode mode});
}

/// @nodoc
class _$PromptParametersCopyWithImpl<$Res, $Val extends PromptParameters>
    implements $PromptParametersCopyWith<$Res> {
  _$PromptParametersCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PromptParameters
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? additionalPaymentMethods = null,
    Object? mode = null,
  }) {
    return _then(_value.copyWith(
      additionalPaymentMethods: null == additionalPaymentMethods
          ? _value.additionalPaymentMethods
          : additionalPaymentMethods // ignore: cast_nullable_to_non_nullable
              as List<AdditionalPaymentMethodType>,
      mode: null == mode
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as PromptMode,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PromptParametersImplCopyWith<$Res>
    implements $PromptParametersCopyWith<$Res> {
  factory _$$PromptParametersImplCopyWith(_$PromptParametersImpl value,
          $Res Function(_$PromptParametersImpl) then) =
      __$$PromptParametersImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<AdditionalPaymentMethodType> additionalPaymentMethods,
      PromptMode mode});
}

/// @nodoc
class __$$PromptParametersImplCopyWithImpl<$Res>
    extends _$PromptParametersCopyWithImpl<$Res, _$PromptParametersImpl>
    implements _$$PromptParametersImplCopyWith<$Res> {
  __$$PromptParametersImplCopyWithImpl(_$PromptParametersImpl _value,
      $Res Function(_$PromptParametersImpl) _then)
      : super(_value, _then);

  /// Create a copy of PromptParameters
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? additionalPaymentMethods = null,
    Object? mode = null,
  }) {
    return _then(_$PromptParametersImpl(
      additionalPaymentMethods: null == additionalPaymentMethods
          ? _value._additionalPaymentMethods
          : additionalPaymentMethods // ignore: cast_nullable_to_non_nullable
              as List<AdditionalPaymentMethodType>,
      mode: null == mode
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as PromptMode,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PromptParametersImpl
    with DiagnosticableTreeMixin
    implements _PromptParameters {
  const _$PromptParametersImpl(
      {required final List<AdditionalPaymentMethodType>
          additionalPaymentMethods,
      required this.mode})
      : _additionalPaymentMethods = additionalPaymentMethods;

  factory _$PromptParametersImpl.fromJson(Map<String, dynamic> json) =>
      _$$PromptParametersImplFromJson(json);

  final List<AdditionalPaymentMethodType> _additionalPaymentMethods;
  @override
  List<AdditionalPaymentMethodType> get additionalPaymentMethods {
    if (_additionalPaymentMethods is EqualUnmodifiableListView)
      return _additionalPaymentMethods;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_additionalPaymentMethods);
  }

  @override
  final PromptMode mode;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PromptParameters(additionalPaymentMethods: $additionalPaymentMethods, mode: $mode)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PromptParameters'))
      ..add(DiagnosticsProperty(
          'additionalPaymentMethods', additionalPaymentMethods))
      ..add(DiagnosticsProperty('mode', mode));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PromptParametersImpl &&
            const DeepCollectionEquality().equals(
                other._additionalPaymentMethods, _additionalPaymentMethods) &&
            (identical(other.mode, mode) || other.mode == mode));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_additionalPaymentMethods), mode);

  /// Create a copy of PromptParameters
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PromptParametersImplCopyWith<_$PromptParametersImpl> get copyWith =>
      __$$PromptParametersImplCopyWithImpl<_$PromptParametersImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PromptParametersImplToJson(
      this,
    );
  }
}

abstract class _PromptParameters implements PromptParameters {
  const factory _PromptParameters(
      {required final List<AdditionalPaymentMethodType>
          additionalPaymentMethods,
      required final PromptMode mode}) = _$PromptParametersImpl;

  factory _PromptParameters.fromJson(Map<String, dynamic> json) =
      _$PromptParametersImpl.fromJson;

  @override
  List<AdditionalPaymentMethodType> get additionalPaymentMethods;
  @override
  PromptMode get mode;

  /// Create a copy of PromptParameters
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PromptParametersImplCopyWith<_$PromptParametersImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Payment _$PaymentFromJson(Map<String, dynamic> json) {
  return _Payment.fromJson(json);
}

/// @nodoc
mixin _$Payment {
  Money get amountMoney => throw _privateConstructorUsedError;
  Money? get appFeeMoney => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;
  String? get locationId => throw _privateConstructorUsedError;
  String? get orderId => throw _privateConstructorUsedError;
  String? get referenceId => throw _privateConstructorUsedError;
  SourceType get sourceType => throw _privateConstructorUsedError;
  Money? get tipMoney => throw _privateConstructorUsedError;
  Money get totalMoney => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this Payment to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Payment
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PaymentCopyWith<Payment> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentCopyWith<$Res> {
  factory $PaymentCopyWith(Payment value, $Res Function(Payment) then) =
      _$PaymentCopyWithImpl<$Res, Payment>;
  @useResult
  $Res call(
      {Money amountMoney,
      Money? appFeeMoney,
      DateTime createdAt,
      String? id,
      String? locationId,
      String? orderId,
      String? referenceId,
      SourceType sourceType,
      Money? tipMoney,
      Money totalMoney,
      DateTime updatedAt});

  $MoneyCopyWith<$Res> get amountMoney;
  $MoneyCopyWith<$Res>? get appFeeMoney;
  $MoneyCopyWith<$Res>? get tipMoney;
  $MoneyCopyWith<$Res> get totalMoney;
}

/// @nodoc
class _$PaymentCopyWithImpl<$Res, $Val extends Payment>
    implements $PaymentCopyWith<$Res> {
  _$PaymentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Payment
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amountMoney = null,
    Object? appFeeMoney = freezed,
    Object? createdAt = null,
    Object? id = freezed,
    Object? locationId = freezed,
    Object? orderId = freezed,
    Object? referenceId = freezed,
    Object? sourceType = null,
    Object? tipMoney = freezed,
    Object? totalMoney = null,
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
      amountMoney: null == amountMoney
          ? _value.amountMoney
          : amountMoney // ignore: cast_nullable_to_non_nullable
              as Money,
      appFeeMoney: freezed == appFeeMoney
          ? _value.appFeeMoney
          : appFeeMoney // ignore: cast_nullable_to_non_nullable
              as Money?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      locationId: freezed == locationId
          ? _value.locationId
          : locationId // ignore: cast_nullable_to_non_nullable
              as String?,
      orderId: freezed == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String?,
      referenceId: freezed == referenceId
          ? _value.referenceId
          : referenceId // ignore: cast_nullable_to_non_nullable
              as String?,
      sourceType: null == sourceType
          ? _value.sourceType
          : sourceType // ignore: cast_nullable_to_non_nullable
              as SourceType,
      tipMoney: freezed == tipMoney
          ? _value.tipMoney
          : tipMoney // ignore: cast_nullable_to_non_nullable
              as Money?,
      totalMoney: null == totalMoney
          ? _value.totalMoney
          : totalMoney // ignore: cast_nullable_to_non_nullable
              as Money,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }

  /// Create a copy of Payment
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MoneyCopyWith<$Res> get amountMoney {
    return $MoneyCopyWith<$Res>(_value.amountMoney, (value) {
      return _then(_value.copyWith(amountMoney: value) as $Val);
    });
  }

  /// Create a copy of Payment
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MoneyCopyWith<$Res>? get appFeeMoney {
    if (_value.appFeeMoney == null) {
      return null;
    }

    return $MoneyCopyWith<$Res>(_value.appFeeMoney!, (value) {
      return _then(_value.copyWith(appFeeMoney: value) as $Val);
    });
  }

  /// Create a copy of Payment
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MoneyCopyWith<$Res>? get tipMoney {
    if (_value.tipMoney == null) {
      return null;
    }

    return $MoneyCopyWith<$Res>(_value.tipMoney!, (value) {
      return _then(_value.copyWith(tipMoney: value) as $Val);
    });
  }

  /// Create a copy of Payment
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MoneyCopyWith<$Res> get totalMoney {
    return $MoneyCopyWith<$Res>(_value.totalMoney, (value) {
      return _then(_value.copyWith(totalMoney: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PaymentImplCopyWith<$Res> implements $PaymentCopyWith<$Res> {
  factory _$$PaymentImplCopyWith(
          _$PaymentImpl value, $Res Function(_$PaymentImpl) then) =
      __$$PaymentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Money amountMoney,
      Money? appFeeMoney,
      DateTime createdAt,
      String? id,
      String? locationId,
      String? orderId,
      String? referenceId,
      SourceType sourceType,
      Money? tipMoney,
      Money totalMoney,
      DateTime updatedAt});

  @override
  $MoneyCopyWith<$Res> get amountMoney;
  @override
  $MoneyCopyWith<$Res>? get appFeeMoney;
  @override
  $MoneyCopyWith<$Res>? get tipMoney;
  @override
  $MoneyCopyWith<$Res> get totalMoney;
}

/// @nodoc
class __$$PaymentImplCopyWithImpl<$Res>
    extends _$PaymentCopyWithImpl<$Res, _$PaymentImpl>
    implements _$$PaymentImplCopyWith<$Res> {
  __$$PaymentImplCopyWithImpl(
      _$PaymentImpl _value, $Res Function(_$PaymentImpl) _then)
      : super(_value, _then);

  /// Create a copy of Payment
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amountMoney = null,
    Object? appFeeMoney = freezed,
    Object? createdAt = null,
    Object? id = freezed,
    Object? locationId = freezed,
    Object? orderId = freezed,
    Object? referenceId = freezed,
    Object? sourceType = null,
    Object? tipMoney = freezed,
    Object? totalMoney = null,
    Object? updatedAt = null,
  }) {
    return _then(_$PaymentImpl(
      amountMoney: null == amountMoney
          ? _value.amountMoney
          : amountMoney // ignore: cast_nullable_to_non_nullable
              as Money,
      appFeeMoney: freezed == appFeeMoney
          ? _value.appFeeMoney
          : appFeeMoney // ignore: cast_nullable_to_non_nullable
              as Money?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      locationId: freezed == locationId
          ? _value.locationId
          : locationId // ignore: cast_nullable_to_non_nullable
              as String?,
      orderId: freezed == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String?,
      referenceId: freezed == referenceId
          ? _value.referenceId
          : referenceId // ignore: cast_nullable_to_non_nullable
              as String?,
      sourceType: null == sourceType
          ? _value.sourceType
          : sourceType // ignore: cast_nullable_to_non_nullable
              as SourceType,
      tipMoney: freezed == tipMoney
          ? _value.tipMoney
          : tipMoney // ignore: cast_nullable_to_non_nullable
              as Money?,
      totalMoney: null == totalMoney
          ? _value.totalMoney
          : totalMoney // ignore: cast_nullable_to_non_nullable
              as Money,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PaymentImpl with DiagnosticableTreeMixin implements _Payment {
  const _$PaymentImpl(
      {required this.amountMoney,
      this.appFeeMoney,
      required this.createdAt,
      this.id,
      this.locationId,
      this.orderId,
      this.referenceId,
      required this.sourceType,
      this.tipMoney,
      required this.totalMoney,
      required this.updatedAt});

  factory _$PaymentImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaymentImplFromJson(json);

  @override
  final Money amountMoney;
  @override
  final Money? appFeeMoney;
  @override
  final DateTime createdAt;
  @override
  final String? id;
  @override
  final String? locationId;
  @override
  final String? orderId;
  @override
  final String? referenceId;
  @override
  final SourceType sourceType;
  @override
  final Money? tipMoney;
  @override
  final Money totalMoney;
  @override
  final DateTime updatedAt;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Payment(amountMoney: $amountMoney, appFeeMoney: $appFeeMoney, createdAt: $createdAt, id: $id, locationId: $locationId, orderId: $orderId, referenceId: $referenceId, sourceType: $sourceType, tipMoney: $tipMoney, totalMoney: $totalMoney, updatedAt: $updatedAt)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Payment'))
      ..add(DiagnosticsProperty('amountMoney', amountMoney))
      ..add(DiagnosticsProperty('appFeeMoney', appFeeMoney))
      ..add(DiagnosticsProperty('createdAt', createdAt))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('locationId', locationId))
      ..add(DiagnosticsProperty('orderId', orderId))
      ..add(DiagnosticsProperty('referenceId', referenceId))
      ..add(DiagnosticsProperty('sourceType', sourceType))
      ..add(DiagnosticsProperty('tipMoney', tipMoney))
      ..add(DiagnosticsProperty('totalMoney', totalMoney))
      ..add(DiagnosticsProperty('updatedAt', updatedAt));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentImpl &&
            (identical(other.amountMoney, amountMoney) ||
                other.amountMoney == amountMoney) &&
            (identical(other.appFeeMoney, appFeeMoney) ||
                other.appFeeMoney == appFeeMoney) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.locationId, locationId) ||
                other.locationId == locationId) &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.referenceId, referenceId) ||
                other.referenceId == referenceId) &&
            (identical(other.sourceType, sourceType) ||
                other.sourceType == sourceType) &&
            (identical(other.tipMoney, tipMoney) ||
                other.tipMoney == tipMoney) &&
            (identical(other.totalMoney, totalMoney) ||
                other.totalMoney == totalMoney) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      amountMoney,
      appFeeMoney,
      createdAt,
      id,
      locationId,
      orderId,
      referenceId,
      sourceType,
      tipMoney,
      totalMoney,
      updatedAt);

  /// Create a copy of Payment
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentImplCopyWith<_$PaymentImpl> get copyWith =>
      __$$PaymentImplCopyWithImpl<_$PaymentImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PaymentImplToJson(
      this,
    );
  }
}

abstract class _Payment implements Payment {
  const factory _Payment(
      {required final Money amountMoney,
      final Money? appFeeMoney,
      required final DateTime createdAt,
      final String? id,
      final String? locationId,
      final String? orderId,
      final String? referenceId,
      required final SourceType sourceType,
      final Money? tipMoney,
      required final Money totalMoney,
      required final DateTime updatedAt}) = _$PaymentImpl;

  factory _Payment.fromJson(Map<String, dynamic> json) = _$PaymentImpl.fromJson;

  @override
  Money get amountMoney;
  @override
  Money? get appFeeMoney;
  @override
  DateTime get createdAt;
  @override
  String? get id;
  @override
  String? get locationId;
  @override
  String? get orderId;
  @override
  String? get referenceId;
  @override
  SourceType get sourceType;
  @override
  Money? get tipMoney;
  @override
  Money get totalMoney;
  @override
  DateTime get updatedAt;

  /// Create a copy of Payment
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PaymentImplCopyWith<_$PaymentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PaymentParameters _$PaymentParametersFromJson(Map<String, dynamic> json) {
  return _PaymentParameters.fromJson(json);
}

/// @nodoc
mixin _$PaymentParameters {
  int? get acceptPartialAuthorization => throw _privateConstructorUsedError;
  Money get amountMoney => throw _privateConstructorUsedError;
  Money? get appFeeMoney => throw _privateConstructorUsedError; // Nullable
  bool? get autocomplete => throw _privateConstructorUsedError; // Nullable
  String? get customerId => throw _privateConstructorUsedError; // Nullable
  DelayAction? get delayAction =>
      throw _privateConstructorUsedError; // Nullable
  num? get delayDuration => throw _privateConstructorUsedError; // Nullable
  String get idempotencyKey => throw _privateConstructorUsedError; // Required
  String? get locationId => throw _privateConstructorUsedError; // Nullable
  String? get note => throw _privateConstructorUsedError; // Nullable
  String? get orderId => throw _privateConstructorUsedError; // Nullable
  String? get referenceId => throw _privateConstructorUsedError; // Nullable
  String? get teamMemberId => throw _privateConstructorUsedError; // Nullable
  Money? get tipMoney => throw _privateConstructorUsedError;

  /// Serializes this PaymentParameters to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PaymentParameters
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PaymentParametersCopyWith<PaymentParameters> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentParametersCopyWith<$Res> {
  factory $PaymentParametersCopyWith(
          PaymentParameters value, $Res Function(PaymentParameters) then) =
      _$PaymentParametersCopyWithImpl<$Res, PaymentParameters>;
  @useResult
  $Res call(
      {int? acceptPartialAuthorization,
      Money amountMoney,
      Money? appFeeMoney,
      bool? autocomplete,
      String? customerId,
      DelayAction? delayAction,
      num? delayDuration,
      String idempotencyKey,
      String? locationId,
      String? note,
      String? orderId,
      String? referenceId,
      String? teamMemberId,
      Money? tipMoney});

  $MoneyCopyWith<$Res> get amountMoney;
  $MoneyCopyWith<$Res>? get appFeeMoney;
  $MoneyCopyWith<$Res>? get tipMoney;
}

/// @nodoc
class _$PaymentParametersCopyWithImpl<$Res, $Val extends PaymentParameters>
    implements $PaymentParametersCopyWith<$Res> {
  _$PaymentParametersCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PaymentParameters
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? acceptPartialAuthorization = freezed,
    Object? amountMoney = null,
    Object? appFeeMoney = freezed,
    Object? autocomplete = freezed,
    Object? customerId = freezed,
    Object? delayAction = freezed,
    Object? delayDuration = freezed,
    Object? idempotencyKey = null,
    Object? locationId = freezed,
    Object? note = freezed,
    Object? orderId = freezed,
    Object? referenceId = freezed,
    Object? teamMemberId = freezed,
    Object? tipMoney = freezed,
  }) {
    return _then(_value.copyWith(
      acceptPartialAuthorization: freezed == acceptPartialAuthorization
          ? _value.acceptPartialAuthorization
          : acceptPartialAuthorization // ignore: cast_nullable_to_non_nullable
              as int?,
      amountMoney: null == amountMoney
          ? _value.amountMoney
          : amountMoney // ignore: cast_nullable_to_non_nullable
              as Money,
      appFeeMoney: freezed == appFeeMoney
          ? _value.appFeeMoney
          : appFeeMoney // ignore: cast_nullable_to_non_nullable
              as Money?,
      autocomplete: freezed == autocomplete
          ? _value.autocomplete
          : autocomplete // ignore: cast_nullable_to_non_nullable
              as bool?,
      customerId: freezed == customerId
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String?,
      delayAction: freezed == delayAction
          ? _value.delayAction
          : delayAction // ignore: cast_nullable_to_non_nullable
              as DelayAction?,
      delayDuration: freezed == delayDuration
          ? _value.delayDuration
          : delayDuration // ignore: cast_nullable_to_non_nullable
              as num?,
      idempotencyKey: null == idempotencyKey
          ? _value.idempotencyKey
          : idempotencyKey // ignore: cast_nullable_to_non_nullable
              as String,
      locationId: freezed == locationId
          ? _value.locationId
          : locationId // ignore: cast_nullable_to_non_nullable
              as String?,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      orderId: freezed == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String?,
      referenceId: freezed == referenceId
          ? _value.referenceId
          : referenceId // ignore: cast_nullable_to_non_nullable
              as String?,
      teamMemberId: freezed == teamMemberId
          ? _value.teamMemberId
          : teamMemberId // ignore: cast_nullable_to_non_nullable
              as String?,
      tipMoney: freezed == tipMoney
          ? _value.tipMoney
          : tipMoney // ignore: cast_nullable_to_non_nullable
              as Money?,
    ) as $Val);
  }

  /// Create a copy of PaymentParameters
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MoneyCopyWith<$Res> get amountMoney {
    return $MoneyCopyWith<$Res>(_value.amountMoney, (value) {
      return _then(_value.copyWith(amountMoney: value) as $Val);
    });
  }

  /// Create a copy of PaymentParameters
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MoneyCopyWith<$Res>? get appFeeMoney {
    if (_value.appFeeMoney == null) {
      return null;
    }

    return $MoneyCopyWith<$Res>(_value.appFeeMoney!, (value) {
      return _then(_value.copyWith(appFeeMoney: value) as $Val);
    });
  }

  /// Create a copy of PaymentParameters
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MoneyCopyWith<$Res>? get tipMoney {
    if (_value.tipMoney == null) {
      return null;
    }

    return $MoneyCopyWith<$Res>(_value.tipMoney!, (value) {
      return _then(_value.copyWith(tipMoney: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PaymentParametersImplCopyWith<$Res>
    implements $PaymentParametersCopyWith<$Res> {
  factory _$$PaymentParametersImplCopyWith(_$PaymentParametersImpl value,
          $Res Function(_$PaymentParametersImpl) then) =
      __$$PaymentParametersImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? acceptPartialAuthorization,
      Money amountMoney,
      Money? appFeeMoney,
      bool? autocomplete,
      String? customerId,
      DelayAction? delayAction,
      num? delayDuration,
      String idempotencyKey,
      String? locationId,
      String? note,
      String? orderId,
      String? referenceId,
      String? teamMemberId,
      Money? tipMoney});

  @override
  $MoneyCopyWith<$Res> get amountMoney;
  @override
  $MoneyCopyWith<$Res>? get appFeeMoney;
  @override
  $MoneyCopyWith<$Res>? get tipMoney;
}

/// @nodoc
class __$$PaymentParametersImplCopyWithImpl<$Res>
    extends _$PaymentParametersCopyWithImpl<$Res, _$PaymentParametersImpl>
    implements _$$PaymentParametersImplCopyWith<$Res> {
  __$$PaymentParametersImplCopyWithImpl(_$PaymentParametersImpl _value,
      $Res Function(_$PaymentParametersImpl) _then)
      : super(_value, _then);

  /// Create a copy of PaymentParameters
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? acceptPartialAuthorization = freezed,
    Object? amountMoney = null,
    Object? appFeeMoney = freezed,
    Object? autocomplete = freezed,
    Object? customerId = freezed,
    Object? delayAction = freezed,
    Object? delayDuration = freezed,
    Object? idempotencyKey = null,
    Object? locationId = freezed,
    Object? note = freezed,
    Object? orderId = freezed,
    Object? referenceId = freezed,
    Object? teamMemberId = freezed,
    Object? tipMoney = freezed,
  }) {
    return _then(_$PaymentParametersImpl(
      acceptPartialAuthorization: freezed == acceptPartialAuthorization
          ? _value.acceptPartialAuthorization
          : acceptPartialAuthorization // ignore: cast_nullable_to_non_nullable
              as int?,
      amountMoney: null == amountMoney
          ? _value.amountMoney
          : amountMoney // ignore: cast_nullable_to_non_nullable
              as Money,
      appFeeMoney: freezed == appFeeMoney
          ? _value.appFeeMoney
          : appFeeMoney // ignore: cast_nullable_to_non_nullable
              as Money?,
      autocomplete: freezed == autocomplete
          ? _value.autocomplete
          : autocomplete // ignore: cast_nullable_to_non_nullable
              as bool?,
      customerId: freezed == customerId
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String?,
      delayAction: freezed == delayAction
          ? _value.delayAction
          : delayAction // ignore: cast_nullable_to_non_nullable
              as DelayAction?,
      delayDuration: freezed == delayDuration
          ? _value.delayDuration
          : delayDuration // ignore: cast_nullable_to_non_nullable
              as num?,
      idempotencyKey: null == idempotencyKey
          ? _value.idempotencyKey
          : idempotencyKey // ignore: cast_nullable_to_non_nullable
              as String,
      locationId: freezed == locationId
          ? _value.locationId
          : locationId // ignore: cast_nullable_to_non_nullable
              as String?,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      orderId: freezed == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String?,
      referenceId: freezed == referenceId
          ? _value.referenceId
          : referenceId // ignore: cast_nullable_to_non_nullable
              as String?,
      teamMemberId: freezed == teamMemberId
          ? _value.teamMemberId
          : teamMemberId // ignore: cast_nullable_to_non_nullable
              as String?,
      tipMoney: freezed == tipMoney
          ? _value.tipMoney
          : tipMoney // ignore: cast_nullable_to_non_nullable
              as Money?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PaymentParametersImpl
    with DiagnosticableTreeMixin
    implements _PaymentParameters {
  const _$PaymentParametersImpl(
      {this.acceptPartialAuthorization,
      required this.amountMoney,
      this.appFeeMoney,
      this.autocomplete,
      this.customerId,
      this.delayAction,
      this.delayDuration,
      required this.idempotencyKey,
      this.locationId,
      this.note,
      this.orderId,
      this.referenceId,
      this.teamMemberId,
      this.tipMoney});

  factory _$PaymentParametersImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaymentParametersImplFromJson(json);

  @override
  final int? acceptPartialAuthorization;
  @override
  final Money amountMoney;
  @override
  final Money? appFeeMoney;
// Nullable
  @override
  final bool? autocomplete;
// Nullable
  @override
  final String? customerId;
// Nullable
  @override
  final DelayAction? delayAction;
// Nullable
  @override
  final num? delayDuration;
// Nullable
  @override
  final String idempotencyKey;
// Required
  @override
  final String? locationId;
// Nullable
  @override
  final String? note;
// Nullable
  @override
  final String? orderId;
// Nullable
  @override
  final String? referenceId;
// Nullable
  @override
  final String? teamMemberId;
// Nullable
  @override
  final Money? tipMoney;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PaymentParameters(acceptPartialAuthorization: $acceptPartialAuthorization, amountMoney: $amountMoney, appFeeMoney: $appFeeMoney, autocomplete: $autocomplete, customerId: $customerId, delayAction: $delayAction, delayDuration: $delayDuration, idempotencyKey: $idempotencyKey, locationId: $locationId, note: $note, orderId: $orderId, referenceId: $referenceId, teamMemberId: $teamMemberId, tipMoney: $tipMoney)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PaymentParameters'))
      ..add(DiagnosticsProperty(
          'acceptPartialAuthorization', acceptPartialAuthorization))
      ..add(DiagnosticsProperty('amountMoney', amountMoney))
      ..add(DiagnosticsProperty('appFeeMoney', appFeeMoney))
      ..add(DiagnosticsProperty('autocomplete', autocomplete))
      ..add(DiagnosticsProperty('customerId', customerId))
      ..add(DiagnosticsProperty('delayAction', delayAction))
      ..add(DiagnosticsProperty('delayDuration', delayDuration))
      ..add(DiagnosticsProperty('idempotencyKey', idempotencyKey))
      ..add(DiagnosticsProperty('locationId', locationId))
      ..add(DiagnosticsProperty('note', note))
      ..add(DiagnosticsProperty('orderId', orderId))
      ..add(DiagnosticsProperty('referenceId', referenceId))
      ..add(DiagnosticsProperty('teamMemberId', teamMemberId))
      ..add(DiagnosticsProperty('tipMoney', tipMoney));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentParametersImpl &&
            (identical(other.acceptPartialAuthorization,
                    acceptPartialAuthorization) ||
                other.acceptPartialAuthorization ==
                    acceptPartialAuthorization) &&
            (identical(other.amountMoney, amountMoney) ||
                other.amountMoney == amountMoney) &&
            (identical(other.appFeeMoney, appFeeMoney) ||
                other.appFeeMoney == appFeeMoney) &&
            (identical(other.autocomplete, autocomplete) ||
                other.autocomplete == autocomplete) &&
            (identical(other.customerId, customerId) ||
                other.customerId == customerId) &&
            (identical(other.delayAction, delayAction) ||
                other.delayAction == delayAction) &&
            (identical(other.delayDuration, delayDuration) ||
                other.delayDuration == delayDuration) &&
            (identical(other.idempotencyKey, idempotencyKey) ||
                other.idempotencyKey == idempotencyKey) &&
            (identical(other.locationId, locationId) ||
                other.locationId == locationId) &&
            (identical(other.note, note) || other.note == note) &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.referenceId, referenceId) ||
                other.referenceId == referenceId) &&
            (identical(other.teamMemberId, teamMemberId) ||
                other.teamMemberId == teamMemberId) &&
            (identical(other.tipMoney, tipMoney) ||
                other.tipMoney == tipMoney));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      acceptPartialAuthorization,
      amountMoney,
      appFeeMoney,
      autocomplete,
      customerId,
      delayAction,
      delayDuration,
      idempotencyKey,
      locationId,
      note,
      orderId,
      referenceId,
      teamMemberId,
      tipMoney);

  /// Create a copy of PaymentParameters
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentParametersImplCopyWith<_$PaymentParametersImpl> get copyWith =>
      __$$PaymentParametersImplCopyWithImpl<_$PaymentParametersImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PaymentParametersImplToJson(
      this,
    );
  }
}

abstract class _PaymentParameters implements PaymentParameters {
  const factory _PaymentParameters(
      {final int? acceptPartialAuthorization,
      required final Money amountMoney,
      final Money? appFeeMoney,
      final bool? autocomplete,
      final String? customerId,
      final DelayAction? delayAction,
      final num? delayDuration,
      required final String idempotencyKey,
      final String? locationId,
      final String? note,
      final String? orderId,
      final String? referenceId,
      final String? teamMemberId,
      final Money? tipMoney}) = _$PaymentParametersImpl;

  factory _PaymentParameters.fromJson(Map<String, dynamic> json) =
      _$PaymentParametersImpl.fromJson;

  @override
  int? get acceptPartialAuthorization;
  @override
  Money get amountMoney;
  @override
  Money? get appFeeMoney; // Nullable
  @override
  bool? get autocomplete; // Nullable
  @override
  String? get customerId; // Nullable
  @override
  DelayAction? get delayAction; // Nullable
  @override
  num? get delayDuration; // Nullable
  @override
  String get idempotencyKey; // Required
  @override
  String? get locationId; // Nullable
  @override
  String? get note; // Nullable
  @override
  String? get orderId; // Nullable
  @override
  String? get referenceId; // Nullable
  @override
  String? get teamMemberId; // Nullable
  @override
  Money? get tipMoney;

  /// Create a copy of PaymentParameters
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PaymentParametersImplCopyWith<_$PaymentParametersImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

OnlinePayment _$OnlinePaymentFromJson(Map<String, dynamic> json) {
  return _OnlinePayment.fromJson(json);
}

/// @nodoc
mixin _$OnlinePayment {
  Money get amountMoney => throw _privateConstructorUsedError;
  Money get appFeeMoney => throw _privateConstructorUsedError;
  CardPaymentDetails get cardDetails => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;
  String get customerId => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  String get locationId => throw _privateConstructorUsedError;
  String get note => throw _privateConstructorUsedError;
  String get orderId => throw _privateConstructorUsedError;
  String get referenceId => throw _privateConstructorUsedError;
  PaymentStatus get status => throw _privateConstructorUsedError;
  Money get tipMoney => throw _privateConstructorUsedError;
  Money get totalMoney => throw _privateConstructorUsedError;
  String get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this OnlinePayment to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OnlinePayment
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OnlinePaymentCopyWith<OnlinePayment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OnlinePaymentCopyWith<$Res> {
  factory $OnlinePaymentCopyWith(
          OnlinePayment value, $Res Function(OnlinePayment) then) =
      _$OnlinePaymentCopyWithImpl<$Res, OnlinePayment>;
  @useResult
  $Res call(
      {Money amountMoney,
      Money appFeeMoney,
      CardPaymentDetails cardDetails,
      String createdAt,
      String customerId,
      String id,
      String locationId,
      String note,
      String orderId,
      String referenceId,
      PaymentStatus status,
      Money tipMoney,
      Money totalMoney,
      String updatedAt});

  $MoneyCopyWith<$Res> get amountMoney;
  $MoneyCopyWith<$Res> get appFeeMoney;
  $CardPaymentDetailsCopyWith<$Res> get cardDetails;
  $MoneyCopyWith<$Res> get tipMoney;
  $MoneyCopyWith<$Res> get totalMoney;
}

/// @nodoc
class _$OnlinePaymentCopyWithImpl<$Res, $Val extends OnlinePayment>
    implements $OnlinePaymentCopyWith<$Res> {
  _$OnlinePaymentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OnlinePayment
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amountMoney = null,
    Object? appFeeMoney = null,
    Object? cardDetails = null,
    Object? createdAt = null,
    Object? customerId = null,
    Object? id = null,
    Object? locationId = null,
    Object? note = null,
    Object? orderId = null,
    Object? referenceId = null,
    Object? status = null,
    Object? tipMoney = null,
    Object? totalMoney = null,
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
      amountMoney: null == amountMoney
          ? _value.amountMoney
          : amountMoney // ignore: cast_nullable_to_non_nullable
              as Money,
      appFeeMoney: null == appFeeMoney
          ? _value.appFeeMoney
          : appFeeMoney // ignore: cast_nullable_to_non_nullable
              as Money,
      cardDetails: null == cardDetails
          ? _value.cardDetails
          : cardDetails // ignore: cast_nullable_to_non_nullable
              as CardPaymentDetails,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      customerId: null == customerId
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      locationId: null == locationId
          ? _value.locationId
          : locationId // ignore: cast_nullable_to_non_nullable
              as String,
      note: null == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String,
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
      referenceId: null == referenceId
          ? _value.referenceId
          : referenceId // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as PaymentStatus,
      tipMoney: null == tipMoney
          ? _value.tipMoney
          : tipMoney // ignore: cast_nullable_to_non_nullable
              as Money,
      totalMoney: null == totalMoney
          ? _value.totalMoney
          : totalMoney // ignore: cast_nullable_to_non_nullable
              as Money,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  /// Create a copy of OnlinePayment
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MoneyCopyWith<$Res> get amountMoney {
    return $MoneyCopyWith<$Res>(_value.amountMoney, (value) {
      return _then(_value.copyWith(amountMoney: value) as $Val);
    });
  }

  /// Create a copy of OnlinePayment
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MoneyCopyWith<$Res> get appFeeMoney {
    return $MoneyCopyWith<$Res>(_value.appFeeMoney, (value) {
      return _then(_value.copyWith(appFeeMoney: value) as $Val);
    });
  }

  /// Create a copy of OnlinePayment
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CardPaymentDetailsCopyWith<$Res> get cardDetails {
    return $CardPaymentDetailsCopyWith<$Res>(_value.cardDetails, (value) {
      return _then(_value.copyWith(cardDetails: value) as $Val);
    });
  }

  /// Create a copy of OnlinePayment
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MoneyCopyWith<$Res> get tipMoney {
    return $MoneyCopyWith<$Res>(_value.tipMoney, (value) {
      return _then(_value.copyWith(tipMoney: value) as $Val);
    });
  }

  /// Create a copy of OnlinePayment
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MoneyCopyWith<$Res> get totalMoney {
    return $MoneyCopyWith<$Res>(_value.totalMoney, (value) {
      return _then(_value.copyWith(totalMoney: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OnlinePaymentImplCopyWith<$Res>
    implements $OnlinePaymentCopyWith<$Res> {
  factory _$$OnlinePaymentImplCopyWith(
          _$OnlinePaymentImpl value, $Res Function(_$OnlinePaymentImpl) then) =
      __$$OnlinePaymentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Money amountMoney,
      Money appFeeMoney,
      CardPaymentDetails cardDetails,
      String createdAt,
      String customerId,
      String id,
      String locationId,
      String note,
      String orderId,
      String referenceId,
      PaymentStatus status,
      Money tipMoney,
      Money totalMoney,
      String updatedAt});

  @override
  $MoneyCopyWith<$Res> get amountMoney;
  @override
  $MoneyCopyWith<$Res> get appFeeMoney;
  @override
  $CardPaymentDetailsCopyWith<$Res> get cardDetails;
  @override
  $MoneyCopyWith<$Res> get tipMoney;
  @override
  $MoneyCopyWith<$Res> get totalMoney;
}

/// @nodoc
class __$$OnlinePaymentImplCopyWithImpl<$Res>
    extends _$OnlinePaymentCopyWithImpl<$Res, _$OnlinePaymentImpl>
    implements _$$OnlinePaymentImplCopyWith<$Res> {
  __$$OnlinePaymentImplCopyWithImpl(
      _$OnlinePaymentImpl _value, $Res Function(_$OnlinePaymentImpl) _then)
      : super(_value, _then);

  /// Create a copy of OnlinePayment
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amountMoney = null,
    Object? appFeeMoney = null,
    Object? cardDetails = null,
    Object? createdAt = null,
    Object? customerId = null,
    Object? id = null,
    Object? locationId = null,
    Object? note = null,
    Object? orderId = null,
    Object? referenceId = null,
    Object? status = null,
    Object? tipMoney = null,
    Object? totalMoney = null,
    Object? updatedAt = null,
  }) {
    return _then(_$OnlinePaymentImpl(
      amountMoney: null == amountMoney
          ? _value.amountMoney
          : amountMoney // ignore: cast_nullable_to_non_nullable
              as Money,
      appFeeMoney: null == appFeeMoney
          ? _value.appFeeMoney
          : appFeeMoney // ignore: cast_nullable_to_non_nullable
              as Money,
      cardDetails: null == cardDetails
          ? _value.cardDetails
          : cardDetails // ignore: cast_nullable_to_non_nullable
              as CardPaymentDetails,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      customerId: null == customerId
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      locationId: null == locationId
          ? _value.locationId
          : locationId // ignore: cast_nullable_to_non_nullable
              as String,
      note: null == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String,
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
      referenceId: null == referenceId
          ? _value.referenceId
          : referenceId // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as PaymentStatus,
      tipMoney: null == tipMoney
          ? _value.tipMoney
          : tipMoney // ignore: cast_nullable_to_non_nullable
              as Money,
      totalMoney: null == totalMoney
          ? _value.totalMoney
          : totalMoney // ignore: cast_nullable_to_non_nullable
              as Money,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OnlinePaymentImpl
    with DiagnosticableTreeMixin
    implements _OnlinePayment {
  const _$OnlinePaymentImpl(
      {required this.amountMoney,
      required this.appFeeMoney,
      required this.cardDetails,
      required this.createdAt,
      required this.customerId,
      required this.id,
      required this.locationId,
      required this.note,
      required this.orderId,
      required this.referenceId,
      required this.status,
      required this.tipMoney,
      required this.totalMoney,
      required this.updatedAt});

  factory _$OnlinePaymentImpl.fromJson(Map<String, dynamic> json) =>
      _$$OnlinePaymentImplFromJson(json);

  @override
  final Money amountMoney;
  @override
  final Money appFeeMoney;
  @override
  final CardPaymentDetails cardDetails;
  @override
  final String createdAt;
  @override
  final String customerId;
  @override
  final String id;
  @override
  final String locationId;
  @override
  final String note;
  @override
  final String orderId;
  @override
  final String referenceId;
  @override
  final PaymentStatus status;
  @override
  final Money tipMoney;
  @override
  final Money totalMoney;
  @override
  final String updatedAt;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'OnlinePayment(amountMoney: $amountMoney, appFeeMoney: $appFeeMoney, cardDetails: $cardDetails, createdAt: $createdAt, customerId: $customerId, id: $id, locationId: $locationId, note: $note, orderId: $orderId, referenceId: $referenceId, status: $status, tipMoney: $tipMoney, totalMoney: $totalMoney, updatedAt: $updatedAt)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'OnlinePayment'))
      ..add(DiagnosticsProperty('amountMoney', amountMoney))
      ..add(DiagnosticsProperty('appFeeMoney', appFeeMoney))
      ..add(DiagnosticsProperty('cardDetails', cardDetails))
      ..add(DiagnosticsProperty('createdAt', createdAt))
      ..add(DiagnosticsProperty('customerId', customerId))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('locationId', locationId))
      ..add(DiagnosticsProperty('note', note))
      ..add(DiagnosticsProperty('orderId', orderId))
      ..add(DiagnosticsProperty('referenceId', referenceId))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('tipMoney', tipMoney))
      ..add(DiagnosticsProperty('totalMoney', totalMoney))
      ..add(DiagnosticsProperty('updatedAt', updatedAt));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnlinePaymentImpl &&
            (identical(other.amountMoney, amountMoney) ||
                other.amountMoney == amountMoney) &&
            (identical(other.appFeeMoney, appFeeMoney) ||
                other.appFeeMoney == appFeeMoney) &&
            (identical(other.cardDetails, cardDetails) ||
                other.cardDetails == cardDetails) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.customerId, customerId) ||
                other.customerId == customerId) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.locationId, locationId) ||
                other.locationId == locationId) &&
            (identical(other.note, note) || other.note == note) &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.referenceId, referenceId) ||
                other.referenceId == referenceId) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.tipMoney, tipMoney) ||
                other.tipMoney == tipMoney) &&
            (identical(other.totalMoney, totalMoney) ||
                other.totalMoney == totalMoney) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      amountMoney,
      appFeeMoney,
      cardDetails,
      createdAt,
      customerId,
      id,
      locationId,
      note,
      orderId,
      referenceId,
      status,
      tipMoney,
      totalMoney,
      updatedAt);

  /// Create a copy of OnlinePayment
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OnlinePaymentImplCopyWith<_$OnlinePaymentImpl> get copyWith =>
      __$$OnlinePaymentImplCopyWithImpl<_$OnlinePaymentImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OnlinePaymentImplToJson(
      this,
    );
  }
}

abstract class _OnlinePayment implements OnlinePayment {
  const factory _OnlinePayment(
      {required final Money amountMoney,
      required final Money appFeeMoney,
      required final CardPaymentDetails cardDetails,
      required final String createdAt,
      required final String customerId,
      required final String id,
      required final String locationId,
      required final String note,
      required final String orderId,
      required final String referenceId,
      required final PaymentStatus status,
      required final Money tipMoney,
      required final Money totalMoney,
      required final String updatedAt}) = _$OnlinePaymentImpl;

  factory _OnlinePayment.fromJson(Map<String, dynamic> json) =
      _$OnlinePaymentImpl.fromJson;

  @override
  Money get amountMoney;
  @override
  Money get appFeeMoney;
  @override
  CardPaymentDetails get cardDetails;
  @override
  String get createdAt;
  @override
  String get customerId;
  @override
  String get id;
  @override
  String get locationId;
  @override
  String get note;
  @override
  String get orderId;
  @override
  String get referenceId;
  @override
  PaymentStatus get status;
  @override
  Money get tipMoney;
  @override
  Money get totalMoney;
  @override
  String get updatedAt;

  /// Create a copy of OnlinePayment
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OnlinePaymentImplCopyWith<_$OnlinePaymentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

OfflinePayment _$OfflinePaymentFromJson(Map<String, dynamic> json) {
  return _OfflinePayment.fromJson(json);
}

/// @nodoc
mixin _$OfflinePayment {
  Money get amountMoney => throw _privateConstructorUsedError;
  Money? get appFeeMoney => throw _privateConstructorUsedError;
  OfflineCardPaymentDetails? get cardDetails =>
      throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;
  String get localId => throw _privateConstructorUsedError;
  String get locationId => throw _privateConstructorUsedError;
  String? get orderId => throw _privateConstructorUsedError;
  String? get referenceId => throw _privateConstructorUsedError;
  OfflineStatus get status => throw _privateConstructorUsedError;
  Money? get tipMoney => throw _privateConstructorUsedError;
  Money get totalMoney => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;
  DateTime? get uploadedAt => throw _privateConstructorUsedError;

  /// Serializes this OfflinePayment to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OfflinePayment
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OfflinePaymentCopyWith<OfflinePayment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OfflinePaymentCopyWith<$Res> {
  factory $OfflinePaymentCopyWith(
          OfflinePayment value, $Res Function(OfflinePayment) then) =
      _$OfflinePaymentCopyWithImpl<$Res, OfflinePayment>;
  @useResult
  $Res call(
      {Money amountMoney,
      Money? appFeeMoney,
      OfflineCardPaymentDetails? cardDetails,
      DateTime createdAt,
      String? id,
      String localId,
      String locationId,
      String? orderId,
      String? referenceId,
      OfflineStatus status,
      Money? tipMoney,
      Money totalMoney,
      DateTime updatedAt,
      DateTime? uploadedAt});

  $MoneyCopyWith<$Res> get amountMoney;
  $MoneyCopyWith<$Res>? get appFeeMoney;
  $OfflineCardPaymentDetailsCopyWith<$Res>? get cardDetails;
  $MoneyCopyWith<$Res>? get tipMoney;
  $MoneyCopyWith<$Res> get totalMoney;
}

/// @nodoc
class _$OfflinePaymentCopyWithImpl<$Res, $Val extends OfflinePayment>
    implements $OfflinePaymentCopyWith<$Res> {
  _$OfflinePaymentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OfflinePayment
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amountMoney = null,
    Object? appFeeMoney = freezed,
    Object? cardDetails = freezed,
    Object? createdAt = null,
    Object? id = freezed,
    Object? localId = null,
    Object? locationId = null,
    Object? orderId = freezed,
    Object? referenceId = freezed,
    Object? status = null,
    Object? tipMoney = freezed,
    Object? totalMoney = null,
    Object? updatedAt = null,
    Object? uploadedAt = freezed,
  }) {
    return _then(_value.copyWith(
      amountMoney: null == amountMoney
          ? _value.amountMoney
          : amountMoney // ignore: cast_nullable_to_non_nullable
              as Money,
      appFeeMoney: freezed == appFeeMoney
          ? _value.appFeeMoney
          : appFeeMoney // ignore: cast_nullable_to_non_nullable
              as Money?,
      cardDetails: freezed == cardDetails
          ? _value.cardDetails
          : cardDetails // ignore: cast_nullable_to_non_nullable
              as OfflineCardPaymentDetails?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      localId: null == localId
          ? _value.localId
          : localId // ignore: cast_nullable_to_non_nullable
              as String,
      locationId: null == locationId
          ? _value.locationId
          : locationId // ignore: cast_nullable_to_non_nullable
              as String,
      orderId: freezed == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String?,
      referenceId: freezed == referenceId
          ? _value.referenceId
          : referenceId // ignore: cast_nullable_to_non_nullable
              as String?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as OfflineStatus,
      tipMoney: freezed == tipMoney
          ? _value.tipMoney
          : tipMoney // ignore: cast_nullable_to_non_nullable
              as Money?,
      totalMoney: null == totalMoney
          ? _value.totalMoney
          : totalMoney // ignore: cast_nullable_to_non_nullable
              as Money,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      uploadedAt: freezed == uploadedAt
          ? _value.uploadedAt
          : uploadedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }

  /// Create a copy of OfflinePayment
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MoneyCopyWith<$Res> get amountMoney {
    return $MoneyCopyWith<$Res>(_value.amountMoney, (value) {
      return _then(_value.copyWith(amountMoney: value) as $Val);
    });
  }

  /// Create a copy of OfflinePayment
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MoneyCopyWith<$Res>? get appFeeMoney {
    if (_value.appFeeMoney == null) {
      return null;
    }

    return $MoneyCopyWith<$Res>(_value.appFeeMoney!, (value) {
      return _then(_value.copyWith(appFeeMoney: value) as $Val);
    });
  }

  /// Create a copy of OfflinePayment
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OfflineCardPaymentDetailsCopyWith<$Res>? get cardDetails {
    if (_value.cardDetails == null) {
      return null;
    }

    return $OfflineCardPaymentDetailsCopyWith<$Res>(_value.cardDetails!,
        (value) {
      return _then(_value.copyWith(cardDetails: value) as $Val);
    });
  }

  /// Create a copy of OfflinePayment
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MoneyCopyWith<$Res>? get tipMoney {
    if (_value.tipMoney == null) {
      return null;
    }

    return $MoneyCopyWith<$Res>(_value.tipMoney!, (value) {
      return _then(_value.copyWith(tipMoney: value) as $Val);
    });
  }

  /// Create a copy of OfflinePayment
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MoneyCopyWith<$Res> get totalMoney {
    return $MoneyCopyWith<$Res>(_value.totalMoney, (value) {
      return _then(_value.copyWith(totalMoney: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OfflinePaymentImplCopyWith<$Res>
    implements $OfflinePaymentCopyWith<$Res> {
  factory _$$OfflinePaymentImplCopyWith(_$OfflinePaymentImpl value,
          $Res Function(_$OfflinePaymentImpl) then) =
      __$$OfflinePaymentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Money amountMoney,
      Money? appFeeMoney,
      OfflineCardPaymentDetails? cardDetails,
      DateTime createdAt,
      String? id,
      String localId,
      String locationId,
      String? orderId,
      String? referenceId,
      OfflineStatus status,
      Money? tipMoney,
      Money totalMoney,
      DateTime updatedAt,
      DateTime? uploadedAt});

  @override
  $MoneyCopyWith<$Res> get amountMoney;
  @override
  $MoneyCopyWith<$Res>? get appFeeMoney;
  @override
  $OfflineCardPaymentDetailsCopyWith<$Res>? get cardDetails;
  @override
  $MoneyCopyWith<$Res>? get tipMoney;
  @override
  $MoneyCopyWith<$Res> get totalMoney;
}

/// @nodoc
class __$$OfflinePaymentImplCopyWithImpl<$Res>
    extends _$OfflinePaymentCopyWithImpl<$Res, _$OfflinePaymentImpl>
    implements _$$OfflinePaymentImplCopyWith<$Res> {
  __$$OfflinePaymentImplCopyWithImpl(
      _$OfflinePaymentImpl _value, $Res Function(_$OfflinePaymentImpl) _then)
      : super(_value, _then);

  /// Create a copy of OfflinePayment
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amountMoney = null,
    Object? appFeeMoney = freezed,
    Object? cardDetails = freezed,
    Object? createdAt = null,
    Object? id = freezed,
    Object? localId = null,
    Object? locationId = null,
    Object? orderId = freezed,
    Object? referenceId = freezed,
    Object? status = null,
    Object? tipMoney = freezed,
    Object? totalMoney = null,
    Object? updatedAt = null,
    Object? uploadedAt = freezed,
  }) {
    return _then(_$OfflinePaymentImpl(
      amountMoney: null == amountMoney
          ? _value.amountMoney
          : amountMoney // ignore: cast_nullable_to_non_nullable
              as Money,
      appFeeMoney: freezed == appFeeMoney
          ? _value.appFeeMoney
          : appFeeMoney // ignore: cast_nullable_to_non_nullable
              as Money?,
      cardDetails: freezed == cardDetails
          ? _value.cardDetails
          : cardDetails // ignore: cast_nullable_to_non_nullable
              as OfflineCardPaymentDetails?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      localId: null == localId
          ? _value.localId
          : localId // ignore: cast_nullable_to_non_nullable
              as String,
      locationId: null == locationId
          ? _value.locationId
          : locationId // ignore: cast_nullable_to_non_nullable
              as String,
      orderId: freezed == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String?,
      referenceId: freezed == referenceId
          ? _value.referenceId
          : referenceId // ignore: cast_nullable_to_non_nullable
              as String?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as OfflineStatus,
      tipMoney: freezed == tipMoney
          ? _value.tipMoney
          : tipMoney // ignore: cast_nullable_to_non_nullable
              as Money?,
      totalMoney: null == totalMoney
          ? _value.totalMoney
          : totalMoney // ignore: cast_nullable_to_non_nullable
              as Money,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      uploadedAt: freezed == uploadedAt
          ? _value.uploadedAt
          : uploadedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OfflinePaymentImpl
    with DiagnosticableTreeMixin
    implements _OfflinePayment {
  const _$OfflinePaymentImpl(
      {required this.amountMoney,
      this.appFeeMoney,
      this.cardDetails,
      required this.createdAt,
      this.id,
      required this.localId,
      required this.locationId,
      this.orderId,
      this.referenceId,
      required this.status,
      this.tipMoney,
      required this.totalMoney,
      required this.updatedAt,
      this.uploadedAt});

  factory _$OfflinePaymentImpl.fromJson(Map<String, dynamic> json) =>
      _$$OfflinePaymentImplFromJson(json);

  @override
  final Money amountMoney;
  @override
  final Money? appFeeMoney;
  @override
  final OfflineCardPaymentDetails? cardDetails;
  @override
  final DateTime createdAt;
  @override
  final String? id;
  @override
  final String localId;
  @override
  final String locationId;
  @override
  final String? orderId;
  @override
  final String? referenceId;
  @override
  final OfflineStatus status;
  @override
  final Money? tipMoney;
  @override
  final Money totalMoney;
  @override
  final DateTime updatedAt;
  @override
  final DateTime? uploadedAt;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'OfflinePayment(amountMoney: $amountMoney, appFeeMoney: $appFeeMoney, cardDetails: $cardDetails, createdAt: $createdAt, id: $id, localId: $localId, locationId: $locationId, orderId: $orderId, referenceId: $referenceId, status: $status, tipMoney: $tipMoney, totalMoney: $totalMoney, updatedAt: $updatedAt, uploadedAt: $uploadedAt)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'OfflinePayment'))
      ..add(DiagnosticsProperty('amountMoney', amountMoney))
      ..add(DiagnosticsProperty('appFeeMoney', appFeeMoney))
      ..add(DiagnosticsProperty('cardDetails', cardDetails))
      ..add(DiagnosticsProperty('createdAt', createdAt))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('localId', localId))
      ..add(DiagnosticsProperty('locationId', locationId))
      ..add(DiagnosticsProperty('orderId', orderId))
      ..add(DiagnosticsProperty('referenceId', referenceId))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('tipMoney', tipMoney))
      ..add(DiagnosticsProperty('totalMoney', totalMoney))
      ..add(DiagnosticsProperty('updatedAt', updatedAt))
      ..add(DiagnosticsProperty('uploadedAt', uploadedAt));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OfflinePaymentImpl &&
            (identical(other.amountMoney, amountMoney) ||
                other.amountMoney == amountMoney) &&
            (identical(other.appFeeMoney, appFeeMoney) ||
                other.appFeeMoney == appFeeMoney) &&
            (identical(other.cardDetails, cardDetails) ||
                other.cardDetails == cardDetails) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.localId, localId) || other.localId == localId) &&
            (identical(other.locationId, locationId) ||
                other.locationId == locationId) &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.referenceId, referenceId) ||
                other.referenceId == referenceId) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.tipMoney, tipMoney) ||
                other.tipMoney == tipMoney) &&
            (identical(other.totalMoney, totalMoney) ||
                other.totalMoney == totalMoney) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.uploadedAt, uploadedAt) ||
                other.uploadedAt == uploadedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      amountMoney,
      appFeeMoney,
      cardDetails,
      createdAt,
      id,
      localId,
      locationId,
      orderId,
      referenceId,
      status,
      tipMoney,
      totalMoney,
      updatedAt,
      uploadedAt);

  /// Create a copy of OfflinePayment
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OfflinePaymentImplCopyWith<_$OfflinePaymentImpl> get copyWith =>
      __$$OfflinePaymentImplCopyWithImpl<_$OfflinePaymentImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OfflinePaymentImplToJson(
      this,
    );
  }
}

abstract class _OfflinePayment implements OfflinePayment {
  const factory _OfflinePayment(
      {required final Money amountMoney,
      final Money? appFeeMoney,
      final OfflineCardPaymentDetails? cardDetails,
      required final DateTime createdAt,
      final String? id,
      required final String localId,
      required final String locationId,
      final String? orderId,
      final String? referenceId,
      required final OfflineStatus status,
      final Money? tipMoney,
      required final Money totalMoney,
      required final DateTime updatedAt,
      final DateTime? uploadedAt}) = _$OfflinePaymentImpl;

  factory _OfflinePayment.fromJson(Map<String, dynamic> json) =
      _$OfflinePaymentImpl.fromJson;

  @override
  Money get amountMoney;
  @override
  Money? get appFeeMoney;
  @override
  OfflineCardPaymentDetails? get cardDetails;
  @override
  DateTime get createdAt;
  @override
  String? get id;
  @override
  String get localId;
  @override
  String get locationId;
  @override
  String? get orderId;
  @override
  String? get referenceId;
  @override
  OfflineStatus get status;
  @override
  Money? get tipMoney;
  @override
  Money get totalMoney;
  @override
  DateTime get updatedAt;
  @override
  DateTime? get uploadedAt;

  /// Create a copy of OfflinePayment
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OfflinePaymentImplCopyWith<_$OfflinePaymentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

OfflineCardPaymentDetails _$OfflineCardPaymentDetailsFromJson(
    Map<String, dynamic> json) {
  return _OfflineCardPaymentDetails.fromJson(json);
}

/// @nodoc
mixin _$OfflineCardPaymentDetails {
  String? get applicationIdentifier => throw _privateConstructorUsedError;
  String? get applicationName => throw _privateConstructorUsedError;
  Card get card => throw _privateConstructorUsedError;
  EntryMethod get entryMethod => throw _privateConstructorUsedError;

  /// Serializes this OfflineCardPaymentDetails to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OfflineCardPaymentDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OfflineCardPaymentDetailsCopyWith<OfflineCardPaymentDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OfflineCardPaymentDetailsCopyWith<$Res> {
  factory $OfflineCardPaymentDetailsCopyWith(OfflineCardPaymentDetails value,
          $Res Function(OfflineCardPaymentDetails) then) =
      _$OfflineCardPaymentDetailsCopyWithImpl<$Res, OfflineCardPaymentDetails>;
  @useResult
  $Res call(
      {String? applicationIdentifier,
      String? applicationName,
      Card card,
      EntryMethod entryMethod});

  $CardCopyWith<$Res> get card;
}

/// @nodoc
class _$OfflineCardPaymentDetailsCopyWithImpl<$Res,
        $Val extends OfflineCardPaymentDetails>
    implements $OfflineCardPaymentDetailsCopyWith<$Res> {
  _$OfflineCardPaymentDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OfflineCardPaymentDetails
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? applicationIdentifier = freezed,
    Object? applicationName = freezed,
    Object? card = null,
    Object? entryMethod = null,
  }) {
    return _then(_value.copyWith(
      applicationIdentifier: freezed == applicationIdentifier
          ? _value.applicationIdentifier
          : applicationIdentifier // ignore: cast_nullable_to_non_nullable
              as String?,
      applicationName: freezed == applicationName
          ? _value.applicationName
          : applicationName // ignore: cast_nullable_to_non_nullable
              as String?,
      card: null == card
          ? _value.card
          : card // ignore: cast_nullable_to_non_nullable
              as Card,
      entryMethod: null == entryMethod
          ? _value.entryMethod
          : entryMethod // ignore: cast_nullable_to_non_nullable
              as EntryMethod,
    ) as $Val);
  }

  /// Create a copy of OfflineCardPaymentDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CardCopyWith<$Res> get card {
    return $CardCopyWith<$Res>(_value.card, (value) {
      return _then(_value.copyWith(card: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OfflineCardPaymentDetailsImplCopyWith<$Res>
    implements $OfflineCardPaymentDetailsCopyWith<$Res> {
  factory _$$OfflineCardPaymentDetailsImplCopyWith(
          _$OfflineCardPaymentDetailsImpl value,
          $Res Function(_$OfflineCardPaymentDetailsImpl) then) =
      __$$OfflineCardPaymentDetailsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? applicationIdentifier,
      String? applicationName,
      Card card,
      EntryMethod entryMethod});

  @override
  $CardCopyWith<$Res> get card;
}

/// @nodoc
class __$$OfflineCardPaymentDetailsImplCopyWithImpl<$Res>
    extends _$OfflineCardPaymentDetailsCopyWithImpl<$Res,
        _$OfflineCardPaymentDetailsImpl>
    implements _$$OfflineCardPaymentDetailsImplCopyWith<$Res> {
  __$$OfflineCardPaymentDetailsImplCopyWithImpl(
      _$OfflineCardPaymentDetailsImpl _value,
      $Res Function(_$OfflineCardPaymentDetailsImpl) _then)
      : super(_value, _then);

  /// Create a copy of OfflineCardPaymentDetails
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? applicationIdentifier = freezed,
    Object? applicationName = freezed,
    Object? card = null,
    Object? entryMethod = null,
  }) {
    return _then(_$OfflineCardPaymentDetailsImpl(
      applicationIdentifier: freezed == applicationIdentifier
          ? _value.applicationIdentifier
          : applicationIdentifier // ignore: cast_nullable_to_non_nullable
              as String?,
      applicationName: freezed == applicationName
          ? _value.applicationName
          : applicationName // ignore: cast_nullable_to_non_nullable
              as String?,
      card: null == card
          ? _value.card
          : card // ignore: cast_nullable_to_non_nullable
              as Card,
      entryMethod: null == entryMethod
          ? _value.entryMethod
          : entryMethod // ignore: cast_nullable_to_non_nullable
              as EntryMethod,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OfflineCardPaymentDetailsImpl
    with DiagnosticableTreeMixin
    implements _OfflineCardPaymentDetails {
  const _$OfflineCardPaymentDetailsImpl(
      {this.applicationIdentifier,
      this.applicationName,
      required this.card,
      required this.entryMethod});

  factory _$OfflineCardPaymentDetailsImpl.fromJson(Map<String, dynamic> json) =>
      _$$OfflineCardPaymentDetailsImplFromJson(json);

  @override
  final String? applicationIdentifier;
  @override
  final String? applicationName;
  @override
  final Card card;
  @override
  final EntryMethod entryMethod;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'OfflineCardPaymentDetails(applicationIdentifier: $applicationIdentifier, applicationName: $applicationName, card: $card, entryMethod: $entryMethod)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'OfflineCardPaymentDetails'))
      ..add(DiagnosticsProperty('applicationIdentifier', applicationIdentifier))
      ..add(DiagnosticsProperty('applicationName', applicationName))
      ..add(DiagnosticsProperty('card', card))
      ..add(DiagnosticsProperty('entryMethod', entryMethod));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OfflineCardPaymentDetailsImpl &&
            (identical(other.applicationIdentifier, applicationIdentifier) ||
                other.applicationIdentifier == applicationIdentifier) &&
            (identical(other.applicationName, applicationName) ||
                other.applicationName == applicationName) &&
            (identical(other.card, card) || other.card == card) &&
            (identical(other.entryMethod, entryMethod) ||
                other.entryMethod == entryMethod));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, applicationIdentifier, applicationName, card, entryMethod);

  /// Create a copy of OfflineCardPaymentDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OfflineCardPaymentDetailsImplCopyWith<_$OfflineCardPaymentDetailsImpl>
      get copyWith => __$$OfflineCardPaymentDetailsImplCopyWithImpl<
          _$OfflineCardPaymentDetailsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OfflineCardPaymentDetailsImplToJson(
      this,
    );
  }
}

abstract class _OfflineCardPaymentDetails implements OfflineCardPaymentDetails {
  const factory _OfflineCardPaymentDetails(
          {final String? applicationIdentifier,
          final String? applicationName,
          required final Card card,
          required final EntryMethod entryMethod}) =
      _$OfflineCardPaymentDetailsImpl;

  factory _OfflineCardPaymentDetails.fromJson(Map<String, dynamic> json) =
      _$OfflineCardPaymentDetailsImpl.fromJson;

  @override
  String? get applicationIdentifier;
  @override
  String? get applicationName;
  @override
  Card get card;
  @override
  EntryMethod get entryMethod;

  /// Create a copy of OfflineCardPaymentDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OfflineCardPaymentDetailsImplCopyWith<_$OfflineCardPaymentDetailsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
