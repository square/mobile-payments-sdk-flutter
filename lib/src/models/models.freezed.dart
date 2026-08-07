// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Location implements DiagnosticableTreeMixin {

 String get id;@JsonKey(unknownEnumValue: CurrencyCode.unknown) CurrencyCode get currencyCode; String get name; String? get merchantId; String? get businessName; bool? get cardProcessingActivated; String? get mcc;
/// Create a copy of Location
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LocationCopyWith<Location> get copyWith => _$LocationCopyWithImpl<Location>(this as Location, _$identity);

  /// Serializes this Location to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'Location'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('currencyCode', currencyCode))..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('merchantId', merchantId))..add(DiagnosticsProperty('businessName', businessName))..add(DiagnosticsProperty('cardProcessingActivated', cardProcessingActivated))..add(DiagnosticsProperty('mcc', mcc));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Location&&(identical(other.id, id) || other.id == id)&&(identical(other.currencyCode, currencyCode) || other.currencyCode == currencyCode)&&(identical(other.name, name) || other.name == name)&&(identical(other.merchantId, merchantId) || other.merchantId == merchantId)&&(identical(other.businessName, businessName) || other.businessName == businessName)&&(identical(other.cardProcessingActivated, cardProcessingActivated) || other.cardProcessingActivated == cardProcessingActivated)&&(identical(other.mcc, mcc) || other.mcc == mcc));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,currencyCode,name,merchantId,businessName,cardProcessingActivated,mcc);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'Location(id: $id, currencyCode: $currencyCode, name: $name, merchantId: $merchantId, businessName: $businessName, cardProcessingActivated: $cardProcessingActivated, mcc: $mcc)';
}


}

/// @nodoc
abstract mixin class $LocationCopyWith<$Res>  {
  factory $LocationCopyWith(Location value, $Res Function(Location) _then) = _$LocationCopyWithImpl;
@useResult
$Res call({
 String id,@JsonKey(unknownEnumValue: CurrencyCode.unknown) CurrencyCode currencyCode, String name, String? merchantId, String? businessName, bool? cardProcessingActivated, String? mcc
});




}
/// @nodoc
class _$LocationCopyWithImpl<$Res>
    implements $LocationCopyWith<$Res> {
  _$LocationCopyWithImpl(this._self, this._then);

  final Location _self;
  final $Res Function(Location) _then;

/// Create a copy of Location
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? currencyCode = null,Object? name = null,Object? merchantId = freezed,Object? businessName = freezed,Object? cardProcessingActivated = freezed,Object? mcc = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,currencyCode: null == currencyCode ? _self.currencyCode : currencyCode // ignore: cast_nullable_to_non_nullable
as CurrencyCode,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,merchantId: freezed == merchantId ? _self.merchantId : merchantId // ignore: cast_nullable_to_non_nullable
as String?,businessName: freezed == businessName ? _self.businessName : businessName // ignore: cast_nullable_to_non_nullable
as String?,cardProcessingActivated: freezed == cardProcessingActivated ? _self.cardProcessingActivated : cardProcessingActivated // ignore: cast_nullable_to_non_nullable
as bool?,mcc: freezed == mcc ? _self.mcc : mcc // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [Location].
extension LocationPatterns on Location {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Location value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Location() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Location value)  $default,){
final _that = this;
switch (_that) {
case _Location():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Location value)?  $default,){
final _that = this;
switch (_that) {
case _Location() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id, @JsonKey(unknownEnumValue: CurrencyCode.unknown)  CurrencyCode currencyCode,  String name,  String? merchantId,  String? businessName,  bool? cardProcessingActivated,  String? mcc)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Location() when $default != null:
return $default(_that.id,_that.currencyCode,_that.name,_that.merchantId,_that.businessName,_that.cardProcessingActivated,_that.mcc);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id, @JsonKey(unknownEnumValue: CurrencyCode.unknown)  CurrencyCode currencyCode,  String name,  String? merchantId,  String? businessName,  bool? cardProcessingActivated,  String? mcc)  $default,) {final _that = this;
switch (_that) {
case _Location():
return $default(_that.id,_that.currencyCode,_that.name,_that.merchantId,_that.businessName,_that.cardProcessingActivated,_that.mcc);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id, @JsonKey(unknownEnumValue: CurrencyCode.unknown)  CurrencyCode currencyCode,  String name,  String? merchantId,  String? businessName,  bool? cardProcessingActivated,  String? mcc)?  $default,) {final _that = this;
switch (_that) {
case _Location() when $default != null:
return $default(_that.id,_that.currencyCode,_that.name,_that.merchantId,_that.businessName,_that.cardProcessingActivated,_that.mcc);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Location with DiagnosticableTreeMixin implements Location {
  const _Location({required this.id, @JsonKey(unknownEnumValue: CurrencyCode.unknown) required this.currencyCode, required this.name, this.merchantId, this.businessName, this.cardProcessingActivated, this.mcc});
  factory _Location.fromJson(Map<String, dynamic> json) => _$LocationFromJson(json);

@override final  String id;
@override@JsonKey(unknownEnumValue: CurrencyCode.unknown) final  CurrencyCode currencyCode;
@override final  String name;
@override final  String? merchantId;
@override final  String? businessName;
@override final  bool? cardProcessingActivated;
@override final  String? mcc;

/// Create a copy of Location
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LocationCopyWith<_Location> get copyWith => __$LocationCopyWithImpl<_Location>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LocationToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'Location'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('currencyCode', currencyCode))..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('merchantId', merchantId))..add(DiagnosticsProperty('businessName', businessName))..add(DiagnosticsProperty('cardProcessingActivated', cardProcessingActivated))..add(DiagnosticsProperty('mcc', mcc));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Location&&(identical(other.id, id) || other.id == id)&&(identical(other.currencyCode, currencyCode) || other.currencyCode == currencyCode)&&(identical(other.name, name) || other.name == name)&&(identical(other.merchantId, merchantId) || other.merchantId == merchantId)&&(identical(other.businessName, businessName) || other.businessName == businessName)&&(identical(other.cardProcessingActivated, cardProcessingActivated) || other.cardProcessingActivated == cardProcessingActivated)&&(identical(other.mcc, mcc) || other.mcc == mcc));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,currencyCode,name,merchantId,businessName,cardProcessingActivated,mcc);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'Location(id: $id, currencyCode: $currencyCode, name: $name, merchantId: $merchantId, businessName: $businessName, cardProcessingActivated: $cardProcessingActivated, mcc: $mcc)';
}


}

/// @nodoc
abstract mixin class _$LocationCopyWith<$Res> implements $LocationCopyWith<$Res> {
  factory _$LocationCopyWith(_Location value, $Res Function(_Location) _then) = __$LocationCopyWithImpl;
@override @useResult
$Res call({
 String id,@JsonKey(unknownEnumValue: CurrencyCode.unknown) CurrencyCode currencyCode, String name, String? merchantId, String? businessName, bool? cardProcessingActivated, String? mcc
});




}
/// @nodoc
class __$LocationCopyWithImpl<$Res>
    implements _$LocationCopyWith<$Res> {
  __$LocationCopyWithImpl(this._self, this._then);

  final _Location _self;
  final $Res Function(_Location) _then;

/// Create a copy of Location
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? currencyCode = null,Object? name = null,Object? merchantId = freezed,Object? businessName = freezed,Object? cardProcessingActivated = freezed,Object? mcc = freezed,}) {
  return _then(_Location(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,currencyCode: null == currencyCode ? _self.currencyCode : currencyCode // ignore: cast_nullable_to_non_nullable
as CurrencyCode,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,merchantId: freezed == merchantId ? _self.merchantId : merchantId // ignore: cast_nullable_to_non_nullable
as String?,businessName: freezed == businessName ? _self.businessName : businessName // ignore: cast_nullable_to_non_nullable
as String?,cardProcessingActivated: freezed == cardProcessingActivated ? _self.cardProcessingActivated : cardProcessingActivated // ignore: cast_nullable_to_non_nullable
as bool?,mcc: freezed == mcc ? _self.mcc : mcc // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$Money implements DiagnosticableTreeMixin {

 int get amount;@JsonKey(unknownEnumValue: CurrencyCode.unknown) CurrencyCode get currencyCode;
/// Create a copy of Money
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MoneyCopyWith<Money> get copyWith => _$MoneyCopyWithImpl<Money>(this as Money, _$identity);

  /// Serializes this Money to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'Money'))
    ..add(DiagnosticsProperty('amount', amount))..add(DiagnosticsProperty('currencyCode', currencyCode));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Money&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.currencyCode, currencyCode) || other.currencyCode == currencyCode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,amount,currencyCode);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'Money(amount: $amount, currencyCode: $currencyCode)';
}


}

/// @nodoc
abstract mixin class $MoneyCopyWith<$Res>  {
  factory $MoneyCopyWith(Money value, $Res Function(Money) _then) = _$MoneyCopyWithImpl;
@useResult
$Res call({
 int amount,@JsonKey(unknownEnumValue: CurrencyCode.unknown) CurrencyCode currencyCode
});




}
/// @nodoc
class _$MoneyCopyWithImpl<$Res>
    implements $MoneyCopyWith<$Res> {
  _$MoneyCopyWithImpl(this._self, this._then);

  final Money _self;
  final $Res Function(Money) _then;

/// Create a copy of Money
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? amount = null,Object? currencyCode = null,}) {
  return _then(_self.copyWith(
amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int,currencyCode: null == currencyCode ? _self.currencyCode : currencyCode // ignore: cast_nullable_to_non_nullable
as CurrencyCode,
  ));
}

}


/// Adds pattern-matching-related methods to [Money].
extension MoneyPatterns on Money {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Money value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Money() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Money value)  $default,){
final _that = this;
switch (_that) {
case _Money():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Money value)?  $default,){
final _that = this;
switch (_that) {
case _Money() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int amount, @JsonKey(unknownEnumValue: CurrencyCode.unknown)  CurrencyCode currencyCode)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Money() when $default != null:
return $default(_that.amount,_that.currencyCode);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int amount, @JsonKey(unknownEnumValue: CurrencyCode.unknown)  CurrencyCode currencyCode)  $default,) {final _that = this;
switch (_that) {
case _Money():
return $default(_that.amount,_that.currencyCode);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int amount, @JsonKey(unknownEnumValue: CurrencyCode.unknown)  CurrencyCode currencyCode)?  $default,) {final _that = this;
switch (_that) {
case _Money() when $default != null:
return $default(_that.amount,_that.currencyCode);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Money with DiagnosticableTreeMixin implements Money {
  const _Money({required this.amount, @JsonKey(unknownEnumValue: CurrencyCode.unknown) required this.currencyCode});
  factory _Money.fromJson(Map<String, dynamic> json) => _$MoneyFromJson(json);

@override final  int amount;
@override@JsonKey(unknownEnumValue: CurrencyCode.unknown) final  CurrencyCode currencyCode;

/// Create a copy of Money
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MoneyCopyWith<_Money> get copyWith => __$MoneyCopyWithImpl<_Money>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MoneyToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'Money'))
    ..add(DiagnosticsProperty('amount', amount))..add(DiagnosticsProperty('currencyCode', currencyCode));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Money&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.currencyCode, currencyCode) || other.currencyCode == currencyCode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,amount,currencyCode);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'Money(amount: $amount, currencyCode: $currencyCode)';
}


}

/// @nodoc
abstract mixin class _$MoneyCopyWith<$Res> implements $MoneyCopyWith<$Res> {
  factory _$MoneyCopyWith(_Money value, $Res Function(_Money) _then) = __$MoneyCopyWithImpl;
@override @useResult
$Res call({
 int amount,@JsonKey(unknownEnumValue: CurrencyCode.unknown) CurrencyCode currencyCode
});




}
/// @nodoc
class __$MoneyCopyWithImpl<$Res>
    implements _$MoneyCopyWith<$Res> {
  __$MoneyCopyWithImpl(this._self, this._then);

  final _Money _self;
  final $Res Function(_Money) _then;

/// Create a copy of Money
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? amount = null,Object? currencyCode = null,}) {
  return _then(_Money(
amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int,currencyCode: null == currencyCode ? _self.currencyCode : currencyCode // ignore: cast_nullable_to_non_nullable
as CurrencyCode,
  ));
}


}


/// @nodoc
mixin _$Card implements DiagnosticableTreeMixin {

@JsonKey(unknownEnumValue: CardBrand.unknown) CardBrand get brand; String? get cardholderName;@JsonKey(unknownEnumValue: CardCoBrand.unknown) CardCoBrand? get coBrand; num get expirationMonth; num get expirationYear; String? get id; String? get lastFourDigits; String? get bin;
/// Create a copy of Card
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CardCopyWith<Card> get copyWith => _$CardCopyWithImpl<Card>(this as Card, _$identity);

  /// Serializes this Card to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'Card'))
    ..add(DiagnosticsProperty('brand', brand))..add(DiagnosticsProperty('cardholderName', cardholderName))..add(DiagnosticsProperty('coBrand', coBrand))..add(DiagnosticsProperty('expirationMonth', expirationMonth))..add(DiagnosticsProperty('expirationYear', expirationYear))..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('lastFourDigits', lastFourDigits))..add(DiagnosticsProperty('bin', bin));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Card&&(identical(other.brand, brand) || other.brand == brand)&&(identical(other.cardholderName, cardholderName) || other.cardholderName == cardholderName)&&(identical(other.coBrand, coBrand) || other.coBrand == coBrand)&&(identical(other.expirationMonth, expirationMonth) || other.expirationMonth == expirationMonth)&&(identical(other.expirationYear, expirationYear) || other.expirationYear == expirationYear)&&(identical(other.id, id) || other.id == id)&&(identical(other.lastFourDigits, lastFourDigits) || other.lastFourDigits == lastFourDigits)&&(identical(other.bin, bin) || other.bin == bin));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,brand,cardholderName,coBrand,expirationMonth,expirationYear,id,lastFourDigits,bin);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'Card(brand: $brand, cardholderName: $cardholderName, coBrand: $coBrand, expirationMonth: $expirationMonth, expirationYear: $expirationYear, id: $id, lastFourDigits: $lastFourDigits, bin: $bin)';
}


}

/// @nodoc
abstract mixin class $CardCopyWith<$Res>  {
  factory $CardCopyWith(Card value, $Res Function(Card) _then) = _$CardCopyWithImpl;
@useResult
$Res call({
@JsonKey(unknownEnumValue: CardBrand.unknown) CardBrand brand, String? cardholderName,@JsonKey(unknownEnumValue: CardCoBrand.unknown) CardCoBrand? coBrand, num expirationMonth, num expirationYear, String? id, String? lastFourDigits, String? bin
});




}
/// @nodoc
class _$CardCopyWithImpl<$Res>
    implements $CardCopyWith<$Res> {
  _$CardCopyWithImpl(this._self, this._then);

  final Card _self;
  final $Res Function(Card) _then;

/// Create a copy of Card
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? brand = null,Object? cardholderName = freezed,Object? coBrand = freezed,Object? expirationMonth = null,Object? expirationYear = null,Object? id = freezed,Object? lastFourDigits = freezed,Object? bin = freezed,}) {
  return _then(_self.copyWith(
brand: null == brand ? _self.brand : brand // ignore: cast_nullable_to_non_nullable
as CardBrand,cardholderName: freezed == cardholderName ? _self.cardholderName : cardholderName // ignore: cast_nullable_to_non_nullable
as String?,coBrand: freezed == coBrand ? _self.coBrand : coBrand // ignore: cast_nullable_to_non_nullable
as CardCoBrand?,expirationMonth: null == expirationMonth ? _self.expirationMonth : expirationMonth // ignore: cast_nullable_to_non_nullable
as num,expirationYear: null == expirationYear ? _self.expirationYear : expirationYear // ignore: cast_nullable_to_non_nullable
as num,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,lastFourDigits: freezed == lastFourDigits ? _self.lastFourDigits : lastFourDigits // ignore: cast_nullable_to_non_nullable
as String?,bin: freezed == bin ? _self.bin : bin // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [Card].
extension CardPatterns on Card {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Card value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Card() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Card value)  $default,){
final _that = this;
switch (_that) {
case _Card():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Card value)?  $default,){
final _that = this;
switch (_that) {
case _Card() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(unknownEnumValue: CardBrand.unknown)  CardBrand brand,  String? cardholderName, @JsonKey(unknownEnumValue: CardCoBrand.unknown)  CardCoBrand? coBrand,  num expirationMonth,  num expirationYear,  String? id,  String? lastFourDigits,  String? bin)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Card() when $default != null:
return $default(_that.brand,_that.cardholderName,_that.coBrand,_that.expirationMonth,_that.expirationYear,_that.id,_that.lastFourDigits,_that.bin);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(unknownEnumValue: CardBrand.unknown)  CardBrand brand,  String? cardholderName, @JsonKey(unknownEnumValue: CardCoBrand.unknown)  CardCoBrand? coBrand,  num expirationMonth,  num expirationYear,  String? id,  String? lastFourDigits,  String? bin)  $default,) {final _that = this;
switch (_that) {
case _Card():
return $default(_that.brand,_that.cardholderName,_that.coBrand,_that.expirationMonth,_that.expirationYear,_that.id,_that.lastFourDigits,_that.bin);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(unknownEnumValue: CardBrand.unknown)  CardBrand brand,  String? cardholderName, @JsonKey(unknownEnumValue: CardCoBrand.unknown)  CardCoBrand? coBrand,  num expirationMonth,  num expirationYear,  String? id,  String? lastFourDigits,  String? bin)?  $default,) {final _that = this;
switch (_that) {
case _Card() when $default != null:
return $default(_that.brand,_that.cardholderName,_that.coBrand,_that.expirationMonth,_that.expirationYear,_that.id,_that.lastFourDigits,_that.bin);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Card with DiagnosticableTreeMixin implements Card {
  const _Card({@JsonKey(unknownEnumValue: CardBrand.unknown) required this.brand, this.cardholderName, @JsonKey(unknownEnumValue: CardCoBrand.unknown) this.coBrand, this.expirationMonth = 0, this.expirationYear = 0, this.id, this.lastFourDigits, this.bin});
  factory _Card.fromJson(Map<String, dynamic> json) => _$CardFromJson(json);

@override@JsonKey(unknownEnumValue: CardBrand.unknown) final  CardBrand brand;
@override final  String? cardholderName;
@override@JsonKey(unknownEnumValue: CardCoBrand.unknown) final  CardCoBrand? coBrand;
@override@JsonKey() final  num expirationMonth;
@override@JsonKey() final  num expirationYear;
@override final  String? id;
@override final  String? lastFourDigits;
@override final  String? bin;

/// Create a copy of Card
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CardCopyWith<_Card> get copyWith => __$CardCopyWithImpl<_Card>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CardToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'Card'))
    ..add(DiagnosticsProperty('brand', brand))..add(DiagnosticsProperty('cardholderName', cardholderName))..add(DiagnosticsProperty('coBrand', coBrand))..add(DiagnosticsProperty('expirationMonth', expirationMonth))..add(DiagnosticsProperty('expirationYear', expirationYear))..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('lastFourDigits', lastFourDigits))..add(DiagnosticsProperty('bin', bin));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Card&&(identical(other.brand, brand) || other.brand == brand)&&(identical(other.cardholderName, cardholderName) || other.cardholderName == cardholderName)&&(identical(other.coBrand, coBrand) || other.coBrand == coBrand)&&(identical(other.expirationMonth, expirationMonth) || other.expirationMonth == expirationMonth)&&(identical(other.expirationYear, expirationYear) || other.expirationYear == expirationYear)&&(identical(other.id, id) || other.id == id)&&(identical(other.lastFourDigits, lastFourDigits) || other.lastFourDigits == lastFourDigits)&&(identical(other.bin, bin) || other.bin == bin));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,brand,cardholderName,coBrand,expirationMonth,expirationYear,id,lastFourDigits,bin);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'Card(brand: $brand, cardholderName: $cardholderName, coBrand: $coBrand, expirationMonth: $expirationMonth, expirationYear: $expirationYear, id: $id, lastFourDigits: $lastFourDigits, bin: $bin)';
}


}

/// @nodoc
abstract mixin class _$CardCopyWith<$Res> implements $CardCopyWith<$Res> {
  factory _$CardCopyWith(_Card value, $Res Function(_Card) _then) = __$CardCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(unknownEnumValue: CardBrand.unknown) CardBrand brand, String? cardholderName,@JsonKey(unknownEnumValue: CardCoBrand.unknown) CardCoBrand? coBrand, num expirationMonth, num expirationYear, String? id, String? lastFourDigits, String? bin
});




}
/// @nodoc
class __$CardCopyWithImpl<$Res>
    implements _$CardCopyWith<$Res> {
  __$CardCopyWithImpl(this._self, this._then);

  final _Card _self;
  final $Res Function(_Card) _then;

/// Create a copy of Card
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? brand = null,Object? cardholderName = freezed,Object? coBrand = freezed,Object? expirationMonth = null,Object? expirationYear = null,Object? id = freezed,Object? lastFourDigits = freezed,Object? bin = freezed,}) {
  return _then(_Card(
brand: null == brand ? _self.brand : brand // ignore: cast_nullable_to_non_nullable
as CardBrand,cardholderName: freezed == cardholderName ? _self.cardholderName : cardholderName // ignore: cast_nullable_to_non_nullable
as String?,coBrand: freezed == coBrand ? _self.coBrand : coBrand // ignore: cast_nullable_to_non_nullable
as CardCoBrand?,expirationMonth: null == expirationMonth ? _self.expirationMonth : expirationMonth // ignore: cast_nullable_to_non_nullable
as num,expirationYear: null == expirationYear ? _self.expirationYear : expirationYear // ignore: cast_nullable_to_non_nullable
as num,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,lastFourDigits: freezed == lastFourDigits ? _self.lastFourDigits : lastFourDigits // ignore: cast_nullable_to_non_nullable
as String?,bin: freezed == bin ? _self.bin : bin // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$OfflineCard implements DiagnosticableTreeMixin {

@JsonKey(unknownEnumValue: CardBrand.unknown) CardBrand get brand; String? get cardholderName; String? get id; String? get lastFourDigits;@JsonKey(unknownEnumValue: CardCoBrand.unknown) CardCoBrand? get coBrand; num? get expirationMonth; num? get expirationYear; String? get bin;
/// Create a copy of OfflineCard
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OfflineCardCopyWith<OfflineCard> get copyWith => _$OfflineCardCopyWithImpl<OfflineCard>(this as OfflineCard, _$identity);

  /// Serializes this OfflineCard to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'OfflineCard'))
    ..add(DiagnosticsProperty('brand', brand))..add(DiagnosticsProperty('cardholderName', cardholderName))..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('lastFourDigits', lastFourDigits))..add(DiagnosticsProperty('coBrand', coBrand))..add(DiagnosticsProperty('expirationMonth', expirationMonth))..add(DiagnosticsProperty('expirationYear', expirationYear))..add(DiagnosticsProperty('bin', bin));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OfflineCard&&(identical(other.brand, brand) || other.brand == brand)&&(identical(other.cardholderName, cardholderName) || other.cardholderName == cardholderName)&&(identical(other.id, id) || other.id == id)&&(identical(other.lastFourDigits, lastFourDigits) || other.lastFourDigits == lastFourDigits)&&(identical(other.coBrand, coBrand) || other.coBrand == coBrand)&&(identical(other.expirationMonth, expirationMonth) || other.expirationMonth == expirationMonth)&&(identical(other.expirationYear, expirationYear) || other.expirationYear == expirationYear)&&(identical(other.bin, bin) || other.bin == bin));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,brand,cardholderName,id,lastFourDigits,coBrand,expirationMonth,expirationYear,bin);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'OfflineCard(brand: $brand, cardholderName: $cardholderName, id: $id, lastFourDigits: $lastFourDigits, coBrand: $coBrand, expirationMonth: $expirationMonth, expirationYear: $expirationYear, bin: $bin)';
}


}

/// @nodoc
abstract mixin class $OfflineCardCopyWith<$Res>  {
  factory $OfflineCardCopyWith(OfflineCard value, $Res Function(OfflineCard) _then) = _$OfflineCardCopyWithImpl;
@useResult
$Res call({
@JsonKey(unknownEnumValue: CardBrand.unknown) CardBrand brand, String? cardholderName, String? id, String? lastFourDigits,@JsonKey(unknownEnumValue: CardCoBrand.unknown) CardCoBrand? coBrand, num? expirationMonth, num? expirationYear, String? bin
});




}
/// @nodoc
class _$OfflineCardCopyWithImpl<$Res>
    implements $OfflineCardCopyWith<$Res> {
  _$OfflineCardCopyWithImpl(this._self, this._then);

  final OfflineCard _self;
  final $Res Function(OfflineCard) _then;

/// Create a copy of OfflineCard
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? brand = null,Object? cardholderName = freezed,Object? id = freezed,Object? lastFourDigits = freezed,Object? coBrand = freezed,Object? expirationMonth = freezed,Object? expirationYear = freezed,Object? bin = freezed,}) {
  return _then(_self.copyWith(
brand: null == brand ? _self.brand : brand // ignore: cast_nullable_to_non_nullable
as CardBrand,cardholderName: freezed == cardholderName ? _self.cardholderName : cardholderName // ignore: cast_nullable_to_non_nullable
as String?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,lastFourDigits: freezed == lastFourDigits ? _self.lastFourDigits : lastFourDigits // ignore: cast_nullable_to_non_nullable
as String?,coBrand: freezed == coBrand ? _self.coBrand : coBrand // ignore: cast_nullable_to_non_nullable
as CardCoBrand?,expirationMonth: freezed == expirationMonth ? _self.expirationMonth : expirationMonth // ignore: cast_nullable_to_non_nullable
as num?,expirationYear: freezed == expirationYear ? _self.expirationYear : expirationYear // ignore: cast_nullable_to_non_nullable
as num?,bin: freezed == bin ? _self.bin : bin // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [OfflineCard].
extension OfflineCardPatterns on OfflineCard {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OfflineCard value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OfflineCard() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OfflineCard value)  $default,){
final _that = this;
switch (_that) {
case _OfflineCard():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OfflineCard value)?  $default,){
final _that = this;
switch (_that) {
case _OfflineCard() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(unknownEnumValue: CardBrand.unknown)  CardBrand brand,  String? cardholderName,  String? id,  String? lastFourDigits, @JsonKey(unknownEnumValue: CardCoBrand.unknown)  CardCoBrand? coBrand,  num? expirationMonth,  num? expirationYear,  String? bin)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OfflineCard() when $default != null:
return $default(_that.brand,_that.cardholderName,_that.id,_that.lastFourDigits,_that.coBrand,_that.expirationMonth,_that.expirationYear,_that.bin);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(unknownEnumValue: CardBrand.unknown)  CardBrand brand,  String? cardholderName,  String? id,  String? lastFourDigits, @JsonKey(unknownEnumValue: CardCoBrand.unknown)  CardCoBrand? coBrand,  num? expirationMonth,  num? expirationYear,  String? bin)  $default,) {final _that = this;
switch (_that) {
case _OfflineCard():
return $default(_that.brand,_that.cardholderName,_that.id,_that.lastFourDigits,_that.coBrand,_that.expirationMonth,_that.expirationYear,_that.bin);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(unknownEnumValue: CardBrand.unknown)  CardBrand brand,  String? cardholderName,  String? id,  String? lastFourDigits, @JsonKey(unknownEnumValue: CardCoBrand.unknown)  CardCoBrand? coBrand,  num? expirationMonth,  num? expirationYear,  String? bin)?  $default,) {final _that = this;
switch (_that) {
case _OfflineCard() when $default != null:
return $default(_that.brand,_that.cardholderName,_that.id,_that.lastFourDigits,_that.coBrand,_that.expirationMonth,_that.expirationYear,_that.bin);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OfflineCard with DiagnosticableTreeMixin implements OfflineCard {
  const _OfflineCard({@JsonKey(unknownEnumValue: CardBrand.unknown) required this.brand, this.cardholderName, this.id, this.lastFourDigits, @JsonKey(unknownEnumValue: CardCoBrand.unknown) this.coBrand, this.expirationMonth, this.expirationYear, this.bin});
  factory _OfflineCard.fromJson(Map<String, dynamic> json) => _$OfflineCardFromJson(json);

@override@JsonKey(unknownEnumValue: CardBrand.unknown) final  CardBrand brand;
@override final  String? cardholderName;
@override final  String? id;
@override final  String? lastFourDigits;
@override@JsonKey(unknownEnumValue: CardCoBrand.unknown) final  CardCoBrand? coBrand;
@override final  num? expirationMonth;
@override final  num? expirationYear;
@override final  String? bin;

/// Create a copy of OfflineCard
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OfflineCardCopyWith<_OfflineCard> get copyWith => __$OfflineCardCopyWithImpl<_OfflineCard>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OfflineCardToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'OfflineCard'))
    ..add(DiagnosticsProperty('brand', brand))..add(DiagnosticsProperty('cardholderName', cardholderName))..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('lastFourDigits', lastFourDigits))..add(DiagnosticsProperty('coBrand', coBrand))..add(DiagnosticsProperty('expirationMonth', expirationMonth))..add(DiagnosticsProperty('expirationYear', expirationYear))..add(DiagnosticsProperty('bin', bin));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OfflineCard&&(identical(other.brand, brand) || other.brand == brand)&&(identical(other.cardholderName, cardholderName) || other.cardholderName == cardholderName)&&(identical(other.id, id) || other.id == id)&&(identical(other.lastFourDigits, lastFourDigits) || other.lastFourDigits == lastFourDigits)&&(identical(other.coBrand, coBrand) || other.coBrand == coBrand)&&(identical(other.expirationMonth, expirationMonth) || other.expirationMonth == expirationMonth)&&(identical(other.expirationYear, expirationYear) || other.expirationYear == expirationYear)&&(identical(other.bin, bin) || other.bin == bin));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,brand,cardholderName,id,lastFourDigits,coBrand,expirationMonth,expirationYear,bin);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'OfflineCard(brand: $brand, cardholderName: $cardholderName, id: $id, lastFourDigits: $lastFourDigits, coBrand: $coBrand, expirationMonth: $expirationMonth, expirationYear: $expirationYear, bin: $bin)';
}


}

/// @nodoc
abstract mixin class _$OfflineCardCopyWith<$Res> implements $OfflineCardCopyWith<$Res> {
  factory _$OfflineCardCopyWith(_OfflineCard value, $Res Function(_OfflineCard) _then) = __$OfflineCardCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(unknownEnumValue: CardBrand.unknown) CardBrand brand, String? cardholderName, String? id, String? lastFourDigits,@JsonKey(unknownEnumValue: CardCoBrand.unknown) CardCoBrand? coBrand, num? expirationMonth, num? expirationYear, String? bin
});




}
/// @nodoc
class __$OfflineCardCopyWithImpl<$Res>
    implements _$OfflineCardCopyWith<$Res> {
  __$OfflineCardCopyWithImpl(this._self, this._then);

  final _OfflineCard _self;
  final $Res Function(_OfflineCard) _then;

/// Create a copy of OfflineCard
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? brand = null,Object? cardholderName = freezed,Object? id = freezed,Object? lastFourDigits = freezed,Object? coBrand = freezed,Object? expirationMonth = freezed,Object? expirationYear = freezed,Object? bin = freezed,}) {
  return _then(_OfflineCard(
brand: null == brand ? _self.brand : brand // ignore: cast_nullable_to_non_nullable
as CardBrand,cardholderName: freezed == cardholderName ? _self.cardholderName : cardholderName // ignore: cast_nullable_to_non_nullable
as String?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,lastFourDigits: freezed == lastFourDigits ? _self.lastFourDigits : lastFourDigits // ignore: cast_nullable_to_non_nullable
as String?,coBrand: freezed == coBrand ? _self.coBrand : coBrand // ignore: cast_nullable_to_non_nullable
as CardCoBrand?,expirationMonth: freezed == expirationMonth ? _self.expirationMonth : expirationMonth // ignore: cast_nullable_to_non_nullable
as num?,expirationYear: freezed == expirationYear ? _self.expirationYear : expirationYear // ignore: cast_nullable_to_non_nullable
as num?,bin: freezed == bin ? _self.bin : bin // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$CardPaymentDetails implements DiagnosticableTreeMixin {

 String? get applicationIdentifier; String? get applicationName; String? get authorizationCode; Card? get card;@JsonKey(unknownEnumValue: EntryMethod.unknown) EntryMethod get entryMethod;@JsonKey(unknownEnumValue: CardPaymentStatus.unknown) CardPaymentStatus get status; CardSurchargeDetails? get appliedCardSurchargeDetails; VerificationMethod? get verificationMethod; VerificationResult? get verificationResults;
/// Create a copy of CardPaymentDetails
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CardPaymentDetailsCopyWith<CardPaymentDetails> get copyWith => _$CardPaymentDetailsCopyWithImpl<CardPaymentDetails>(this as CardPaymentDetails, _$identity);

  /// Serializes this CardPaymentDetails to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'CardPaymentDetails'))
    ..add(DiagnosticsProperty('applicationIdentifier', applicationIdentifier))..add(DiagnosticsProperty('applicationName', applicationName))..add(DiagnosticsProperty('authorizationCode', authorizationCode))..add(DiagnosticsProperty('card', card))..add(DiagnosticsProperty('entryMethod', entryMethod))..add(DiagnosticsProperty('status', status))..add(DiagnosticsProperty('appliedCardSurchargeDetails', appliedCardSurchargeDetails))..add(DiagnosticsProperty('verificationMethod', verificationMethod))..add(DiagnosticsProperty('verificationResults', verificationResults));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CardPaymentDetails&&(identical(other.applicationIdentifier, applicationIdentifier) || other.applicationIdentifier == applicationIdentifier)&&(identical(other.applicationName, applicationName) || other.applicationName == applicationName)&&(identical(other.authorizationCode, authorizationCode) || other.authorizationCode == authorizationCode)&&(identical(other.card, card) || other.card == card)&&(identical(other.entryMethod, entryMethod) || other.entryMethod == entryMethod)&&(identical(other.status, status) || other.status == status)&&(identical(other.appliedCardSurchargeDetails, appliedCardSurchargeDetails) || other.appliedCardSurchargeDetails == appliedCardSurchargeDetails)&&(identical(other.verificationMethod, verificationMethod) || other.verificationMethod == verificationMethod)&&(identical(other.verificationResults, verificationResults) || other.verificationResults == verificationResults));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,applicationIdentifier,applicationName,authorizationCode,card,entryMethod,status,appliedCardSurchargeDetails,verificationMethod,verificationResults);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'CardPaymentDetails(applicationIdentifier: $applicationIdentifier, applicationName: $applicationName, authorizationCode: $authorizationCode, card: $card, entryMethod: $entryMethod, status: $status, appliedCardSurchargeDetails: $appliedCardSurchargeDetails, verificationMethod: $verificationMethod, verificationResults: $verificationResults)';
}


}

/// @nodoc
abstract mixin class $CardPaymentDetailsCopyWith<$Res>  {
  factory $CardPaymentDetailsCopyWith(CardPaymentDetails value, $Res Function(CardPaymentDetails) _then) = _$CardPaymentDetailsCopyWithImpl;
@useResult
$Res call({
 String? applicationIdentifier, String? applicationName, String? authorizationCode, Card? card,@JsonKey(unknownEnumValue: EntryMethod.unknown) EntryMethod entryMethod,@JsonKey(unknownEnumValue: CardPaymentStatus.unknown) CardPaymentStatus status, CardSurchargeDetails? appliedCardSurchargeDetails, VerificationMethod? verificationMethod, VerificationResult? verificationResults
});


$CardCopyWith<$Res>? get card;$CardSurchargeDetailsCopyWith<$Res>? get appliedCardSurchargeDetails;

}
/// @nodoc
class _$CardPaymentDetailsCopyWithImpl<$Res>
    implements $CardPaymentDetailsCopyWith<$Res> {
  _$CardPaymentDetailsCopyWithImpl(this._self, this._then);

  final CardPaymentDetails _self;
  final $Res Function(CardPaymentDetails) _then;

/// Create a copy of CardPaymentDetails
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? applicationIdentifier = freezed,Object? applicationName = freezed,Object? authorizationCode = freezed,Object? card = freezed,Object? entryMethod = null,Object? status = null,Object? appliedCardSurchargeDetails = freezed,Object? verificationMethod = freezed,Object? verificationResults = freezed,}) {
  return _then(_self.copyWith(
applicationIdentifier: freezed == applicationIdentifier ? _self.applicationIdentifier : applicationIdentifier // ignore: cast_nullable_to_non_nullable
as String?,applicationName: freezed == applicationName ? _self.applicationName : applicationName // ignore: cast_nullable_to_non_nullable
as String?,authorizationCode: freezed == authorizationCode ? _self.authorizationCode : authorizationCode // ignore: cast_nullable_to_non_nullable
as String?,card: freezed == card ? _self.card : card // ignore: cast_nullable_to_non_nullable
as Card?,entryMethod: null == entryMethod ? _self.entryMethod : entryMethod // ignore: cast_nullable_to_non_nullable
as EntryMethod,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as CardPaymentStatus,appliedCardSurchargeDetails: freezed == appliedCardSurchargeDetails ? _self.appliedCardSurchargeDetails : appliedCardSurchargeDetails // ignore: cast_nullable_to_non_nullable
as CardSurchargeDetails?,verificationMethod: freezed == verificationMethod ? _self.verificationMethod : verificationMethod // ignore: cast_nullable_to_non_nullable
as VerificationMethod?,verificationResults: freezed == verificationResults ? _self.verificationResults : verificationResults // ignore: cast_nullable_to_non_nullable
as VerificationResult?,
  ));
}
/// Create a copy of CardPaymentDetails
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CardCopyWith<$Res>? get card {
    if (_self.card == null) {
    return null;
  }

  return $CardCopyWith<$Res>(_self.card!, (value) {
    return _then(_self.copyWith(card: value));
  });
}/// Create a copy of CardPaymentDetails
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CardSurchargeDetailsCopyWith<$Res>? get appliedCardSurchargeDetails {
    if (_self.appliedCardSurchargeDetails == null) {
    return null;
  }

  return $CardSurchargeDetailsCopyWith<$Res>(_self.appliedCardSurchargeDetails!, (value) {
    return _then(_self.copyWith(appliedCardSurchargeDetails: value));
  });
}
}


/// Adds pattern-matching-related methods to [CardPaymentDetails].
extension CardPaymentDetailsPatterns on CardPaymentDetails {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CardPaymentDetails value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CardPaymentDetails() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CardPaymentDetails value)  $default,){
final _that = this;
switch (_that) {
case _CardPaymentDetails():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CardPaymentDetails value)?  $default,){
final _that = this;
switch (_that) {
case _CardPaymentDetails() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? applicationIdentifier,  String? applicationName,  String? authorizationCode,  Card? card, @JsonKey(unknownEnumValue: EntryMethod.unknown)  EntryMethod entryMethod, @JsonKey(unknownEnumValue: CardPaymentStatus.unknown)  CardPaymentStatus status,  CardSurchargeDetails? appliedCardSurchargeDetails,  VerificationMethod? verificationMethod,  VerificationResult? verificationResults)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CardPaymentDetails() when $default != null:
return $default(_that.applicationIdentifier,_that.applicationName,_that.authorizationCode,_that.card,_that.entryMethod,_that.status,_that.appliedCardSurchargeDetails,_that.verificationMethod,_that.verificationResults);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? applicationIdentifier,  String? applicationName,  String? authorizationCode,  Card? card, @JsonKey(unknownEnumValue: EntryMethod.unknown)  EntryMethod entryMethod, @JsonKey(unknownEnumValue: CardPaymentStatus.unknown)  CardPaymentStatus status,  CardSurchargeDetails? appliedCardSurchargeDetails,  VerificationMethod? verificationMethod,  VerificationResult? verificationResults)  $default,) {final _that = this;
switch (_that) {
case _CardPaymentDetails():
return $default(_that.applicationIdentifier,_that.applicationName,_that.authorizationCode,_that.card,_that.entryMethod,_that.status,_that.appliedCardSurchargeDetails,_that.verificationMethod,_that.verificationResults);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? applicationIdentifier,  String? applicationName,  String? authorizationCode,  Card? card, @JsonKey(unknownEnumValue: EntryMethod.unknown)  EntryMethod entryMethod, @JsonKey(unknownEnumValue: CardPaymentStatus.unknown)  CardPaymentStatus status,  CardSurchargeDetails? appliedCardSurchargeDetails,  VerificationMethod? verificationMethod,  VerificationResult? verificationResults)?  $default,) {final _that = this;
switch (_that) {
case _CardPaymentDetails() when $default != null:
return $default(_that.applicationIdentifier,_that.applicationName,_that.authorizationCode,_that.card,_that.entryMethod,_that.status,_that.appliedCardSurchargeDetails,_that.verificationMethod,_that.verificationResults);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CardPaymentDetails with DiagnosticableTreeMixin implements CardPaymentDetails {
  const _CardPaymentDetails({this.applicationIdentifier, this.applicationName, this.authorizationCode, this.card, @JsonKey(unknownEnumValue: EntryMethod.unknown) required this.entryMethod, @JsonKey(unknownEnumValue: CardPaymentStatus.unknown) required this.status, this.appliedCardSurchargeDetails, this.verificationMethod, this.verificationResults});
  factory _CardPaymentDetails.fromJson(Map<String, dynamic> json) => _$CardPaymentDetailsFromJson(json);

@override final  String? applicationIdentifier;
@override final  String? applicationName;
@override final  String? authorizationCode;
@override final  Card? card;
@override@JsonKey(unknownEnumValue: EntryMethod.unknown) final  EntryMethod entryMethod;
@override@JsonKey(unknownEnumValue: CardPaymentStatus.unknown) final  CardPaymentStatus status;
@override final  CardSurchargeDetails? appliedCardSurchargeDetails;
@override final  VerificationMethod? verificationMethod;
@override final  VerificationResult? verificationResults;

/// Create a copy of CardPaymentDetails
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CardPaymentDetailsCopyWith<_CardPaymentDetails> get copyWith => __$CardPaymentDetailsCopyWithImpl<_CardPaymentDetails>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CardPaymentDetailsToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'CardPaymentDetails'))
    ..add(DiagnosticsProperty('applicationIdentifier', applicationIdentifier))..add(DiagnosticsProperty('applicationName', applicationName))..add(DiagnosticsProperty('authorizationCode', authorizationCode))..add(DiagnosticsProperty('card', card))..add(DiagnosticsProperty('entryMethod', entryMethod))..add(DiagnosticsProperty('status', status))..add(DiagnosticsProperty('appliedCardSurchargeDetails', appliedCardSurchargeDetails))..add(DiagnosticsProperty('verificationMethod', verificationMethod))..add(DiagnosticsProperty('verificationResults', verificationResults));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CardPaymentDetails&&(identical(other.applicationIdentifier, applicationIdentifier) || other.applicationIdentifier == applicationIdentifier)&&(identical(other.applicationName, applicationName) || other.applicationName == applicationName)&&(identical(other.authorizationCode, authorizationCode) || other.authorizationCode == authorizationCode)&&(identical(other.card, card) || other.card == card)&&(identical(other.entryMethod, entryMethod) || other.entryMethod == entryMethod)&&(identical(other.status, status) || other.status == status)&&(identical(other.appliedCardSurchargeDetails, appliedCardSurchargeDetails) || other.appliedCardSurchargeDetails == appliedCardSurchargeDetails)&&(identical(other.verificationMethod, verificationMethod) || other.verificationMethod == verificationMethod)&&(identical(other.verificationResults, verificationResults) || other.verificationResults == verificationResults));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,applicationIdentifier,applicationName,authorizationCode,card,entryMethod,status,appliedCardSurchargeDetails,verificationMethod,verificationResults);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'CardPaymentDetails(applicationIdentifier: $applicationIdentifier, applicationName: $applicationName, authorizationCode: $authorizationCode, card: $card, entryMethod: $entryMethod, status: $status, appliedCardSurchargeDetails: $appliedCardSurchargeDetails, verificationMethod: $verificationMethod, verificationResults: $verificationResults)';
}


}

/// @nodoc
abstract mixin class _$CardPaymentDetailsCopyWith<$Res> implements $CardPaymentDetailsCopyWith<$Res> {
  factory _$CardPaymentDetailsCopyWith(_CardPaymentDetails value, $Res Function(_CardPaymentDetails) _then) = __$CardPaymentDetailsCopyWithImpl;
@override @useResult
$Res call({
 String? applicationIdentifier, String? applicationName, String? authorizationCode, Card? card,@JsonKey(unknownEnumValue: EntryMethod.unknown) EntryMethod entryMethod,@JsonKey(unknownEnumValue: CardPaymentStatus.unknown) CardPaymentStatus status, CardSurchargeDetails? appliedCardSurchargeDetails, VerificationMethod? verificationMethod, VerificationResult? verificationResults
});


@override $CardCopyWith<$Res>? get card;@override $CardSurchargeDetailsCopyWith<$Res>? get appliedCardSurchargeDetails;

}
/// @nodoc
class __$CardPaymentDetailsCopyWithImpl<$Res>
    implements _$CardPaymentDetailsCopyWith<$Res> {
  __$CardPaymentDetailsCopyWithImpl(this._self, this._then);

  final _CardPaymentDetails _self;
  final $Res Function(_CardPaymentDetails) _then;

/// Create a copy of CardPaymentDetails
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? applicationIdentifier = freezed,Object? applicationName = freezed,Object? authorizationCode = freezed,Object? card = freezed,Object? entryMethod = null,Object? status = null,Object? appliedCardSurchargeDetails = freezed,Object? verificationMethod = freezed,Object? verificationResults = freezed,}) {
  return _then(_CardPaymentDetails(
applicationIdentifier: freezed == applicationIdentifier ? _self.applicationIdentifier : applicationIdentifier // ignore: cast_nullable_to_non_nullable
as String?,applicationName: freezed == applicationName ? _self.applicationName : applicationName // ignore: cast_nullable_to_non_nullable
as String?,authorizationCode: freezed == authorizationCode ? _self.authorizationCode : authorizationCode // ignore: cast_nullable_to_non_nullable
as String?,card: freezed == card ? _self.card : card // ignore: cast_nullable_to_non_nullable
as Card?,entryMethod: null == entryMethod ? _self.entryMethod : entryMethod // ignore: cast_nullable_to_non_nullable
as EntryMethod,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as CardPaymentStatus,appliedCardSurchargeDetails: freezed == appliedCardSurchargeDetails ? _self.appliedCardSurchargeDetails : appliedCardSurchargeDetails // ignore: cast_nullable_to_non_nullable
as CardSurchargeDetails?,verificationMethod: freezed == verificationMethod ? _self.verificationMethod : verificationMethod // ignore: cast_nullable_to_non_nullable
as VerificationMethod?,verificationResults: freezed == verificationResults ? _self.verificationResults : verificationResults // ignore: cast_nullable_to_non_nullable
as VerificationResult?,
  ));
}

/// Create a copy of CardPaymentDetails
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CardCopyWith<$Res>? get card {
    if (_self.card == null) {
    return null;
  }

  return $CardCopyWith<$Res>(_self.card!, (value) {
    return _then(_self.copyWith(card: value));
  });
}/// Create a copy of CardPaymentDetails
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CardSurchargeDetailsCopyWith<$Res>? get appliedCardSurchargeDetails {
    if (_self.appliedCardSurchargeDetails == null) {
    return null;
  }

  return $CardSurchargeDetailsCopyWith<$Res>(_self.appliedCardSurchargeDetails!, (value) {
    return _then(_self.copyWith(appliedCardSurchargeDetails: value));
  });
}
}


/// @nodoc
mixin _$CardSurchargeDetails implements DiagnosticableTreeMixin {

 Money get cardSurchargeMoney; Money? get taxOnCardSurchargeMoney; Money? get totalSurchargeMoney;
/// Create a copy of CardSurchargeDetails
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CardSurchargeDetailsCopyWith<CardSurchargeDetails> get copyWith => _$CardSurchargeDetailsCopyWithImpl<CardSurchargeDetails>(this as CardSurchargeDetails, _$identity);

  /// Serializes this CardSurchargeDetails to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'CardSurchargeDetails'))
    ..add(DiagnosticsProperty('cardSurchargeMoney', cardSurchargeMoney))..add(DiagnosticsProperty('taxOnCardSurchargeMoney', taxOnCardSurchargeMoney))..add(DiagnosticsProperty('totalSurchargeMoney', totalSurchargeMoney));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CardSurchargeDetails&&(identical(other.cardSurchargeMoney, cardSurchargeMoney) || other.cardSurchargeMoney == cardSurchargeMoney)&&(identical(other.taxOnCardSurchargeMoney, taxOnCardSurchargeMoney) || other.taxOnCardSurchargeMoney == taxOnCardSurchargeMoney)&&(identical(other.totalSurchargeMoney, totalSurchargeMoney) || other.totalSurchargeMoney == totalSurchargeMoney));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,cardSurchargeMoney,taxOnCardSurchargeMoney,totalSurchargeMoney);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'CardSurchargeDetails(cardSurchargeMoney: $cardSurchargeMoney, taxOnCardSurchargeMoney: $taxOnCardSurchargeMoney, totalSurchargeMoney: $totalSurchargeMoney)';
}


}

/// @nodoc
abstract mixin class $CardSurchargeDetailsCopyWith<$Res>  {
  factory $CardSurchargeDetailsCopyWith(CardSurchargeDetails value, $Res Function(CardSurchargeDetails) _then) = _$CardSurchargeDetailsCopyWithImpl;
@useResult
$Res call({
 Money cardSurchargeMoney, Money? taxOnCardSurchargeMoney, Money? totalSurchargeMoney
});


$MoneyCopyWith<$Res> get cardSurchargeMoney;$MoneyCopyWith<$Res>? get taxOnCardSurchargeMoney;$MoneyCopyWith<$Res>? get totalSurchargeMoney;

}
/// @nodoc
class _$CardSurchargeDetailsCopyWithImpl<$Res>
    implements $CardSurchargeDetailsCopyWith<$Res> {
  _$CardSurchargeDetailsCopyWithImpl(this._self, this._then);

  final CardSurchargeDetails _self;
  final $Res Function(CardSurchargeDetails) _then;

/// Create a copy of CardSurchargeDetails
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? cardSurchargeMoney = null,Object? taxOnCardSurchargeMoney = freezed,Object? totalSurchargeMoney = freezed,}) {
  return _then(_self.copyWith(
cardSurchargeMoney: null == cardSurchargeMoney ? _self.cardSurchargeMoney : cardSurchargeMoney // ignore: cast_nullable_to_non_nullable
as Money,taxOnCardSurchargeMoney: freezed == taxOnCardSurchargeMoney ? _self.taxOnCardSurchargeMoney : taxOnCardSurchargeMoney // ignore: cast_nullable_to_non_nullable
as Money?,totalSurchargeMoney: freezed == totalSurchargeMoney ? _self.totalSurchargeMoney : totalSurchargeMoney // ignore: cast_nullable_to_non_nullable
as Money?,
  ));
}
/// Create a copy of CardSurchargeDetails
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MoneyCopyWith<$Res> get cardSurchargeMoney {
  
  return $MoneyCopyWith<$Res>(_self.cardSurchargeMoney, (value) {
    return _then(_self.copyWith(cardSurchargeMoney: value));
  });
}/// Create a copy of CardSurchargeDetails
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MoneyCopyWith<$Res>? get taxOnCardSurchargeMoney {
    if (_self.taxOnCardSurchargeMoney == null) {
    return null;
  }

  return $MoneyCopyWith<$Res>(_self.taxOnCardSurchargeMoney!, (value) {
    return _then(_self.copyWith(taxOnCardSurchargeMoney: value));
  });
}/// Create a copy of CardSurchargeDetails
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MoneyCopyWith<$Res>? get totalSurchargeMoney {
    if (_self.totalSurchargeMoney == null) {
    return null;
  }

  return $MoneyCopyWith<$Res>(_self.totalSurchargeMoney!, (value) {
    return _then(_self.copyWith(totalSurchargeMoney: value));
  });
}
}


/// Adds pattern-matching-related methods to [CardSurchargeDetails].
extension CardSurchargeDetailsPatterns on CardSurchargeDetails {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CardSurchargeDetails value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CardSurchargeDetails() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CardSurchargeDetails value)  $default,){
final _that = this;
switch (_that) {
case _CardSurchargeDetails():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CardSurchargeDetails value)?  $default,){
final _that = this;
switch (_that) {
case _CardSurchargeDetails() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Money cardSurchargeMoney,  Money? taxOnCardSurchargeMoney,  Money? totalSurchargeMoney)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CardSurchargeDetails() when $default != null:
return $default(_that.cardSurchargeMoney,_that.taxOnCardSurchargeMoney,_that.totalSurchargeMoney);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Money cardSurchargeMoney,  Money? taxOnCardSurchargeMoney,  Money? totalSurchargeMoney)  $default,) {final _that = this;
switch (_that) {
case _CardSurchargeDetails():
return $default(_that.cardSurchargeMoney,_that.taxOnCardSurchargeMoney,_that.totalSurchargeMoney);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Money cardSurchargeMoney,  Money? taxOnCardSurchargeMoney,  Money? totalSurchargeMoney)?  $default,) {final _that = this;
switch (_that) {
case _CardSurchargeDetails() when $default != null:
return $default(_that.cardSurchargeMoney,_that.taxOnCardSurchargeMoney,_that.totalSurchargeMoney);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CardSurchargeDetails with DiagnosticableTreeMixin implements CardSurchargeDetails {
  const _CardSurchargeDetails({required this.cardSurchargeMoney, this.taxOnCardSurchargeMoney, this.totalSurchargeMoney});
  factory _CardSurchargeDetails.fromJson(Map<String, dynamic> json) => _$CardSurchargeDetailsFromJson(json);

@override final  Money cardSurchargeMoney;
@override final  Money? taxOnCardSurchargeMoney;
@override final  Money? totalSurchargeMoney;

/// Create a copy of CardSurchargeDetails
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CardSurchargeDetailsCopyWith<_CardSurchargeDetails> get copyWith => __$CardSurchargeDetailsCopyWithImpl<_CardSurchargeDetails>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CardSurchargeDetailsToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'CardSurchargeDetails'))
    ..add(DiagnosticsProperty('cardSurchargeMoney', cardSurchargeMoney))..add(DiagnosticsProperty('taxOnCardSurchargeMoney', taxOnCardSurchargeMoney))..add(DiagnosticsProperty('totalSurchargeMoney', totalSurchargeMoney));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CardSurchargeDetails&&(identical(other.cardSurchargeMoney, cardSurchargeMoney) || other.cardSurchargeMoney == cardSurchargeMoney)&&(identical(other.taxOnCardSurchargeMoney, taxOnCardSurchargeMoney) || other.taxOnCardSurchargeMoney == taxOnCardSurchargeMoney)&&(identical(other.totalSurchargeMoney, totalSurchargeMoney) || other.totalSurchargeMoney == totalSurchargeMoney));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,cardSurchargeMoney,taxOnCardSurchargeMoney,totalSurchargeMoney);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'CardSurchargeDetails(cardSurchargeMoney: $cardSurchargeMoney, taxOnCardSurchargeMoney: $taxOnCardSurchargeMoney, totalSurchargeMoney: $totalSurchargeMoney)';
}


}

/// @nodoc
abstract mixin class _$CardSurchargeDetailsCopyWith<$Res> implements $CardSurchargeDetailsCopyWith<$Res> {
  factory _$CardSurchargeDetailsCopyWith(_CardSurchargeDetails value, $Res Function(_CardSurchargeDetails) _then) = __$CardSurchargeDetailsCopyWithImpl;
@override @useResult
$Res call({
 Money cardSurchargeMoney, Money? taxOnCardSurchargeMoney, Money? totalSurchargeMoney
});


@override $MoneyCopyWith<$Res> get cardSurchargeMoney;@override $MoneyCopyWith<$Res>? get taxOnCardSurchargeMoney;@override $MoneyCopyWith<$Res>? get totalSurchargeMoney;

}
/// @nodoc
class __$CardSurchargeDetailsCopyWithImpl<$Res>
    implements _$CardSurchargeDetailsCopyWith<$Res> {
  __$CardSurchargeDetailsCopyWithImpl(this._self, this._then);

  final _CardSurchargeDetails _self;
  final $Res Function(_CardSurchargeDetails) _then;

/// Create a copy of CardSurchargeDetails
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? cardSurchargeMoney = null,Object? taxOnCardSurchargeMoney = freezed,Object? totalSurchargeMoney = freezed,}) {
  return _then(_CardSurchargeDetails(
cardSurchargeMoney: null == cardSurchargeMoney ? _self.cardSurchargeMoney : cardSurchargeMoney // ignore: cast_nullable_to_non_nullable
as Money,taxOnCardSurchargeMoney: freezed == taxOnCardSurchargeMoney ? _self.taxOnCardSurchargeMoney : taxOnCardSurchargeMoney // ignore: cast_nullable_to_non_nullable
as Money?,totalSurchargeMoney: freezed == totalSurchargeMoney ? _self.totalSurchargeMoney : totalSurchargeMoney // ignore: cast_nullable_to_non_nullable
as Money?,
  ));
}

/// Create a copy of CardSurchargeDetails
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MoneyCopyWith<$Res> get cardSurchargeMoney {
  
  return $MoneyCopyWith<$Res>(_self.cardSurchargeMoney, (value) {
    return _then(_self.copyWith(cardSurchargeMoney: value));
  });
}/// Create a copy of CardSurchargeDetails
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MoneyCopyWith<$Res>? get taxOnCardSurchargeMoney {
    if (_self.taxOnCardSurchargeMoney == null) {
    return null;
  }

  return $MoneyCopyWith<$Res>(_self.taxOnCardSurchargeMoney!, (value) {
    return _then(_self.copyWith(taxOnCardSurchargeMoney: value));
  });
}/// Create a copy of CardSurchargeDetails
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MoneyCopyWith<$Res>? get totalSurchargeMoney {
    if (_self.totalSurchargeMoney == null) {
    return null;
  }

  return $MoneyCopyWith<$Res>(_self.totalSurchargeMoney!, (value) {
    return _then(_self.copyWith(totalSurchargeMoney: value));
  });
}
}


/// @nodoc
mixin _$CashPaymentDetails implements DiagnosticableTreeMixin {

 Money? get buyerSuppliedMoney; Money? get changeBackMoney;
/// Create a copy of CashPaymentDetails
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CashPaymentDetailsCopyWith<CashPaymentDetails> get copyWith => _$CashPaymentDetailsCopyWithImpl<CashPaymentDetails>(this as CashPaymentDetails, _$identity);

  /// Serializes this CashPaymentDetails to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'CashPaymentDetails'))
    ..add(DiagnosticsProperty('buyerSuppliedMoney', buyerSuppliedMoney))..add(DiagnosticsProperty('changeBackMoney', changeBackMoney));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CashPaymentDetails&&(identical(other.buyerSuppliedMoney, buyerSuppliedMoney) || other.buyerSuppliedMoney == buyerSuppliedMoney)&&(identical(other.changeBackMoney, changeBackMoney) || other.changeBackMoney == changeBackMoney));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,buyerSuppliedMoney,changeBackMoney);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'CashPaymentDetails(buyerSuppliedMoney: $buyerSuppliedMoney, changeBackMoney: $changeBackMoney)';
}


}

/// @nodoc
abstract mixin class $CashPaymentDetailsCopyWith<$Res>  {
  factory $CashPaymentDetailsCopyWith(CashPaymentDetails value, $Res Function(CashPaymentDetails) _then) = _$CashPaymentDetailsCopyWithImpl;
@useResult
$Res call({
 Money? buyerSuppliedMoney, Money? changeBackMoney
});


$MoneyCopyWith<$Res>? get buyerSuppliedMoney;$MoneyCopyWith<$Res>? get changeBackMoney;

}
/// @nodoc
class _$CashPaymentDetailsCopyWithImpl<$Res>
    implements $CashPaymentDetailsCopyWith<$Res> {
  _$CashPaymentDetailsCopyWithImpl(this._self, this._then);

  final CashPaymentDetails _self;
  final $Res Function(CashPaymentDetails) _then;

/// Create a copy of CashPaymentDetails
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? buyerSuppliedMoney = freezed,Object? changeBackMoney = freezed,}) {
  return _then(_self.copyWith(
buyerSuppliedMoney: freezed == buyerSuppliedMoney ? _self.buyerSuppliedMoney : buyerSuppliedMoney // ignore: cast_nullable_to_non_nullable
as Money?,changeBackMoney: freezed == changeBackMoney ? _self.changeBackMoney : changeBackMoney // ignore: cast_nullable_to_non_nullable
as Money?,
  ));
}
/// Create a copy of CashPaymentDetails
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MoneyCopyWith<$Res>? get buyerSuppliedMoney {
    if (_self.buyerSuppliedMoney == null) {
    return null;
  }

  return $MoneyCopyWith<$Res>(_self.buyerSuppliedMoney!, (value) {
    return _then(_self.copyWith(buyerSuppliedMoney: value));
  });
}/// Create a copy of CashPaymentDetails
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MoneyCopyWith<$Res>? get changeBackMoney {
    if (_self.changeBackMoney == null) {
    return null;
  }

  return $MoneyCopyWith<$Res>(_self.changeBackMoney!, (value) {
    return _then(_self.copyWith(changeBackMoney: value));
  });
}
}


/// Adds pattern-matching-related methods to [CashPaymentDetails].
extension CashPaymentDetailsPatterns on CashPaymentDetails {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CashPaymentDetails value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CashPaymentDetails() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CashPaymentDetails value)  $default,){
final _that = this;
switch (_that) {
case _CashPaymentDetails():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CashPaymentDetails value)?  $default,){
final _that = this;
switch (_that) {
case _CashPaymentDetails() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Money? buyerSuppliedMoney,  Money? changeBackMoney)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CashPaymentDetails() when $default != null:
return $default(_that.buyerSuppliedMoney,_that.changeBackMoney);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Money? buyerSuppliedMoney,  Money? changeBackMoney)  $default,) {final _that = this;
switch (_that) {
case _CashPaymentDetails():
return $default(_that.buyerSuppliedMoney,_that.changeBackMoney);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Money? buyerSuppliedMoney,  Money? changeBackMoney)?  $default,) {final _that = this;
switch (_that) {
case _CashPaymentDetails() when $default != null:
return $default(_that.buyerSuppliedMoney,_that.changeBackMoney);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CashPaymentDetails with DiagnosticableTreeMixin implements CashPaymentDetails {
  const _CashPaymentDetails({this.buyerSuppliedMoney, this.changeBackMoney});
  factory _CashPaymentDetails.fromJson(Map<String, dynamic> json) => _$CashPaymentDetailsFromJson(json);

@override final  Money? buyerSuppliedMoney;
@override final  Money? changeBackMoney;

/// Create a copy of CashPaymentDetails
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CashPaymentDetailsCopyWith<_CashPaymentDetails> get copyWith => __$CashPaymentDetailsCopyWithImpl<_CashPaymentDetails>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CashPaymentDetailsToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'CashPaymentDetails'))
    ..add(DiagnosticsProperty('buyerSuppliedMoney', buyerSuppliedMoney))..add(DiagnosticsProperty('changeBackMoney', changeBackMoney));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CashPaymentDetails&&(identical(other.buyerSuppliedMoney, buyerSuppliedMoney) || other.buyerSuppliedMoney == buyerSuppliedMoney)&&(identical(other.changeBackMoney, changeBackMoney) || other.changeBackMoney == changeBackMoney));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,buyerSuppliedMoney,changeBackMoney);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'CashPaymentDetails(buyerSuppliedMoney: $buyerSuppliedMoney, changeBackMoney: $changeBackMoney)';
}


}

/// @nodoc
abstract mixin class _$CashPaymentDetailsCopyWith<$Res> implements $CashPaymentDetailsCopyWith<$Res> {
  factory _$CashPaymentDetailsCopyWith(_CashPaymentDetails value, $Res Function(_CashPaymentDetails) _then) = __$CashPaymentDetailsCopyWithImpl;
@override @useResult
$Res call({
 Money? buyerSuppliedMoney, Money? changeBackMoney
});


@override $MoneyCopyWith<$Res>? get buyerSuppliedMoney;@override $MoneyCopyWith<$Res>? get changeBackMoney;

}
/// @nodoc
class __$CashPaymentDetailsCopyWithImpl<$Res>
    implements _$CashPaymentDetailsCopyWith<$Res> {
  __$CashPaymentDetailsCopyWithImpl(this._self, this._then);

  final _CashPaymentDetails _self;
  final $Res Function(_CashPaymentDetails) _then;

/// Create a copy of CashPaymentDetails
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? buyerSuppliedMoney = freezed,Object? changeBackMoney = freezed,}) {
  return _then(_CashPaymentDetails(
buyerSuppliedMoney: freezed == buyerSuppliedMoney ? _self.buyerSuppliedMoney : buyerSuppliedMoney // ignore: cast_nullable_to_non_nullable
as Money?,changeBackMoney: freezed == changeBackMoney ? _self.changeBackMoney : changeBackMoney // ignore: cast_nullable_to_non_nullable
as Money?,
  ));
}

/// Create a copy of CashPaymentDetails
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MoneyCopyWith<$Res>? get buyerSuppliedMoney {
    if (_self.buyerSuppliedMoney == null) {
    return null;
  }

  return $MoneyCopyWith<$Res>(_self.buyerSuppliedMoney!, (value) {
    return _then(_self.copyWith(buyerSuppliedMoney: value));
  });
}/// Create a copy of CashPaymentDetails
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MoneyCopyWith<$Res>? get changeBackMoney {
    if (_self.changeBackMoney == null) {
    return null;
  }

  return $MoneyCopyWith<$Res>(_self.changeBackMoney!, (value) {
    return _then(_self.copyWith(changeBackMoney: value));
  });
}
}


/// @nodoc
mixin _$CardInputMethods implements DiagnosticableTreeMixin {

 int get chip; int get contactless; int get swipe;
/// Create a copy of CardInputMethods
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CardInputMethodsCopyWith<CardInputMethods> get copyWith => _$CardInputMethodsCopyWithImpl<CardInputMethods>(this as CardInputMethods, _$identity);

  /// Serializes this CardInputMethods to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'CardInputMethods'))
    ..add(DiagnosticsProperty('chip', chip))..add(DiagnosticsProperty('contactless', contactless))..add(DiagnosticsProperty('swipe', swipe));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CardInputMethods&&(identical(other.chip, chip) || other.chip == chip)&&(identical(other.contactless, contactless) || other.contactless == contactless)&&(identical(other.swipe, swipe) || other.swipe == swipe));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,chip,contactless,swipe);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'CardInputMethods(chip: $chip, contactless: $contactless, swipe: $swipe)';
}


}

/// @nodoc
abstract mixin class $CardInputMethodsCopyWith<$Res>  {
  factory $CardInputMethodsCopyWith(CardInputMethods value, $Res Function(CardInputMethods) _then) = _$CardInputMethodsCopyWithImpl;
@useResult
$Res call({
 int chip, int contactless, int swipe
});




}
/// @nodoc
class _$CardInputMethodsCopyWithImpl<$Res>
    implements $CardInputMethodsCopyWith<$Res> {
  _$CardInputMethodsCopyWithImpl(this._self, this._then);

  final CardInputMethods _self;
  final $Res Function(CardInputMethods) _then;

/// Create a copy of CardInputMethods
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? chip = null,Object? contactless = null,Object? swipe = null,}) {
  return _then(_self.copyWith(
chip: null == chip ? _self.chip : chip // ignore: cast_nullable_to_non_nullable
as int,contactless: null == contactless ? _self.contactless : contactless // ignore: cast_nullable_to_non_nullable
as int,swipe: null == swipe ? _self.swipe : swipe // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [CardInputMethods].
extension CardInputMethodsPatterns on CardInputMethods {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CardInputMethods value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CardInputMethods() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CardInputMethods value)  $default,){
final _that = this;
switch (_that) {
case _CardInputMethods():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CardInputMethods value)?  $default,){
final _that = this;
switch (_that) {
case _CardInputMethods() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int chip,  int contactless,  int swipe)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CardInputMethods() when $default != null:
return $default(_that.chip,_that.contactless,_that.swipe);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int chip,  int contactless,  int swipe)  $default,) {final _that = this;
switch (_that) {
case _CardInputMethods():
return $default(_that.chip,_that.contactless,_that.swipe);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int chip,  int contactless,  int swipe)?  $default,) {final _that = this;
switch (_that) {
case _CardInputMethods() when $default != null:
return $default(_that.chip,_that.contactless,_that.swipe);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CardInputMethods with DiagnosticableTreeMixin implements CardInputMethods {
  const _CardInputMethods({required this.chip, required this.contactless, required this.swipe});
  factory _CardInputMethods.fromJson(Map<String, dynamic> json) => _$CardInputMethodsFromJson(json);

@override final  int chip;
@override final  int contactless;
@override final  int swipe;

/// Create a copy of CardInputMethods
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CardInputMethodsCopyWith<_CardInputMethods> get copyWith => __$CardInputMethodsCopyWithImpl<_CardInputMethods>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CardInputMethodsToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'CardInputMethods'))
    ..add(DiagnosticsProperty('chip', chip))..add(DiagnosticsProperty('contactless', contactless))..add(DiagnosticsProperty('swipe', swipe));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CardInputMethods&&(identical(other.chip, chip) || other.chip == chip)&&(identical(other.contactless, contactless) || other.contactless == contactless)&&(identical(other.swipe, swipe) || other.swipe == swipe));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,chip,contactless,swipe);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'CardInputMethods(chip: $chip, contactless: $contactless, swipe: $swipe)';
}


}

/// @nodoc
abstract mixin class _$CardInputMethodsCopyWith<$Res> implements $CardInputMethodsCopyWith<$Res> {
  factory _$CardInputMethodsCopyWith(_CardInputMethods value, $Res Function(_CardInputMethods) _then) = __$CardInputMethodsCopyWithImpl;
@override @useResult
$Res call({
 int chip, int contactless, int swipe
});




}
/// @nodoc
class __$CardInputMethodsCopyWithImpl<$Res>
    implements _$CardInputMethodsCopyWith<$Res> {
  __$CardInputMethodsCopyWithImpl(this._self, this._then);

  final _CardInputMethods _self;
  final $Res Function(_CardInputMethods) _then;

/// Create a copy of CardInputMethods
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? chip = null,Object? contactless = null,Object? swipe = null,}) {
  return _then(_CardInputMethods(
chip: null == chip ? _self.chip : chip // ignore: cast_nullable_to_non_nullable
as int,contactless: null == contactless ? _self.contactless : contactless // ignore: cast_nullable_to_non_nullable
as int,swipe: null == swipe ? _self.swipe : swipe // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$ReaderBatteryStatus implements DiagnosticableTreeMixin {

 bool get isCharging; ReaderBatteryLevel? get level; int get percentage;
/// Create a copy of ReaderBatteryStatus
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReaderBatteryStatusCopyWith<ReaderBatteryStatus> get copyWith => _$ReaderBatteryStatusCopyWithImpl<ReaderBatteryStatus>(this as ReaderBatteryStatus, _$identity);

  /// Serializes this ReaderBatteryStatus to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ReaderBatteryStatus'))
    ..add(DiagnosticsProperty('isCharging', isCharging))..add(DiagnosticsProperty('level', level))..add(DiagnosticsProperty('percentage', percentage));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReaderBatteryStatus&&(identical(other.isCharging, isCharging) || other.isCharging == isCharging)&&(identical(other.level, level) || other.level == level)&&(identical(other.percentage, percentage) || other.percentage == percentage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,isCharging,level,percentage);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ReaderBatteryStatus(isCharging: $isCharging, level: $level, percentage: $percentage)';
}


}

/// @nodoc
abstract mixin class $ReaderBatteryStatusCopyWith<$Res>  {
  factory $ReaderBatteryStatusCopyWith(ReaderBatteryStatus value, $Res Function(ReaderBatteryStatus) _then) = _$ReaderBatteryStatusCopyWithImpl;
@useResult
$Res call({
 bool isCharging, ReaderBatteryLevel? level, int percentage
});




}
/// @nodoc
class _$ReaderBatteryStatusCopyWithImpl<$Res>
    implements $ReaderBatteryStatusCopyWith<$Res> {
  _$ReaderBatteryStatusCopyWithImpl(this._self, this._then);

  final ReaderBatteryStatus _self;
  final $Res Function(ReaderBatteryStatus) _then;

/// Create a copy of ReaderBatteryStatus
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isCharging = null,Object? level = freezed,Object? percentage = null,}) {
  return _then(_self.copyWith(
isCharging: null == isCharging ? _self.isCharging : isCharging // ignore: cast_nullable_to_non_nullable
as bool,level: freezed == level ? _self.level : level // ignore: cast_nullable_to_non_nullable
as ReaderBatteryLevel?,percentage: null == percentage ? _self.percentage : percentage // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [ReaderBatteryStatus].
extension ReaderBatteryStatusPatterns on ReaderBatteryStatus {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReaderBatteryStatus value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReaderBatteryStatus() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReaderBatteryStatus value)  $default,){
final _that = this;
switch (_that) {
case _ReaderBatteryStatus():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReaderBatteryStatus value)?  $default,){
final _that = this;
switch (_that) {
case _ReaderBatteryStatus() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isCharging,  ReaderBatteryLevel? level,  int percentage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ReaderBatteryStatus() when $default != null:
return $default(_that.isCharging,_that.level,_that.percentage);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isCharging,  ReaderBatteryLevel? level,  int percentage)  $default,) {final _that = this;
switch (_that) {
case _ReaderBatteryStatus():
return $default(_that.isCharging,_that.level,_that.percentage);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isCharging,  ReaderBatteryLevel? level,  int percentage)?  $default,) {final _that = this;
switch (_that) {
case _ReaderBatteryStatus() when $default != null:
return $default(_that.isCharging,_that.level,_that.percentage);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ReaderBatteryStatus with DiagnosticableTreeMixin implements ReaderBatteryStatus {
  const _ReaderBatteryStatus({required this.isCharging, this.level, required this.percentage});
  factory _ReaderBatteryStatus.fromJson(Map<String, dynamic> json) => _$ReaderBatteryStatusFromJson(json);

@override final  bool isCharging;
@override final  ReaderBatteryLevel? level;
@override final  int percentage;

/// Create a copy of ReaderBatteryStatus
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReaderBatteryStatusCopyWith<_ReaderBatteryStatus> get copyWith => __$ReaderBatteryStatusCopyWithImpl<_ReaderBatteryStatus>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ReaderBatteryStatusToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ReaderBatteryStatus'))
    ..add(DiagnosticsProperty('isCharging', isCharging))..add(DiagnosticsProperty('level', level))..add(DiagnosticsProperty('percentage', percentage));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReaderBatteryStatus&&(identical(other.isCharging, isCharging) || other.isCharging == isCharging)&&(identical(other.level, level) || other.level == level)&&(identical(other.percentage, percentage) || other.percentage == percentage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,isCharging,level,percentage);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ReaderBatteryStatus(isCharging: $isCharging, level: $level, percentage: $percentage)';
}


}

/// @nodoc
abstract mixin class _$ReaderBatteryStatusCopyWith<$Res> implements $ReaderBatteryStatusCopyWith<$Res> {
  factory _$ReaderBatteryStatusCopyWith(_ReaderBatteryStatus value, $Res Function(_ReaderBatteryStatus) _then) = __$ReaderBatteryStatusCopyWithImpl;
@override @useResult
$Res call({
 bool isCharging, ReaderBatteryLevel? level, int percentage
});




}
/// @nodoc
class __$ReaderBatteryStatusCopyWithImpl<$Res>
    implements _$ReaderBatteryStatusCopyWith<$Res> {
  __$ReaderBatteryStatusCopyWithImpl(this._self, this._then);

  final _ReaderBatteryStatus _self;
  final $Res Function(_ReaderBatteryStatus) _then;

/// Create a copy of ReaderBatteryStatus
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isCharging = null,Object? level = freezed,Object? percentage = null,}) {
  return _then(_ReaderBatteryStatus(
isCharging: null == isCharging ? _self.isCharging : isCharging // ignore: cast_nullable_to_non_nullable
as bool,level: freezed == level ? _self.level : level // ignore: cast_nullable_to_non_nullable
as ReaderBatteryLevel?,percentage: null == percentage ? _self.percentage : percentage // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$ReaderStatusInfo implements DiagnosticableTreeMixin {

 ReaderStatusInfoStatus get status; ReaderStatusInfoUnavailableReason? get unavailableReason; String? get unavailableReasonTitle; String? get unavailableReasonDetail;
/// Create a copy of ReaderStatusInfo
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReaderStatusInfoCopyWith<ReaderStatusInfo> get copyWith => _$ReaderStatusInfoCopyWithImpl<ReaderStatusInfo>(this as ReaderStatusInfo, _$identity);

  /// Serializes this ReaderStatusInfo to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ReaderStatusInfo'))
    ..add(DiagnosticsProperty('status', status))..add(DiagnosticsProperty('unavailableReason', unavailableReason))..add(DiagnosticsProperty('unavailableReasonTitle', unavailableReasonTitle))..add(DiagnosticsProperty('unavailableReasonDetail', unavailableReasonDetail));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReaderStatusInfo&&(identical(other.status, status) || other.status == status)&&(identical(other.unavailableReason, unavailableReason) || other.unavailableReason == unavailableReason)&&(identical(other.unavailableReasonTitle, unavailableReasonTitle) || other.unavailableReasonTitle == unavailableReasonTitle)&&(identical(other.unavailableReasonDetail, unavailableReasonDetail) || other.unavailableReasonDetail == unavailableReasonDetail));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,unavailableReason,unavailableReasonTitle,unavailableReasonDetail);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ReaderStatusInfo(status: $status, unavailableReason: $unavailableReason, unavailableReasonTitle: $unavailableReasonTitle, unavailableReasonDetail: $unavailableReasonDetail)';
}


}

/// @nodoc
abstract mixin class $ReaderStatusInfoCopyWith<$Res>  {
  factory $ReaderStatusInfoCopyWith(ReaderStatusInfo value, $Res Function(ReaderStatusInfo) _then) = _$ReaderStatusInfoCopyWithImpl;
@useResult
$Res call({
 ReaderStatusInfoStatus status, ReaderStatusInfoUnavailableReason? unavailableReason, String? unavailableReasonTitle, String? unavailableReasonDetail
});




}
/// @nodoc
class _$ReaderStatusInfoCopyWithImpl<$Res>
    implements $ReaderStatusInfoCopyWith<$Res> {
  _$ReaderStatusInfoCopyWithImpl(this._self, this._then);

  final ReaderStatusInfo _self;
  final $Res Function(ReaderStatusInfo) _then;

/// Create a copy of ReaderStatusInfo
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? unavailableReason = freezed,Object? unavailableReasonTitle = freezed,Object? unavailableReasonDetail = freezed,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ReaderStatusInfoStatus,unavailableReason: freezed == unavailableReason ? _self.unavailableReason : unavailableReason // ignore: cast_nullable_to_non_nullable
as ReaderStatusInfoUnavailableReason?,unavailableReasonTitle: freezed == unavailableReasonTitle ? _self.unavailableReasonTitle : unavailableReasonTitle // ignore: cast_nullable_to_non_nullable
as String?,unavailableReasonDetail: freezed == unavailableReasonDetail ? _self.unavailableReasonDetail : unavailableReasonDetail // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ReaderStatusInfo].
extension ReaderStatusInfoPatterns on ReaderStatusInfo {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReaderStatusInfo value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReaderStatusInfo() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReaderStatusInfo value)  $default,){
final _that = this;
switch (_that) {
case _ReaderStatusInfo():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReaderStatusInfo value)?  $default,){
final _that = this;
switch (_that) {
case _ReaderStatusInfo() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( ReaderStatusInfoStatus status,  ReaderStatusInfoUnavailableReason? unavailableReason,  String? unavailableReasonTitle,  String? unavailableReasonDetail)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ReaderStatusInfo() when $default != null:
return $default(_that.status,_that.unavailableReason,_that.unavailableReasonTitle,_that.unavailableReasonDetail);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( ReaderStatusInfoStatus status,  ReaderStatusInfoUnavailableReason? unavailableReason,  String? unavailableReasonTitle,  String? unavailableReasonDetail)  $default,) {final _that = this;
switch (_that) {
case _ReaderStatusInfo():
return $default(_that.status,_that.unavailableReason,_that.unavailableReasonTitle,_that.unavailableReasonDetail);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( ReaderStatusInfoStatus status,  ReaderStatusInfoUnavailableReason? unavailableReason,  String? unavailableReasonTitle,  String? unavailableReasonDetail)?  $default,) {final _that = this;
switch (_that) {
case _ReaderStatusInfo() when $default != null:
return $default(_that.status,_that.unavailableReason,_that.unavailableReasonTitle,_that.unavailableReasonDetail);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ReaderStatusInfo with DiagnosticableTreeMixin implements ReaderStatusInfo {
  const _ReaderStatusInfo({required this.status, this.unavailableReason, this.unavailableReasonTitle, this.unavailableReasonDetail});
  factory _ReaderStatusInfo.fromJson(Map<String, dynamic> json) => _$ReaderStatusInfoFromJson(json);

@override final  ReaderStatusInfoStatus status;
@override final  ReaderStatusInfoUnavailableReason? unavailableReason;
@override final  String? unavailableReasonTitle;
@override final  String? unavailableReasonDetail;

/// Create a copy of ReaderStatusInfo
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReaderStatusInfoCopyWith<_ReaderStatusInfo> get copyWith => __$ReaderStatusInfoCopyWithImpl<_ReaderStatusInfo>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ReaderStatusInfoToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ReaderStatusInfo'))
    ..add(DiagnosticsProperty('status', status))..add(DiagnosticsProperty('unavailableReason', unavailableReason))..add(DiagnosticsProperty('unavailableReasonTitle', unavailableReasonTitle))..add(DiagnosticsProperty('unavailableReasonDetail', unavailableReasonDetail));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReaderStatusInfo&&(identical(other.status, status) || other.status == status)&&(identical(other.unavailableReason, unavailableReason) || other.unavailableReason == unavailableReason)&&(identical(other.unavailableReasonTitle, unavailableReasonTitle) || other.unavailableReasonTitle == unavailableReasonTitle)&&(identical(other.unavailableReasonDetail, unavailableReasonDetail) || other.unavailableReasonDetail == unavailableReasonDetail));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,unavailableReason,unavailableReasonTitle,unavailableReasonDetail);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ReaderStatusInfo(status: $status, unavailableReason: $unavailableReason, unavailableReasonTitle: $unavailableReasonTitle, unavailableReasonDetail: $unavailableReasonDetail)';
}


}

/// @nodoc
abstract mixin class _$ReaderStatusInfoCopyWith<$Res> implements $ReaderStatusInfoCopyWith<$Res> {
  factory _$ReaderStatusInfoCopyWith(_ReaderStatusInfo value, $Res Function(_ReaderStatusInfo) _then) = __$ReaderStatusInfoCopyWithImpl;
@override @useResult
$Res call({
 ReaderStatusInfoStatus status, ReaderStatusInfoUnavailableReason? unavailableReason, String? unavailableReasonTitle, String? unavailableReasonDetail
});




}
/// @nodoc
class __$ReaderStatusInfoCopyWithImpl<$Res>
    implements _$ReaderStatusInfoCopyWith<$Res> {
  __$ReaderStatusInfoCopyWithImpl(this._self, this._then);

  final _ReaderStatusInfo _self;
  final $Res Function(_ReaderStatusInfo) _then;

/// Create a copy of ReaderStatusInfo
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? unavailableReason = freezed,Object? unavailableReasonTitle = freezed,Object? unavailableReasonDetail = freezed,}) {
  return _then(_ReaderStatusInfo(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ReaderStatusInfoStatus,unavailableReason: freezed == unavailableReason ? _self.unavailableReason : unavailableReason // ignore: cast_nullable_to_non_nullable
as ReaderStatusInfoUnavailableReason?,unavailableReasonTitle: freezed == unavailableReasonTitle ? _self.unavailableReasonTitle : unavailableReasonTitle // ignore: cast_nullable_to_non_nullable
as String?,unavailableReasonDetail: freezed == unavailableReasonDetail ? _self.unavailableReasonDetail : unavailableReasonDetail // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$ReaderFirmwareInfo implements DiagnosticableTreeMixin {

 String? get failureReason; FirmwareUpdateStatus get updateStatus; int? get updatePercentage; DateTime? get updateTime; String? get version;
/// Create a copy of ReaderFirmwareInfo
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReaderFirmwareInfoCopyWith<ReaderFirmwareInfo> get copyWith => _$ReaderFirmwareInfoCopyWithImpl<ReaderFirmwareInfo>(this as ReaderFirmwareInfo, _$identity);

  /// Serializes this ReaderFirmwareInfo to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ReaderFirmwareInfo'))
    ..add(DiagnosticsProperty('failureReason', failureReason))..add(DiagnosticsProperty('updateStatus', updateStatus))..add(DiagnosticsProperty('updatePercentage', updatePercentage))..add(DiagnosticsProperty('updateTime', updateTime))..add(DiagnosticsProperty('version', version));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReaderFirmwareInfo&&(identical(other.failureReason, failureReason) || other.failureReason == failureReason)&&(identical(other.updateStatus, updateStatus) || other.updateStatus == updateStatus)&&(identical(other.updatePercentage, updatePercentage) || other.updatePercentage == updatePercentage)&&(identical(other.updateTime, updateTime) || other.updateTime == updateTime)&&(identical(other.version, version) || other.version == version));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,failureReason,updateStatus,updatePercentage,updateTime,version);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ReaderFirmwareInfo(failureReason: $failureReason, updateStatus: $updateStatus, updatePercentage: $updatePercentage, updateTime: $updateTime, version: $version)';
}


}

/// @nodoc
abstract mixin class $ReaderFirmwareInfoCopyWith<$Res>  {
  factory $ReaderFirmwareInfoCopyWith(ReaderFirmwareInfo value, $Res Function(ReaderFirmwareInfo) _then) = _$ReaderFirmwareInfoCopyWithImpl;
@useResult
$Res call({
 String? failureReason, FirmwareUpdateStatus updateStatus, int? updatePercentage, DateTime? updateTime, String? version
});




}
/// @nodoc
class _$ReaderFirmwareInfoCopyWithImpl<$Res>
    implements $ReaderFirmwareInfoCopyWith<$Res> {
  _$ReaderFirmwareInfoCopyWithImpl(this._self, this._then);

  final ReaderFirmwareInfo _self;
  final $Res Function(ReaderFirmwareInfo) _then;

/// Create a copy of ReaderFirmwareInfo
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? failureReason = freezed,Object? updateStatus = null,Object? updatePercentage = freezed,Object? updateTime = freezed,Object? version = freezed,}) {
  return _then(_self.copyWith(
failureReason: freezed == failureReason ? _self.failureReason : failureReason // ignore: cast_nullable_to_non_nullable
as String?,updateStatus: null == updateStatus ? _self.updateStatus : updateStatus // ignore: cast_nullable_to_non_nullable
as FirmwareUpdateStatus,updatePercentage: freezed == updatePercentage ? _self.updatePercentage : updatePercentage // ignore: cast_nullable_to_non_nullable
as int?,updateTime: freezed == updateTime ? _self.updateTime : updateTime // ignore: cast_nullable_to_non_nullable
as DateTime?,version: freezed == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ReaderFirmwareInfo].
extension ReaderFirmwareInfoPatterns on ReaderFirmwareInfo {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReaderFirmwareInfo value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReaderFirmwareInfo() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReaderFirmwareInfo value)  $default,){
final _that = this;
switch (_that) {
case _ReaderFirmwareInfo():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReaderFirmwareInfo value)?  $default,){
final _that = this;
switch (_that) {
case _ReaderFirmwareInfo() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? failureReason,  FirmwareUpdateStatus updateStatus,  int? updatePercentage,  DateTime? updateTime,  String? version)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ReaderFirmwareInfo() when $default != null:
return $default(_that.failureReason,_that.updateStatus,_that.updatePercentage,_that.updateTime,_that.version);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? failureReason,  FirmwareUpdateStatus updateStatus,  int? updatePercentage,  DateTime? updateTime,  String? version)  $default,) {final _that = this;
switch (_that) {
case _ReaderFirmwareInfo():
return $default(_that.failureReason,_that.updateStatus,_that.updatePercentage,_that.updateTime,_that.version);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? failureReason,  FirmwareUpdateStatus updateStatus,  int? updatePercentage,  DateTime? updateTime,  String? version)?  $default,) {final _that = this;
switch (_that) {
case _ReaderFirmwareInfo() when $default != null:
return $default(_that.failureReason,_that.updateStatus,_that.updatePercentage,_that.updateTime,_that.version);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ReaderFirmwareInfo with DiagnosticableTreeMixin implements ReaderFirmwareInfo {
  const _ReaderFirmwareInfo({this.failureReason, required this.updateStatus, this.updatePercentage, this.updateTime, this.version});
  factory _ReaderFirmwareInfo.fromJson(Map<String, dynamic> json) => _$ReaderFirmwareInfoFromJson(json);

@override final  String? failureReason;
@override final  FirmwareUpdateStatus updateStatus;
@override final  int? updatePercentage;
@override final  DateTime? updateTime;
@override final  String? version;

/// Create a copy of ReaderFirmwareInfo
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReaderFirmwareInfoCopyWith<_ReaderFirmwareInfo> get copyWith => __$ReaderFirmwareInfoCopyWithImpl<_ReaderFirmwareInfo>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ReaderFirmwareInfoToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ReaderFirmwareInfo'))
    ..add(DiagnosticsProperty('failureReason', failureReason))..add(DiagnosticsProperty('updateStatus', updateStatus))..add(DiagnosticsProperty('updatePercentage', updatePercentage))..add(DiagnosticsProperty('updateTime', updateTime))..add(DiagnosticsProperty('version', version));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReaderFirmwareInfo&&(identical(other.failureReason, failureReason) || other.failureReason == failureReason)&&(identical(other.updateStatus, updateStatus) || other.updateStatus == updateStatus)&&(identical(other.updatePercentage, updatePercentage) || other.updatePercentage == updatePercentage)&&(identical(other.updateTime, updateTime) || other.updateTime == updateTime)&&(identical(other.version, version) || other.version == version));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,failureReason,updateStatus,updatePercentage,updateTime,version);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ReaderFirmwareInfo(failureReason: $failureReason, updateStatus: $updateStatus, updatePercentage: $updatePercentage, updateTime: $updateTime, version: $version)';
}


}

/// @nodoc
abstract mixin class _$ReaderFirmwareInfoCopyWith<$Res> implements $ReaderFirmwareInfoCopyWith<$Res> {
  factory _$ReaderFirmwareInfoCopyWith(_ReaderFirmwareInfo value, $Res Function(_ReaderFirmwareInfo) _then) = __$ReaderFirmwareInfoCopyWithImpl;
@override @useResult
$Res call({
 String? failureReason, FirmwareUpdateStatus updateStatus, int? updatePercentage, DateTime? updateTime, String? version
});




}
/// @nodoc
class __$ReaderFirmwareInfoCopyWithImpl<$Res>
    implements _$ReaderFirmwareInfoCopyWith<$Res> {
  __$ReaderFirmwareInfoCopyWithImpl(this._self, this._then);

  final _ReaderFirmwareInfo _self;
  final $Res Function(_ReaderFirmwareInfo) _then;

/// Create a copy of ReaderFirmwareInfo
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? failureReason = freezed,Object? updateStatus = null,Object? updatePercentage = freezed,Object? updateTime = freezed,Object? version = freezed,}) {
  return _then(_ReaderFirmwareInfo(
failureReason: freezed == failureReason ? _self.failureReason : failureReason // ignore: cast_nullable_to_non_nullable
as String?,updateStatus: null == updateStatus ? _self.updateStatus : updateStatus // ignore: cast_nullable_to_non_nullable
as FirmwareUpdateStatus,updatePercentage: freezed == updatePercentage ? _self.updatePercentage : updatePercentage // ignore: cast_nullable_to_non_nullable
as int?,updateTime: freezed == updateTime ? _self.updateTime : updateTime // ignore: cast_nullable_to_non_nullable
as DateTime?,version: freezed == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$ReaderInfo implements DiagnosticableTreeMixin {

 ReaderBatteryStatus? get batteryStatus; CardInsertionStatus? get cardInsertionStatus;@JsonKey(unknownEnumValue: ReaderConnectionType.unknown) ReaderConnectionType get connectionType; ReaderFirmwareInfo? get firmwareInfo; String get id; bool get isBlinkable; bool? get isConnectionRetryable; bool get isForgettable; bool? get isRebootable; ReaderModel get model; String get name; String? get serialNumber; ReaderStatusInfo get statusInfo; List<CardInputMethod> get supportedInputMethods;
/// Create a copy of ReaderInfo
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReaderInfoCopyWith<ReaderInfo> get copyWith => _$ReaderInfoCopyWithImpl<ReaderInfo>(this as ReaderInfo, _$identity);

  /// Serializes this ReaderInfo to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ReaderInfo'))
    ..add(DiagnosticsProperty('batteryStatus', batteryStatus))..add(DiagnosticsProperty('cardInsertionStatus', cardInsertionStatus))..add(DiagnosticsProperty('connectionType', connectionType))..add(DiagnosticsProperty('firmwareInfo', firmwareInfo))..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('isBlinkable', isBlinkable))..add(DiagnosticsProperty('isConnectionRetryable', isConnectionRetryable))..add(DiagnosticsProperty('isForgettable', isForgettable))..add(DiagnosticsProperty('isRebootable', isRebootable))..add(DiagnosticsProperty('model', model))..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('serialNumber', serialNumber))..add(DiagnosticsProperty('statusInfo', statusInfo))..add(DiagnosticsProperty('supportedInputMethods', supportedInputMethods));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReaderInfo&&(identical(other.batteryStatus, batteryStatus) || other.batteryStatus == batteryStatus)&&(identical(other.cardInsertionStatus, cardInsertionStatus) || other.cardInsertionStatus == cardInsertionStatus)&&(identical(other.connectionType, connectionType) || other.connectionType == connectionType)&&(identical(other.firmwareInfo, firmwareInfo) || other.firmwareInfo == firmwareInfo)&&(identical(other.id, id) || other.id == id)&&(identical(other.isBlinkable, isBlinkable) || other.isBlinkable == isBlinkable)&&(identical(other.isConnectionRetryable, isConnectionRetryable) || other.isConnectionRetryable == isConnectionRetryable)&&(identical(other.isForgettable, isForgettable) || other.isForgettable == isForgettable)&&(identical(other.isRebootable, isRebootable) || other.isRebootable == isRebootable)&&(identical(other.model, model) || other.model == model)&&(identical(other.name, name) || other.name == name)&&(identical(other.serialNumber, serialNumber) || other.serialNumber == serialNumber)&&(identical(other.statusInfo, statusInfo) || other.statusInfo == statusInfo)&&const DeepCollectionEquality().equals(other.supportedInputMethods, supportedInputMethods));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,batteryStatus,cardInsertionStatus,connectionType,firmwareInfo,id,isBlinkable,isConnectionRetryable,isForgettable,isRebootable,model,name,serialNumber,statusInfo,const DeepCollectionEquality().hash(supportedInputMethods));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ReaderInfo(batteryStatus: $batteryStatus, cardInsertionStatus: $cardInsertionStatus, connectionType: $connectionType, firmwareInfo: $firmwareInfo, id: $id, isBlinkable: $isBlinkable, isConnectionRetryable: $isConnectionRetryable, isForgettable: $isForgettable, isRebootable: $isRebootable, model: $model, name: $name, serialNumber: $serialNumber, statusInfo: $statusInfo, supportedInputMethods: $supportedInputMethods)';
}


}

/// @nodoc
abstract mixin class $ReaderInfoCopyWith<$Res>  {
  factory $ReaderInfoCopyWith(ReaderInfo value, $Res Function(ReaderInfo) _then) = _$ReaderInfoCopyWithImpl;
@useResult
$Res call({
 ReaderBatteryStatus? batteryStatus, CardInsertionStatus? cardInsertionStatus,@JsonKey(unknownEnumValue: ReaderConnectionType.unknown) ReaderConnectionType connectionType, ReaderFirmwareInfo? firmwareInfo, String id, bool isBlinkable, bool? isConnectionRetryable, bool isForgettable, bool? isRebootable, ReaderModel model, String name, String? serialNumber, ReaderStatusInfo statusInfo, List<CardInputMethod> supportedInputMethods
});


$ReaderBatteryStatusCopyWith<$Res>? get batteryStatus;$ReaderFirmwareInfoCopyWith<$Res>? get firmwareInfo;$ReaderStatusInfoCopyWith<$Res> get statusInfo;

}
/// @nodoc
class _$ReaderInfoCopyWithImpl<$Res>
    implements $ReaderInfoCopyWith<$Res> {
  _$ReaderInfoCopyWithImpl(this._self, this._then);

  final ReaderInfo _self;
  final $Res Function(ReaderInfo) _then;

/// Create a copy of ReaderInfo
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? batteryStatus = freezed,Object? cardInsertionStatus = freezed,Object? connectionType = null,Object? firmwareInfo = freezed,Object? id = null,Object? isBlinkable = null,Object? isConnectionRetryable = freezed,Object? isForgettable = null,Object? isRebootable = freezed,Object? model = null,Object? name = null,Object? serialNumber = freezed,Object? statusInfo = null,Object? supportedInputMethods = null,}) {
  return _then(_self.copyWith(
batteryStatus: freezed == batteryStatus ? _self.batteryStatus : batteryStatus // ignore: cast_nullable_to_non_nullable
as ReaderBatteryStatus?,cardInsertionStatus: freezed == cardInsertionStatus ? _self.cardInsertionStatus : cardInsertionStatus // ignore: cast_nullable_to_non_nullable
as CardInsertionStatus?,connectionType: null == connectionType ? _self.connectionType : connectionType // ignore: cast_nullable_to_non_nullable
as ReaderConnectionType,firmwareInfo: freezed == firmwareInfo ? _self.firmwareInfo : firmwareInfo // ignore: cast_nullable_to_non_nullable
as ReaderFirmwareInfo?,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,isBlinkable: null == isBlinkable ? _self.isBlinkable : isBlinkable // ignore: cast_nullable_to_non_nullable
as bool,isConnectionRetryable: freezed == isConnectionRetryable ? _self.isConnectionRetryable : isConnectionRetryable // ignore: cast_nullable_to_non_nullable
as bool?,isForgettable: null == isForgettable ? _self.isForgettable : isForgettable // ignore: cast_nullable_to_non_nullable
as bool,isRebootable: freezed == isRebootable ? _self.isRebootable : isRebootable // ignore: cast_nullable_to_non_nullable
as bool?,model: null == model ? _self.model : model // ignore: cast_nullable_to_non_nullable
as ReaderModel,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,serialNumber: freezed == serialNumber ? _self.serialNumber : serialNumber // ignore: cast_nullable_to_non_nullable
as String?,statusInfo: null == statusInfo ? _self.statusInfo : statusInfo // ignore: cast_nullable_to_non_nullable
as ReaderStatusInfo,supportedInputMethods: null == supportedInputMethods ? _self.supportedInputMethods : supportedInputMethods // ignore: cast_nullable_to_non_nullable
as List<CardInputMethod>,
  ));
}
/// Create a copy of ReaderInfo
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReaderBatteryStatusCopyWith<$Res>? get batteryStatus {
    if (_self.batteryStatus == null) {
    return null;
  }

  return $ReaderBatteryStatusCopyWith<$Res>(_self.batteryStatus!, (value) {
    return _then(_self.copyWith(batteryStatus: value));
  });
}/// Create a copy of ReaderInfo
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReaderFirmwareInfoCopyWith<$Res>? get firmwareInfo {
    if (_self.firmwareInfo == null) {
    return null;
  }

  return $ReaderFirmwareInfoCopyWith<$Res>(_self.firmwareInfo!, (value) {
    return _then(_self.copyWith(firmwareInfo: value));
  });
}/// Create a copy of ReaderInfo
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReaderStatusInfoCopyWith<$Res> get statusInfo {
  
  return $ReaderStatusInfoCopyWith<$Res>(_self.statusInfo, (value) {
    return _then(_self.copyWith(statusInfo: value));
  });
}
}


/// Adds pattern-matching-related methods to [ReaderInfo].
extension ReaderInfoPatterns on ReaderInfo {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReaderInfo value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReaderInfo() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReaderInfo value)  $default,){
final _that = this;
switch (_that) {
case _ReaderInfo():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReaderInfo value)?  $default,){
final _that = this;
switch (_that) {
case _ReaderInfo() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( ReaderBatteryStatus? batteryStatus,  CardInsertionStatus? cardInsertionStatus, @JsonKey(unknownEnumValue: ReaderConnectionType.unknown)  ReaderConnectionType connectionType,  ReaderFirmwareInfo? firmwareInfo,  String id,  bool isBlinkable,  bool? isConnectionRetryable,  bool isForgettable,  bool? isRebootable,  ReaderModel model,  String name,  String? serialNumber,  ReaderStatusInfo statusInfo,  List<CardInputMethod> supportedInputMethods)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ReaderInfo() when $default != null:
return $default(_that.batteryStatus,_that.cardInsertionStatus,_that.connectionType,_that.firmwareInfo,_that.id,_that.isBlinkable,_that.isConnectionRetryable,_that.isForgettable,_that.isRebootable,_that.model,_that.name,_that.serialNumber,_that.statusInfo,_that.supportedInputMethods);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( ReaderBatteryStatus? batteryStatus,  CardInsertionStatus? cardInsertionStatus, @JsonKey(unknownEnumValue: ReaderConnectionType.unknown)  ReaderConnectionType connectionType,  ReaderFirmwareInfo? firmwareInfo,  String id,  bool isBlinkable,  bool? isConnectionRetryable,  bool isForgettable,  bool? isRebootable,  ReaderModel model,  String name,  String? serialNumber,  ReaderStatusInfo statusInfo,  List<CardInputMethod> supportedInputMethods)  $default,) {final _that = this;
switch (_that) {
case _ReaderInfo():
return $default(_that.batteryStatus,_that.cardInsertionStatus,_that.connectionType,_that.firmwareInfo,_that.id,_that.isBlinkable,_that.isConnectionRetryable,_that.isForgettable,_that.isRebootable,_that.model,_that.name,_that.serialNumber,_that.statusInfo,_that.supportedInputMethods);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( ReaderBatteryStatus? batteryStatus,  CardInsertionStatus? cardInsertionStatus, @JsonKey(unknownEnumValue: ReaderConnectionType.unknown)  ReaderConnectionType connectionType,  ReaderFirmwareInfo? firmwareInfo,  String id,  bool isBlinkable,  bool? isConnectionRetryable,  bool isForgettable,  bool? isRebootable,  ReaderModel model,  String name,  String? serialNumber,  ReaderStatusInfo statusInfo,  List<CardInputMethod> supportedInputMethods)?  $default,) {final _that = this;
switch (_that) {
case _ReaderInfo() when $default != null:
return $default(_that.batteryStatus,_that.cardInsertionStatus,_that.connectionType,_that.firmwareInfo,_that.id,_that.isBlinkable,_that.isConnectionRetryable,_that.isForgettable,_that.isRebootable,_that.model,_that.name,_that.serialNumber,_that.statusInfo,_that.supportedInputMethods);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ReaderInfo with DiagnosticableTreeMixin implements ReaderInfo {
  const _ReaderInfo({this.batteryStatus, this.cardInsertionStatus, @JsonKey(unknownEnumValue: ReaderConnectionType.unknown) required this.connectionType, this.firmwareInfo, required this.id, required this.isBlinkable, this.isConnectionRetryable, required this.isForgettable, this.isRebootable, required this.model, required this.name, this.serialNumber, required this.statusInfo, required final  List<CardInputMethod> supportedInputMethods}): _supportedInputMethods = supportedInputMethods;
  factory _ReaderInfo.fromJson(Map<String, dynamic> json) => _$ReaderInfoFromJson(json);

@override final  ReaderBatteryStatus? batteryStatus;
@override final  CardInsertionStatus? cardInsertionStatus;
@override@JsonKey(unknownEnumValue: ReaderConnectionType.unknown) final  ReaderConnectionType connectionType;
@override final  ReaderFirmwareInfo? firmwareInfo;
@override final  String id;
@override final  bool isBlinkable;
@override final  bool? isConnectionRetryable;
@override final  bool isForgettable;
@override final  bool? isRebootable;
@override final  ReaderModel model;
@override final  String name;
@override final  String? serialNumber;
@override final  ReaderStatusInfo statusInfo;
 final  List<CardInputMethod> _supportedInputMethods;
@override List<CardInputMethod> get supportedInputMethods {
  if (_supportedInputMethods is EqualUnmodifiableListView) return _supportedInputMethods;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_supportedInputMethods);
}


/// Create a copy of ReaderInfo
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReaderInfoCopyWith<_ReaderInfo> get copyWith => __$ReaderInfoCopyWithImpl<_ReaderInfo>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ReaderInfoToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ReaderInfo'))
    ..add(DiagnosticsProperty('batteryStatus', batteryStatus))..add(DiagnosticsProperty('cardInsertionStatus', cardInsertionStatus))..add(DiagnosticsProperty('connectionType', connectionType))..add(DiagnosticsProperty('firmwareInfo', firmwareInfo))..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('isBlinkable', isBlinkable))..add(DiagnosticsProperty('isConnectionRetryable', isConnectionRetryable))..add(DiagnosticsProperty('isForgettable', isForgettable))..add(DiagnosticsProperty('isRebootable', isRebootable))..add(DiagnosticsProperty('model', model))..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('serialNumber', serialNumber))..add(DiagnosticsProperty('statusInfo', statusInfo))..add(DiagnosticsProperty('supportedInputMethods', supportedInputMethods));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReaderInfo&&(identical(other.batteryStatus, batteryStatus) || other.batteryStatus == batteryStatus)&&(identical(other.cardInsertionStatus, cardInsertionStatus) || other.cardInsertionStatus == cardInsertionStatus)&&(identical(other.connectionType, connectionType) || other.connectionType == connectionType)&&(identical(other.firmwareInfo, firmwareInfo) || other.firmwareInfo == firmwareInfo)&&(identical(other.id, id) || other.id == id)&&(identical(other.isBlinkable, isBlinkable) || other.isBlinkable == isBlinkable)&&(identical(other.isConnectionRetryable, isConnectionRetryable) || other.isConnectionRetryable == isConnectionRetryable)&&(identical(other.isForgettable, isForgettable) || other.isForgettable == isForgettable)&&(identical(other.isRebootable, isRebootable) || other.isRebootable == isRebootable)&&(identical(other.model, model) || other.model == model)&&(identical(other.name, name) || other.name == name)&&(identical(other.serialNumber, serialNumber) || other.serialNumber == serialNumber)&&(identical(other.statusInfo, statusInfo) || other.statusInfo == statusInfo)&&const DeepCollectionEquality().equals(other._supportedInputMethods, _supportedInputMethods));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,batteryStatus,cardInsertionStatus,connectionType,firmwareInfo,id,isBlinkable,isConnectionRetryable,isForgettable,isRebootable,model,name,serialNumber,statusInfo,const DeepCollectionEquality().hash(_supportedInputMethods));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ReaderInfo(batteryStatus: $batteryStatus, cardInsertionStatus: $cardInsertionStatus, connectionType: $connectionType, firmwareInfo: $firmwareInfo, id: $id, isBlinkable: $isBlinkable, isConnectionRetryable: $isConnectionRetryable, isForgettable: $isForgettable, isRebootable: $isRebootable, model: $model, name: $name, serialNumber: $serialNumber, statusInfo: $statusInfo, supportedInputMethods: $supportedInputMethods)';
}


}

/// @nodoc
abstract mixin class _$ReaderInfoCopyWith<$Res> implements $ReaderInfoCopyWith<$Res> {
  factory _$ReaderInfoCopyWith(_ReaderInfo value, $Res Function(_ReaderInfo) _then) = __$ReaderInfoCopyWithImpl;
@override @useResult
$Res call({
 ReaderBatteryStatus? batteryStatus, CardInsertionStatus? cardInsertionStatus,@JsonKey(unknownEnumValue: ReaderConnectionType.unknown) ReaderConnectionType connectionType, ReaderFirmwareInfo? firmwareInfo, String id, bool isBlinkable, bool? isConnectionRetryable, bool isForgettable, bool? isRebootable, ReaderModel model, String name, String? serialNumber, ReaderStatusInfo statusInfo, List<CardInputMethod> supportedInputMethods
});


@override $ReaderBatteryStatusCopyWith<$Res>? get batteryStatus;@override $ReaderFirmwareInfoCopyWith<$Res>? get firmwareInfo;@override $ReaderStatusInfoCopyWith<$Res> get statusInfo;

}
/// @nodoc
class __$ReaderInfoCopyWithImpl<$Res>
    implements _$ReaderInfoCopyWith<$Res> {
  __$ReaderInfoCopyWithImpl(this._self, this._then);

  final _ReaderInfo _self;
  final $Res Function(_ReaderInfo) _then;

/// Create a copy of ReaderInfo
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? batteryStatus = freezed,Object? cardInsertionStatus = freezed,Object? connectionType = null,Object? firmwareInfo = freezed,Object? id = null,Object? isBlinkable = null,Object? isConnectionRetryable = freezed,Object? isForgettable = null,Object? isRebootable = freezed,Object? model = null,Object? name = null,Object? serialNumber = freezed,Object? statusInfo = null,Object? supportedInputMethods = null,}) {
  return _then(_ReaderInfo(
batteryStatus: freezed == batteryStatus ? _self.batteryStatus : batteryStatus // ignore: cast_nullable_to_non_nullable
as ReaderBatteryStatus?,cardInsertionStatus: freezed == cardInsertionStatus ? _self.cardInsertionStatus : cardInsertionStatus // ignore: cast_nullable_to_non_nullable
as CardInsertionStatus?,connectionType: null == connectionType ? _self.connectionType : connectionType // ignore: cast_nullable_to_non_nullable
as ReaderConnectionType,firmwareInfo: freezed == firmwareInfo ? _self.firmwareInfo : firmwareInfo // ignore: cast_nullable_to_non_nullable
as ReaderFirmwareInfo?,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,isBlinkable: null == isBlinkable ? _self.isBlinkable : isBlinkable // ignore: cast_nullable_to_non_nullable
as bool,isConnectionRetryable: freezed == isConnectionRetryable ? _self.isConnectionRetryable : isConnectionRetryable // ignore: cast_nullable_to_non_nullable
as bool?,isForgettable: null == isForgettable ? _self.isForgettable : isForgettable // ignore: cast_nullable_to_non_nullable
as bool,isRebootable: freezed == isRebootable ? _self.isRebootable : isRebootable // ignore: cast_nullable_to_non_nullable
as bool?,model: null == model ? _self.model : model // ignore: cast_nullable_to_non_nullable
as ReaderModel,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,serialNumber: freezed == serialNumber ? _self.serialNumber : serialNumber // ignore: cast_nullable_to_non_nullable
as String?,statusInfo: null == statusInfo ? _self.statusInfo : statusInfo // ignore: cast_nullable_to_non_nullable
as ReaderStatusInfo,supportedInputMethods: null == supportedInputMethods ? _self._supportedInputMethods : supportedInputMethods // ignore: cast_nullable_to_non_nullable
as List<CardInputMethod>,
  ));
}

/// Create a copy of ReaderInfo
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReaderBatteryStatusCopyWith<$Res>? get batteryStatus {
    if (_self.batteryStatus == null) {
    return null;
  }

  return $ReaderBatteryStatusCopyWith<$Res>(_self.batteryStatus!, (value) {
    return _then(_self.copyWith(batteryStatus: value));
  });
}/// Create a copy of ReaderInfo
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReaderFirmwareInfoCopyWith<$Res>? get firmwareInfo {
    if (_self.firmwareInfo == null) {
    return null;
  }

  return $ReaderFirmwareInfoCopyWith<$Res>(_self.firmwareInfo!, (value) {
    return _then(_self.copyWith(firmwareInfo: value));
  });
}/// Create a copy of ReaderInfo
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReaderStatusInfoCopyWith<$Res> get statusInfo {
  
  return $ReaderStatusInfoCopyWith<$Res>(_self.statusInfo, (value) {
    return _then(_self.copyWith(statusInfo: value));
  });
}
}


/// @nodoc
mixin _$PromptParameters implements DiagnosticableTreeMixin {

 List<AdditionalPaymentMethodType> get additionalPaymentMethods; PromptMode get mode;
/// Create a copy of PromptParameters
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PromptParametersCopyWith<PromptParameters> get copyWith => _$PromptParametersCopyWithImpl<PromptParameters>(this as PromptParameters, _$identity);

  /// Serializes this PromptParameters to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'PromptParameters'))
    ..add(DiagnosticsProperty('additionalPaymentMethods', additionalPaymentMethods))..add(DiagnosticsProperty('mode', mode));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PromptParameters&&const DeepCollectionEquality().equals(other.additionalPaymentMethods, additionalPaymentMethods)&&(identical(other.mode, mode) || other.mode == mode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(additionalPaymentMethods),mode);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'PromptParameters(additionalPaymentMethods: $additionalPaymentMethods, mode: $mode)';
}


}

/// @nodoc
abstract mixin class $PromptParametersCopyWith<$Res>  {
  factory $PromptParametersCopyWith(PromptParameters value, $Res Function(PromptParameters) _then) = _$PromptParametersCopyWithImpl;
@useResult
$Res call({
 List<AdditionalPaymentMethodType> additionalPaymentMethods, PromptMode mode
});




}
/// @nodoc
class _$PromptParametersCopyWithImpl<$Res>
    implements $PromptParametersCopyWith<$Res> {
  _$PromptParametersCopyWithImpl(this._self, this._then);

  final PromptParameters _self;
  final $Res Function(PromptParameters) _then;

/// Create a copy of PromptParameters
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? additionalPaymentMethods = null,Object? mode = null,}) {
  return _then(_self.copyWith(
additionalPaymentMethods: null == additionalPaymentMethods ? _self.additionalPaymentMethods : additionalPaymentMethods // ignore: cast_nullable_to_non_nullable
as List<AdditionalPaymentMethodType>,mode: null == mode ? _self.mode : mode // ignore: cast_nullable_to_non_nullable
as PromptMode,
  ));
}

}


/// Adds pattern-matching-related methods to [PromptParameters].
extension PromptParametersPatterns on PromptParameters {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PromptParameters value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PromptParameters() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PromptParameters value)  $default,){
final _that = this;
switch (_that) {
case _PromptParameters():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PromptParameters value)?  $default,){
final _that = this;
switch (_that) {
case _PromptParameters() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<AdditionalPaymentMethodType> additionalPaymentMethods,  PromptMode mode)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PromptParameters() when $default != null:
return $default(_that.additionalPaymentMethods,_that.mode);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<AdditionalPaymentMethodType> additionalPaymentMethods,  PromptMode mode)  $default,) {final _that = this;
switch (_that) {
case _PromptParameters():
return $default(_that.additionalPaymentMethods,_that.mode);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<AdditionalPaymentMethodType> additionalPaymentMethods,  PromptMode mode)?  $default,) {final _that = this;
switch (_that) {
case _PromptParameters() when $default != null:
return $default(_that.additionalPaymentMethods,_that.mode);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PromptParameters with DiagnosticableTreeMixin implements PromptParameters {
  const _PromptParameters({required final  List<AdditionalPaymentMethodType> additionalPaymentMethods, required this.mode}): _additionalPaymentMethods = additionalPaymentMethods;
  factory _PromptParameters.fromJson(Map<String, dynamic> json) => _$PromptParametersFromJson(json);

 final  List<AdditionalPaymentMethodType> _additionalPaymentMethods;
@override List<AdditionalPaymentMethodType> get additionalPaymentMethods {
  if (_additionalPaymentMethods is EqualUnmodifiableListView) return _additionalPaymentMethods;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_additionalPaymentMethods);
}

@override final  PromptMode mode;

/// Create a copy of PromptParameters
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PromptParametersCopyWith<_PromptParameters> get copyWith => __$PromptParametersCopyWithImpl<_PromptParameters>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PromptParametersToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'PromptParameters'))
    ..add(DiagnosticsProperty('additionalPaymentMethods', additionalPaymentMethods))..add(DiagnosticsProperty('mode', mode));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PromptParameters&&const DeepCollectionEquality().equals(other._additionalPaymentMethods, _additionalPaymentMethods)&&(identical(other.mode, mode) || other.mode == mode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_additionalPaymentMethods),mode);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'PromptParameters(additionalPaymentMethods: $additionalPaymentMethods, mode: $mode)';
}


}

/// @nodoc
abstract mixin class _$PromptParametersCopyWith<$Res> implements $PromptParametersCopyWith<$Res> {
  factory _$PromptParametersCopyWith(_PromptParameters value, $Res Function(_PromptParameters) _then) = __$PromptParametersCopyWithImpl;
@override @useResult
$Res call({
 List<AdditionalPaymentMethodType> additionalPaymentMethods, PromptMode mode
});




}
/// @nodoc
class __$PromptParametersCopyWithImpl<$Res>
    implements _$PromptParametersCopyWith<$Res> {
  __$PromptParametersCopyWithImpl(this._self, this._then);

  final _PromptParameters _self;
  final $Res Function(_PromptParameters) _then;

/// Create a copy of PromptParameters
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? additionalPaymentMethods = null,Object? mode = null,}) {
  return _then(_PromptParameters(
additionalPaymentMethods: null == additionalPaymentMethods ? _self._additionalPaymentMethods : additionalPaymentMethods // ignore: cast_nullable_to_non_nullable
as List<AdditionalPaymentMethodType>,mode: null == mode ? _self.mode : mode // ignore: cast_nullable_to_non_nullable
as PromptMode,
  ));
}


}

Payment _$PaymentFromJson(
  Map<String, dynamic> json
) {
        switch (json['type']) {
                  case 'online':
          return OnlinePayment.fromJson(
            json
          );
                case 'offline':
          return OfflinePayment.fromJson(
            json
          );
        
          default:
            throw CheckedFromJsonException(
  json,
  'type',
  'Payment',
  'Invalid union type "${json['type']}"!'
);
        }
      
}

/// @nodoc
mixin _$Payment implements DiagnosticableTreeMixin {

 Money get amountMoney; Money? get appFeeMoney; CashPaymentDetails? get cashDetails; DateTime get createdAt; String? get id; String? get locationId; String? get orderId; String? get referenceId;@JsonKey(unknownEnumValue: SourceType.unknown) SourceType get sourceType; Money? get tipMoney; Money get totalMoney; DateTime get updatedAt; Object? get cardDetails;@JsonKey(unknownEnumValue: PaymentStatus.unknown)@JsonKey(unknownEnumValue: OfflineStatus.unknown) Enum get status;
/// Create a copy of Payment
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaymentCopyWith<Payment> get copyWith => _$PaymentCopyWithImpl<Payment>(this as Payment, _$identity);

  /// Serializes this Payment to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'Payment'))
    ..add(DiagnosticsProperty('amountMoney', amountMoney))..add(DiagnosticsProperty('appFeeMoney', appFeeMoney))..add(DiagnosticsProperty('cashDetails', cashDetails))..add(DiagnosticsProperty('createdAt', createdAt))..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('locationId', locationId))..add(DiagnosticsProperty('orderId', orderId))..add(DiagnosticsProperty('referenceId', referenceId))..add(DiagnosticsProperty('sourceType', sourceType))..add(DiagnosticsProperty('tipMoney', tipMoney))..add(DiagnosticsProperty('totalMoney', totalMoney))..add(DiagnosticsProperty('updatedAt', updatedAt))..add(DiagnosticsProperty('cardDetails', cardDetails))..add(DiagnosticsProperty('status', status));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Payment&&(identical(other.amountMoney, amountMoney) || other.amountMoney == amountMoney)&&(identical(other.appFeeMoney, appFeeMoney) || other.appFeeMoney == appFeeMoney)&&(identical(other.cashDetails, cashDetails) || other.cashDetails == cashDetails)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.id, id) || other.id == id)&&(identical(other.locationId, locationId) || other.locationId == locationId)&&(identical(other.orderId, orderId) || other.orderId == orderId)&&(identical(other.referenceId, referenceId) || other.referenceId == referenceId)&&(identical(other.sourceType, sourceType) || other.sourceType == sourceType)&&(identical(other.tipMoney, tipMoney) || other.tipMoney == tipMoney)&&(identical(other.totalMoney, totalMoney) || other.totalMoney == totalMoney)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&const DeepCollectionEquality().equals(other.cardDetails, cardDetails)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,amountMoney,appFeeMoney,cashDetails,createdAt,id,locationId,orderId,referenceId,sourceType,tipMoney,totalMoney,updatedAt,const DeepCollectionEquality().hash(cardDetails),status);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'Payment(amountMoney: $amountMoney, appFeeMoney: $appFeeMoney, cashDetails: $cashDetails, createdAt: $createdAt, id: $id, locationId: $locationId, orderId: $orderId, referenceId: $referenceId, sourceType: $sourceType, tipMoney: $tipMoney, totalMoney: $totalMoney, updatedAt: $updatedAt, cardDetails: $cardDetails, status: $status)';
}


}

/// @nodoc
abstract mixin class $PaymentCopyWith<$Res>  {
  factory $PaymentCopyWith(Payment value, $Res Function(Payment) _then) = _$PaymentCopyWithImpl;
@useResult
$Res call({
 Money amountMoney, Money? appFeeMoney, CashPaymentDetails? cashDetails, DateTime createdAt, String? id, String? locationId, String? orderId, String? referenceId,@JsonKey(unknownEnumValue: SourceType.unknown) SourceType sourceType, Money? tipMoney, Money totalMoney, DateTime updatedAt
});


$MoneyCopyWith<$Res> get amountMoney;$MoneyCopyWith<$Res>? get appFeeMoney;$CashPaymentDetailsCopyWith<$Res>? get cashDetails;$MoneyCopyWith<$Res>? get tipMoney;$MoneyCopyWith<$Res> get totalMoney;

}
/// @nodoc
class _$PaymentCopyWithImpl<$Res>
    implements $PaymentCopyWith<$Res> {
  _$PaymentCopyWithImpl(this._self, this._then);

  final Payment _self;
  final $Res Function(Payment) _then;

/// Create a copy of Payment
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? amountMoney = null,Object? appFeeMoney = freezed,Object? cashDetails = freezed,Object? createdAt = null,Object? id = freezed,Object? locationId = freezed,Object? orderId = freezed,Object? referenceId = freezed,Object? sourceType = null,Object? tipMoney = freezed,Object? totalMoney = null,Object? updatedAt = null,}) {
  return _then(_self.copyWith(
amountMoney: null == amountMoney ? _self.amountMoney : amountMoney // ignore: cast_nullable_to_non_nullable
as Money,appFeeMoney: freezed == appFeeMoney ? _self.appFeeMoney : appFeeMoney // ignore: cast_nullable_to_non_nullable
as Money?,cashDetails: freezed == cashDetails ? _self.cashDetails : cashDetails // ignore: cast_nullable_to_non_nullable
as CashPaymentDetails?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,locationId: freezed == locationId ? _self.locationId : locationId // ignore: cast_nullable_to_non_nullable
as String?,orderId: freezed == orderId ? _self.orderId : orderId // ignore: cast_nullable_to_non_nullable
as String?,referenceId: freezed == referenceId ? _self.referenceId : referenceId // ignore: cast_nullable_to_non_nullable
as String?,sourceType: null == sourceType ? _self.sourceType : sourceType // ignore: cast_nullable_to_non_nullable
as SourceType,tipMoney: freezed == tipMoney ? _self.tipMoney : tipMoney // ignore: cast_nullable_to_non_nullable
as Money?,totalMoney: null == totalMoney ? _self.totalMoney : totalMoney // ignore: cast_nullable_to_non_nullable
as Money,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}
/// Create a copy of Payment
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MoneyCopyWith<$Res> get amountMoney {
  
  return $MoneyCopyWith<$Res>(_self.amountMoney, (value) {
    return _then(_self.copyWith(amountMoney: value));
  });
}/// Create a copy of Payment
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MoneyCopyWith<$Res>? get appFeeMoney {
    if (_self.appFeeMoney == null) {
    return null;
  }

  return $MoneyCopyWith<$Res>(_self.appFeeMoney!, (value) {
    return _then(_self.copyWith(appFeeMoney: value));
  });
}/// Create a copy of Payment
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CashPaymentDetailsCopyWith<$Res>? get cashDetails {
    if (_self.cashDetails == null) {
    return null;
  }

  return $CashPaymentDetailsCopyWith<$Res>(_self.cashDetails!, (value) {
    return _then(_self.copyWith(cashDetails: value));
  });
}/// Create a copy of Payment
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MoneyCopyWith<$Res>? get tipMoney {
    if (_self.tipMoney == null) {
    return null;
  }

  return $MoneyCopyWith<$Res>(_self.tipMoney!, (value) {
    return _then(_self.copyWith(tipMoney: value));
  });
}/// Create a copy of Payment
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MoneyCopyWith<$Res> get totalMoney {
  
  return $MoneyCopyWith<$Res>(_self.totalMoney, (value) {
    return _then(_self.copyWith(totalMoney: value));
  });
}
}


/// Adds pattern-matching-related methods to [Payment].
extension PaymentPatterns on Payment {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( OnlinePayment value)?  online,TResult Function( OfflinePayment value)?  offline,required TResult orElse(),}){
final _that = this;
switch (_that) {
case OnlinePayment() when online != null:
return online(_that);case OfflinePayment() when offline != null:
return offline(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( OnlinePayment value)  online,required TResult Function( OfflinePayment value)  offline,}){
final _that = this;
switch (_that) {
case OnlinePayment():
return online(_that);case OfflinePayment():
return offline(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( OnlinePayment value)?  online,TResult? Function( OfflinePayment value)?  offline,}){
final _that = this;
switch (_that) {
case OnlinePayment() when online != null:
return online(_that);case OfflinePayment() when offline != null:
return offline(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( Money amountMoney,  Money? appFeeMoney,  CashPaymentDetails? cashDetails,  DateTime createdAt,  String? id,  String? locationId,  String? orderId,  String? referenceId, @JsonKey(unknownEnumValue: SourceType.unknown)  SourceType sourceType,  Money? tipMoney,  Money totalMoney,  DateTime updatedAt,  CardPaymentDetails? cardDetails,  String? customerId,  String? note, @JsonKey(unknownEnumValue: PaymentStatus.unknown)  PaymentStatus status,  String? teamMemberId,  PaymentCapabilities? capabilities,  List<PaymentProcessingFee>? processingFee,  String? receiptNumber,  String? receiptUrl,  String? statementDescription)?  online,TResult Function( Money amountMoney,  Money? appFeeMoney,  CashPaymentDetails? cashDetails,  DateTime createdAt,  String? id,  String? locationId,  String? orderId,  String? referenceId, @JsonKey(unknownEnumValue: SourceType.unknown)  SourceType sourceType,  Money? tipMoney,  Money totalMoney,  DateTime updatedAt,  OfflineCardPaymentDetails? cardDetails,  String localId, @JsonKey(unknownEnumValue: OfflineStatus.unknown)  OfflineStatus status,  DateTime? uploadedAt)?  offline,required TResult orElse(),}) {final _that = this;
switch (_that) {
case OnlinePayment() when online != null:
return online(_that.amountMoney,_that.appFeeMoney,_that.cashDetails,_that.createdAt,_that.id,_that.locationId,_that.orderId,_that.referenceId,_that.sourceType,_that.tipMoney,_that.totalMoney,_that.updatedAt,_that.cardDetails,_that.customerId,_that.note,_that.status,_that.teamMemberId,_that.capabilities,_that.processingFee,_that.receiptNumber,_that.receiptUrl,_that.statementDescription);case OfflinePayment() when offline != null:
return offline(_that.amountMoney,_that.appFeeMoney,_that.cashDetails,_that.createdAt,_that.id,_that.locationId,_that.orderId,_that.referenceId,_that.sourceType,_that.tipMoney,_that.totalMoney,_that.updatedAt,_that.cardDetails,_that.localId,_that.status,_that.uploadedAt);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( Money amountMoney,  Money? appFeeMoney,  CashPaymentDetails? cashDetails,  DateTime createdAt,  String? id,  String? locationId,  String? orderId,  String? referenceId, @JsonKey(unknownEnumValue: SourceType.unknown)  SourceType sourceType,  Money? tipMoney,  Money totalMoney,  DateTime updatedAt,  CardPaymentDetails? cardDetails,  String? customerId,  String? note, @JsonKey(unknownEnumValue: PaymentStatus.unknown)  PaymentStatus status,  String? teamMemberId,  PaymentCapabilities? capabilities,  List<PaymentProcessingFee>? processingFee,  String? receiptNumber,  String? receiptUrl,  String? statementDescription)  online,required TResult Function( Money amountMoney,  Money? appFeeMoney,  CashPaymentDetails? cashDetails,  DateTime createdAt,  String? id,  String? locationId,  String? orderId,  String? referenceId, @JsonKey(unknownEnumValue: SourceType.unknown)  SourceType sourceType,  Money? tipMoney,  Money totalMoney,  DateTime updatedAt,  OfflineCardPaymentDetails? cardDetails,  String localId, @JsonKey(unknownEnumValue: OfflineStatus.unknown)  OfflineStatus status,  DateTime? uploadedAt)  offline,}) {final _that = this;
switch (_that) {
case OnlinePayment():
return online(_that.amountMoney,_that.appFeeMoney,_that.cashDetails,_that.createdAt,_that.id,_that.locationId,_that.orderId,_that.referenceId,_that.sourceType,_that.tipMoney,_that.totalMoney,_that.updatedAt,_that.cardDetails,_that.customerId,_that.note,_that.status,_that.teamMemberId,_that.capabilities,_that.processingFee,_that.receiptNumber,_that.receiptUrl,_that.statementDescription);case OfflinePayment():
return offline(_that.amountMoney,_that.appFeeMoney,_that.cashDetails,_that.createdAt,_that.id,_that.locationId,_that.orderId,_that.referenceId,_that.sourceType,_that.tipMoney,_that.totalMoney,_that.updatedAt,_that.cardDetails,_that.localId,_that.status,_that.uploadedAt);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( Money amountMoney,  Money? appFeeMoney,  CashPaymentDetails? cashDetails,  DateTime createdAt,  String? id,  String? locationId,  String? orderId,  String? referenceId, @JsonKey(unknownEnumValue: SourceType.unknown)  SourceType sourceType,  Money? tipMoney,  Money totalMoney,  DateTime updatedAt,  CardPaymentDetails? cardDetails,  String? customerId,  String? note, @JsonKey(unknownEnumValue: PaymentStatus.unknown)  PaymentStatus status,  String? teamMemberId,  PaymentCapabilities? capabilities,  List<PaymentProcessingFee>? processingFee,  String? receiptNumber,  String? receiptUrl,  String? statementDescription)?  online,TResult? Function( Money amountMoney,  Money? appFeeMoney,  CashPaymentDetails? cashDetails,  DateTime createdAt,  String? id,  String? locationId,  String? orderId,  String? referenceId, @JsonKey(unknownEnumValue: SourceType.unknown)  SourceType sourceType,  Money? tipMoney,  Money totalMoney,  DateTime updatedAt,  OfflineCardPaymentDetails? cardDetails,  String localId, @JsonKey(unknownEnumValue: OfflineStatus.unknown)  OfflineStatus status,  DateTime? uploadedAt)?  offline,}) {final _that = this;
switch (_that) {
case OnlinePayment() when online != null:
return online(_that.amountMoney,_that.appFeeMoney,_that.cashDetails,_that.createdAt,_that.id,_that.locationId,_that.orderId,_that.referenceId,_that.sourceType,_that.tipMoney,_that.totalMoney,_that.updatedAt,_that.cardDetails,_that.customerId,_that.note,_that.status,_that.teamMemberId,_that.capabilities,_that.processingFee,_that.receiptNumber,_that.receiptUrl,_that.statementDescription);case OfflinePayment() when offline != null:
return offline(_that.amountMoney,_that.appFeeMoney,_that.cashDetails,_that.createdAt,_that.id,_that.locationId,_that.orderId,_that.referenceId,_that.sourceType,_that.tipMoney,_that.totalMoney,_that.updatedAt,_that.cardDetails,_that.localId,_that.status,_that.uploadedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class OnlinePayment with DiagnosticableTreeMixin implements Payment {
  const OnlinePayment({required this.amountMoney, this.appFeeMoney, this.cashDetails, required this.createdAt, this.id, this.locationId, this.orderId, this.referenceId, @JsonKey(unknownEnumValue: SourceType.unknown) required this.sourceType, this.tipMoney, required this.totalMoney, required this.updatedAt, this.cardDetails, this.customerId, this.note, @JsonKey(unknownEnumValue: PaymentStatus.unknown) required this.status, this.teamMemberId, this.capabilities, final  List<PaymentProcessingFee>? processingFee, this.receiptNumber, this.receiptUrl, this.statementDescription, final  String? $type}): _processingFee = processingFee,$type = $type ?? 'online';
  factory OnlinePayment.fromJson(Map<String, dynamic> json) => _$OnlinePaymentFromJson(json);

@override final  Money amountMoney;
@override final  Money? appFeeMoney;
@override final  CashPaymentDetails? cashDetails;
@override final  DateTime createdAt;
@override final  String? id;
@override final  String? locationId;
@override final  String? orderId;
@override final  String? referenceId;
@override@JsonKey(unknownEnumValue: SourceType.unknown) final  SourceType sourceType;
@override final  Money? tipMoney;
@override final  Money totalMoney;
@override final  DateTime updatedAt;
@override final  CardPaymentDetails? cardDetails;
 final  String? customerId;
 final  String? note;
@override@JsonKey(unknownEnumValue: PaymentStatus.unknown) final  PaymentStatus status;
 final  String? teamMemberId;
 final  PaymentCapabilities? capabilities;
 final  List<PaymentProcessingFee>? _processingFee;
 List<PaymentProcessingFee>? get processingFee {
  final value = _processingFee;
  if (value == null) return null;
  if (_processingFee is EqualUnmodifiableListView) return _processingFee;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  String? receiptNumber;
 final  String? receiptUrl;
 final  String? statementDescription;

@JsonKey(name: 'type')
final String $type;


/// Create a copy of Payment
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OnlinePaymentCopyWith<OnlinePayment> get copyWith => _$OnlinePaymentCopyWithImpl<OnlinePayment>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OnlinePaymentToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'Payment.online'))
    ..add(DiagnosticsProperty('amountMoney', amountMoney))..add(DiagnosticsProperty('appFeeMoney', appFeeMoney))..add(DiagnosticsProperty('cashDetails', cashDetails))..add(DiagnosticsProperty('createdAt', createdAt))..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('locationId', locationId))..add(DiagnosticsProperty('orderId', orderId))..add(DiagnosticsProperty('referenceId', referenceId))..add(DiagnosticsProperty('sourceType', sourceType))..add(DiagnosticsProperty('tipMoney', tipMoney))..add(DiagnosticsProperty('totalMoney', totalMoney))..add(DiagnosticsProperty('updatedAt', updatedAt))..add(DiagnosticsProperty('cardDetails', cardDetails))..add(DiagnosticsProperty('customerId', customerId))..add(DiagnosticsProperty('note', note))..add(DiagnosticsProperty('status', status))..add(DiagnosticsProperty('teamMemberId', teamMemberId))..add(DiagnosticsProperty('capabilities', capabilities))..add(DiagnosticsProperty('processingFee', processingFee))..add(DiagnosticsProperty('receiptNumber', receiptNumber))..add(DiagnosticsProperty('receiptUrl', receiptUrl))..add(DiagnosticsProperty('statementDescription', statementDescription));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OnlinePayment&&(identical(other.amountMoney, amountMoney) || other.amountMoney == amountMoney)&&(identical(other.appFeeMoney, appFeeMoney) || other.appFeeMoney == appFeeMoney)&&(identical(other.cashDetails, cashDetails) || other.cashDetails == cashDetails)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.id, id) || other.id == id)&&(identical(other.locationId, locationId) || other.locationId == locationId)&&(identical(other.orderId, orderId) || other.orderId == orderId)&&(identical(other.referenceId, referenceId) || other.referenceId == referenceId)&&(identical(other.sourceType, sourceType) || other.sourceType == sourceType)&&(identical(other.tipMoney, tipMoney) || other.tipMoney == tipMoney)&&(identical(other.totalMoney, totalMoney) || other.totalMoney == totalMoney)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.cardDetails, cardDetails) || other.cardDetails == cardDetails)&&(identical(other.customerId, customerId) || other.customerId == customerId)&&(identical(other.note, note) || other.note == note)&&(identical(other.status, status) || other.status == status)&&(identical(other.teamMemberId, teamMemberId) || other.teamMemberId == teamMemberId)&&(identical(other.capabilities, capabilities) || other.capabilities == capabilities)&&const DeepCollectionEquality().equals(other._processingFee, _processingFee)&&(identical(other.receiptNumber, receiptNumber) || other.receiptNumber == receiptNumber)&&(identical(other.receiptUrl, receiptUrl) || other.receiptUrl == receiptUrl)&&(identical(other.statementDescription, statementDescription) || other.statementDescription == statementDescription));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,amountMoney,appFeeMoney,cashDetails,createdAt,id,locationId,orderId,referenceId,sourceType,tipMoney,totalMoney,updatedAt,cardDetails,customerId,note,status,teamMemberId,capabilities,const DeepCollectionEquality().hash(_processingFee),receiptNumber,receiptUrl,statementDescription]);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'Payment.online(amountMoney: $amountMoney, appFeeMoney: $appFeeMoney, cashDetails: $cashDetails, createdAt: $createdAt, id: $id, locationId: $locationId, orderId: $orderId, referenceId: $referenceId, sourceType: $sourceType, tipMoney: $tipMoney, totalMoney: $totalMoney, updatedAt: $updatedAt, cardDetails: $cardDetails, customerId: $customerId, note: $note, status: $status, teamMemberId: $teamMemberId, capabilities: $capabilities, processingFee: $processingFee, receiptNumber: $receiptNumber, receiptUrl: $receiptUrl, statementDescription: $statementDescription)';
}


}

/// @nodoc
abstract mixin class $OnlinePaymentCopyWith<$Res> implements $PaymentCopyWith<$Res> {
  factory $OnlinePaymentCopyWith(OnlinePayment value, $Res Function(OnlinePayment) _then) = _$OnlinePaymentCopyWithImpl;
@override @useResult
$Res call({
 Money amountMoney, Money? appFeeMoney, CashPaymentDetails? cashDetails, DateTime createdAt, String? id, String? locationId, String? orderId, String? referenceId,@JsonKey(unknownEnumValue: SourceType.unknown) SourceType sourceType, Money? tipMoney, Money totalMoney, DateTime updatedAt, CardPaymentDetails? cardDetails, String? customerId, String? note,@JsonKey(unknownEnumValue: PaymentStatus.unknown) PaymentStatus status, String? teamMemberId, PaymentCapabilities? capabilities, List<PaymentProcessingFee>? processingFee, String? receiptNumber, String? receiptUrl, String? statementDescription
});


@override $MoneyCopyWith<$Res> get amountMoney;@override $MoneyCopyWith<$Res>? get appFeeMoney;@override $CashPaymentDetailsCopyWith<$Res>? get cashDetails;@override $MoneyCopyWith<$Res>? get tipMoney;@override $MoneyCopyWith<$Res> get totalMoney;$CardPaymentDetailsCopyWith<$Res>? get cardDetails;$PaymentCapabilitiesCopyWith<$Res>? get capabilities;

}
/// @nodoc
class _$OnlinePaymentCopyWithImpl<$Res>
    implements $OnlinePaymentCopyWith<$Res> {
  _$OnlinePaymentCopyWithImpl(this._self, this._then);

  final OnlinePayment _self;
  final $Res Function(OnlinePayment) _then;

/// Create a copy of Payment
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? amountMoney = null,Object? appFeeMoney = freezed,Object? cashDetails = freezed,Object? createdAt = null,Object? id = freezed,Object? locationId = freezed,Object? orderId = freezed,Object? referenceId = freezed,Object? sourceType = null,Object? tipMoney = freezed,Object? totalMoney = null,Object? updatedAt = null,Object? cardDetails = freezed,Object? customerId = freezed,Object? note = freezed,Object? status = null,Object? teamMemberId = freezed,Object? capabilities = freezed,Object? processingFee = freezed,Object? receiptNumber = freezed,Object? receiptUrl = freezed,Object? statementDescription = freezed,}) {
  return _then(OnlinePayment(
amountMoney: null == amountMoney ? _self.amountMoney : amountMoney // ignore: cast_nullable_to_non_nullable
as Money,appFeeMoney: freezed == appFeeMoney ? _self.appFeeMoney : appFeeMoney // ignore: cast_nullable_to_non_nullable
as Money?,cashDetails: freezed == cashDetails ? _self.cashDetails : cashDetails // ignore: cast_nullable_to_non_nullable
as CashPaymentDetails?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,locationId: freezed == locationId ? _self.locationId : locationId // ignore: cast_nullable_to_non_nullable
as String?,orderId: freezed == orderId ? _self.orderId : orderId // ignore: cast_nullable_to_non_nullable
as String?,referenceId: freezed == referenceId ? _self.referenceId : referenceId // ignore: cast_nullable_to_non_nullable
as String?,sourceType: null == sourceType ? _self.sourceType : sourceType // ignore: cast_nullable_to_non_nullable
as SourceType,tipMoney: freezed == tipMoney ? _self.tipMoney : tipMoney // ignore: cast_nullable_to_non_nullable
as Money?,totalMoney: null == totalMoney ? _self.totalMoney : totalMoney // ignore: cast_nullable_to_non_nullable
as Money,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,cardDetails: freezed == cardDetails ? _self.cardDetails : cardDetails // ignore: cast_nullable_to_non_nullable
as CardPaymentDetails?,customerId: freezed == customerId ? _self.customerId : customerId // ignore: cast_nullable_to_non_nullable
as String?,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as PaymentStatus,teamMemberId: freezed == teamMemberId ? _self.teamMemberId : teamMemberId // ignore: cast_nullable_to_non_nullable
as String?,capabilities: freezed == capabilities ? _self.capabilities : capabilities // ignore: cast_nullable_to_non_nullable
as PaymentCapabilities?,processingFee: freezed == processingFee ? _self._processingFee : processingFee // ignore: cast_nullable_to_non_nullable
as List<PaymentProcessingFee>?,receiptNumber: freezed == receiptNumber ? _self.receiptNumber : receiptNumber // ignore: cast_nullable_to_non_nullable
as String?,receiptUrl: freezed == receiptUrl ? _self.receiptUrl : receiptUrl // ignore: cast_nullable_to_non_nullable
as String?,statementDescription: freezed == statementDescription ? _self.statementDescription : statementDescription // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of Payment
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MoneyCopyWith<$Res> get amountMoney {
  
  return $MoneyCopyWith<$Res>(_self.amountMoney, (value) {
    return _then(_self.copyWith(amountMoney: value));
  });
}/// Create a copy of Payment
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MoneyCopyWith<$Res>? get appFeeMoney {
    if (_self.appFeeMoney == null) {
    return null;
  }

  return $MoneyCopyWith<$Res>(_self.appFeeMoney!, (value) {
    return _then(_self.copyWith(appFeeMoney: value));
  });
}/// Create a copy of Payment
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CashPaymentDetailsCopyWith<$Res>? get cashDetails {
    if (_self.cashDetails == null) {
    return null;
  }

  return $CashPaymentDetailsCopyWith<$Res>(_self.cashDetails!, (value) {
    return _then(_self.copyWith(cashDetails: value));
  });
}/// Create a copy of Payment
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MoneyCopyWith<$Res>? get tipMoney {
    if (_self.tipMoney == null) {
    return null;
  }

  return $MoneyCopyWith<$Res>(_self.tipMoney!, (value) {
    return _then(_self.copyWith(tipMoney: value));
  });
}/// Create a copy of Payment
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MoneyCopyWith<$Res> get totalMoney {
  
  return $MoneyCopyWith<$Res>(_self.totalMoney, (value) {
    return _then(_self.copyWith(totalMoney: value));
  });
}/// Create a copy of Payment
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CardPaymentDetailsCopyWith<$Res>? get cardDetails {
    if (_self.cardDetails == null) {
    return null;
  }

  return $CardPaymentDetailsCopyWith<$Res>(_self.cardDetails!, (value) {
    return _then(_self.copyWith(cardDetails: value));
  });
}/// Create a copy of Payment
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaymentCapabilitiesCopyWith<$Res>? get capabilities {
    if (_self.capabilities == null) {
    return null;
  }

  return $PaymentCapabilitiesCopyWith<$Res>(_self.capabilities!, (value) {
    return _then(_self.copyWith(capabilities: value));
  });
}
}

/// @nodoc
@JsonSerializable()

class OfflinePayment with DiagnosticableTreeMixin implements Payment {
  const OfflinePayment({required this.amountMoney, this.appFeeMoney, this.cashDetails, required this.createdAt, this.id, this.locationId, this.orderId, this.referenceId, @JsonKey(unknownEnumValue: SourceType.unknown) required this.sourceType, this.tipMoney, required this.totalMoney, required this.updatedAt, this.cardDetails, required this.localId, @JsonKey(unknownEnumValue: OfflineStatus.unknown) required this.status, this.uploadedAt, final  String? $type}): $type = $type ?? 'offline';
  factory OfflinePayment.fromJson(Map<String, dynamic> json) => _$OfflinePaymentFromJson(json);

@override final  Money amountMoney;
@override final  Money? appFeeMoney;
@override final  CashPaymentDetails? cashDetails;
@override final  DateTime createdAt;
@override final  String? id;
@override final  String? locationId;
@override final  String? orderId;
@override final  String? referenceId;
@override@JsonKey(unknownEnumValue: SourceType.unknown) final  SourceType sourceType;
@override final  Money? tipMoney;
@override final  Money totalMoney;
@override final  DateTime updatedAt;
@override final  OfflineCardPaymentDetails? cardDetails;
 final  String localId;
@override@JsonKey(unknownEnumValue: OfflineStatus.unknown) final  OfflineStatus status;
 final  DateTime? uploadedAt;

@JsonKey(name: 'type')
final String $type;


/// Create a copy of Payment
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OfflinePaymentCopyWith<OfflinePayment> get copyWith => _$OfflinePaymentCopyWithImpl<OfflinePayment>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OfflinePaymentToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'Payment.offline'))
    ..add(DiagnosticsProperty('amountMoney', amountMoney))..add(DiagnosticsProperty('appFeeMoney', appFeeMoney))..add(DiagnosticsProperty('cashDetails', cashDetails))..add(DiagnosticsProperty('createdAt', createdAt))..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('locationId', locationId))..add(DiagnosticsProperty('orderId', orderId))..add(DiagnosticsProperty('referenceId', referenceId))..add(DiagnosticsProperty('sourceType', sourceType))..add(DiagnosticsProperty('tipMoney', tipMoney))..add(DiagnosticsProperty('totalMoney', totalMoney))..add(DiagnosticsProperty('updatedAt', updatedAt))..add(DiagnosticsProperty('cardDetails', cardDetails))..add(DiagnosticsProperty('localId', localId))..add(DiagnosticsProperty('status', status))..add(DiagnosticsProperty('uploadedAt', uploadedAt));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OfflinePayment&&(identical(other.amountMoney, amountMoney) || other.amountMoney == amountMoney)&&(identical(other.appFeeMoney, appFeeMoney) || other.appFeeMoney == appFeeMoney)&&(identical(other.cashDetails, cashDetails) || other.cashDetails == cashDetails)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.id, id) || other.id == id)&&(identical(other.locationId, locationId) || other.locationId == locationId)&&(identical(other.orderId, orderId) || other.orderId == orderId)&&(identical(other.referenceId, referenceId) || other.referenceId == referenceId)&&(identical(other.sourceType, sourceType) || other.sourceType == sourceType)&&(identical(other.tipMoney, tipMoney) || other.tipMoney == tipMoney)&&(identical(other.totalMoney, totalMoney) || other.totalMoney == totalMoney)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.cardDetails, cardDetails) || other.cardDetails == cardDetails)&&(identical(other.localId, localId) || other.localId == localId)&&(identical(other.status, status) || other.status == status)&&(identical(other.uploadedAt, uploadedAt) || other.uploadedAt == uploadedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,amountMoney,appFeeMoney,cashDetails,createdAt,id,locationId,orderId,referenceId,sourceType,tipMoney,totalMoney,updatedAt,cardDetails,localId,status,uploadedAt);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'Payment.offline(amountMoney: $amountMoney, appFeeMoney: $appFeeMoney, cashDetails: $cashDetails, createdAt: $createdAt, id: $id, locationId: $locationId, orderId: $orderId, referenceId: $referenceId, sourceType: $sourceType, tipMoney: $tipMoney, totalMoney: $totalMoney, updatedAt: $updatedAt, cardDetails: $cardDetails, localId: $localId, status: $status, uploadedAt: $uploadedAt)';
}


}

/// @nodoc
abstract mixin class $OfflinePaymentCopyWith<$Res> implements $PaymentCopyWith<$Res> {
  factory $OfflinePaymentCopyWith(OfflinePayment value, $Res Function(OfflinePayment) _then) = _$OfflinePaymentCopyWithImpl;
@override @useResult
$Res call({
 Money amountMoney, Money? appFeeMoney, CashPaymentDetails? cashDetails, DateTime createdAt, String? id, String? locationId, String? orderId, String? referenceId,@JsonKey(unknownEnumValue: SourceType.unknown) SourceType sourceType, Money? tipMoney, Money totalMoney, DateTime updatedAt, OfflineCardPaymentDetails? cardDetails, String localId,@JsonKey(unknownEnumValue: OfflineStatus.unknown) OfflineStatus status, DateTime? uploadedAt
});


@override $MoneyCopyWith<$Res> get amountMoney;@override $MoneyCopyWith<$Res>? get appFeeMoney;@override $CashPaymentDetailsCopyWith<$Res>? get cashDetails;@override $MoneyCopyWith<$Res>? get tipMoney;@override $MoneyCopyWith<$Res> get totalMoney;$OfflineCardPaymentDetailsCopyWith<$Res>? get cardDetails;

}
/// @nodoc
class _$OfflinePaymentCopyWithImpl<$Res>
    implements $OfflinePaymentCopyWith<$Res> {
  _$OfflinePaymentCopyWithImpl(this._self, this._then);

  final OfflinePayment _self;
  final $Res Function(OfflinePayment) _then;

/// Create a copy of Payment
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? amountMoney = null,Object? appFeeMoney = freezed,Object? cashDetails = freezed,Object? createdAt = null,Object? id = freezed,Object? locationId = freezed,Object? orderId = freezed,Object? referenceId = freezed,Object? sourceType = null,Object? tipMoney = freezed,Object? totalMoney = null,Object? updatedAt = null,Object? cardDetails = freezed,Object? localId = null,Object? status = null,Object? uploadedAt = freezed,}) {
  return _then(OfflinePayment(
amountMoney: null == amountMoney ? _self.amountMoney : amountMoney // ignore: cast_nullable_to_non_nullable
as Money,appFeeMoney: freezed == appFeeMoney ? _self.appFeeMoney : appFeeMoney // ignore: cast_nullable_to_non_nullable
as Money?,cashDetails: freezed == cashDetails ? _self.cashDetails : cashDetails // ignore: cast_nullable_to_non_nullable
as CashPaymentDetails?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,locationId: freezed == locationId ? _self.locationId : locationId // ignore: cast_nullable_to_non_nullable
as String?,orderId: freezed == orderId ? _self.orderId : orderId // ignore: cast_nullable_to_non_nullable
as String?,referenceId: freezed == referenceId ? _self.referenceId : referenceId // ignore: cast_nullable_to_non_nullable
as String?,sourceType: null == sourceType ? _self.sourceType : sourceType // ignore: cast_nullable_to_non_nullable
as SourceType,tipMoney: freezed == tipMoney ? _self.tipMoney : tipMoney // ignore: cast_nullable_to_non_nullable
as Money?,totalMoney: null == totalMoney ? _self.totalMoney : totalMoney // ignore: cast_nullable_to_non_nullable
as Money,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,cardDetails: freezed == cardDetails ? _self.cardDetails : cardDetails // ignore: cast_nullable_to_non_nullable
as OfflineCardPaymentDetails?,localId: null == localId ? _self.localId : localId // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as OfflineStatus,uploadedAt: freezed == uploadedAt ? _self.uploadedAt : uploadedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

/// Create a copy of Payment
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MoneyCopyWith<$Res> get amountMoney {
  
  return $MoneyCopyWith<$Res>(_self.amountMoney, (value) {
    return _then(_self.copyWith(amountMoney: value));
  });
}/// Create a copy of Payment
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MoneyCopyWith<$Res>? get appFeeMoney {
    if (_self.appFeeMoney == null) {
    return null;
  }

  return $MoneyCopyWith<$Res>(_self.appFeeMoney!, (value) {
    return _then(_self.copyWith(appFeeMoney: value));
  });
}/// Create a copy of Payment
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CashPaymentDetailsCopyWith<$Res>? get cashDetails {
    if (_self.cashDetails == null) {
    return null;
  }

  return $CashPaymentDetailsCopyWith<$Res>(_self.cashDetails!, (value) {
    return _then(_self.copyWith(cashDetails: value));
  });
}/// Create a copy of Payment
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MoneyCopyWith<$Res>? get tipMoney {
    if (_self.tipMoney == null) {
    return null;
  }

  return $MoneyCopyWith<$Res>(_self.tipMoney!, (value) {
    return _then(_self.copyWith(tipMoney: value));
  });
}/// Create a copy of Payment
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MoneyCopyWith<$Res> get totalMoney {
  
  return $MoneyCopyWith<$Res>(_self.totalMoney, (value) {
    return _then(_self.copyWith(totalMoney: value));
  });
}/// Create a copy of Payment
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OfflineCardPaymentDetailsCopyWith<$Res>? get cardDetails {
    if (_self.cardDetails == null) {
    return null;
  }

  return $OfflineCardPaymentDetailsCopyWith<$Res>(_self.cardDetails!, (value) {
    return _then(_self.copyWith(cardDetails: value));
  });
}
}


/// @nodoc
mixin _$PaymentCapabilities implements DiagnosticableTreeMixin {

 List<String> get allCapabilities;
/// Create a copy of PaymentCapabilities
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaymentCapabilitiesCopyWith<PaymentCapabilities> get copyWith => _$PaymentCapabilitiesCopyWithImpl<PaymentCapabilities>(this as PaymentCapabilities, _$identity);

  /// Serializes this PaymentCapabilities to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'PaymentCapabilities'))
    ..add(DiagnosticsProperty('allCapabilities', allCapabilities));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaymentCapabilities&&const DeepCollectionEquality().equals(other.allCapabilities, allCapabilities));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(allCapabilities));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'PaymentCapabilities(allCapabilities: $allCapabilities)';
}


}

/// @nodoc
abstract mixin class $PaymentCapabilitiesCopyWith<$Res>  {
  factory $PaymentCapabilitiesCopyWith(PaymentCapabilities value, $Res Function(PaymentCapabilities) _then) = _$PaymentCapabilitiesCopyWithImpl;
@useResult
$Res call({
 List<String> allCapabilities
});




}
/// @nodoc
class _$PaymentCapabilitiesCopyWithImpl<$Res>
    implements $PaymentCapabilitiesCopyWith<$Res> {
  _$PaymentCapabilitiesCopyWithImpl(this._self, this._then);

  final PaymentCapabilities _self;
  final $Res Function(PaymentCapabilities) _then;

/// Create a copy of PaymentCapabilities
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? allCapabilities = null,}) {
  return _then(_self.copyWith(
allCapabilities: null == allCapabilities ? _self.allCapabilities : allCapabilities // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// Adds pattern-matching-related methods to [PaymentCapabilities].
extension PaymentCapabilitiesPatterns on PaymentCapabilities {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PaymentCapabilities value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PaymentCapabilities() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PaymentCapabilities value)  $default,){
final _that = this;
switch (_that) {
case _PaymentCapabilities():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PaymentCapabilities value)?  $default,){
final _that = this;
switch (_that) {
case _PaymentCapabilities() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<String> allCapabilities)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PaymentCapabilities() when $default != null:
return $default(_that.allCapabilities);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<String> allCapabilities)  $default,) {final _that = this;
switch (_that) {
case _PaymentCapabilities():
return $default(_that.allCapabilities);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<String> allCapabilities)?  $default,) {final _that = this;
switch (_that) {
case _PaymentCapabilities() when $default != null:
return $default(_that.allCapabilities);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PaymentCapabilities extends PaymentCapabilities with DiagnosticableTreeMixin {
  const _PaymentCapabilities({final  List<String> allCapabilities = const <String>[]}): _allCapabilities = allCapabilities,super._();
  factory _PaymentCapabilities.fromJson(Map<String, dynamic> json) => _$PaymentCapabilitiesFromJson(json);

 final  List<String> _allCapabilities;
@override@JsonKey() List<String> get allCapabilities {
  if (_allCapabilities is EqualUnmodifiableListView) return _allCapabilities;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_allCapabilities);
}


/// Create a copy of PaymentCapabilities
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PaymentCapabilitiesCopyWith<_PaymentCapabilities> get copyWith => __$PaymentCapabilitiesCopyWithImpl<_PaymentCapabilities>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PaymentCapabilitiesToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'PaymentCapabilities'))
    ..add(DiagnosticsProperty('allCapabilities', allCapabilities));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PaymentCapabilities&&const DeepCollectionEquality().equals(other._allCapabilities, _allCapabilities));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_allCapabilities));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'PaymentCapabilities(allCapabilities: $allCapabilities)';
}


}

/// @nodoc
abstract mixin class _$PaymentCapabilitiesCopyWith<$Res> implements $PaymentCapabilitiesCopyWith<$Res> {
  factory _$PaymentCapabilitiesCopyWith(_PaymentCapabilities value, $Res Function(_PaymentCapabilities) _then) = __$PaymentCapabilitiesCopyWithImpl;
@override @useResult
$Res call({
 List<String> allCapabilities
});




}
/// @nodoc
class __$PaymentCapabilitiesCopyWithImpl<$Res>
    implements _$PaymentCapabilitiesCopyWith<$Res> {
  __$PaymentCapabilitiesCopyWithImpl(this._self, this._then);

  final _PaymentCapabilities _self;
  final $Res Function(_PaymentCapabilities) _then;

/// Create a copy of PaymentCapabilities
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? allCapabilities = null,}) {
  return _then(_PaymentCapabilities(
allCapabilities: null == allCapabilities ? _self._allCapabilities : allCapabilities // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}


/// @nodoc
mixin _$PaymentProcessingFee implements DiagnosticableTreeMixin {

 Money get amountMoney; DateTime get effectiveAt; ProcessingFeeType get type;
/// Create a copy of PaymentProcessingFee
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaymentProcessingFeeCopyWith<PaymentProcessingFee> get copyWith => _$PaymentProcessingFeeCopyWithImpl<PaymentProcessingFee>(this as PaymentProcessingFee, _$identity);

  /// Serializes this PaymentProcessingFee to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'PaymentProcessingFee'))
    ..add(DiagnosticsProperty('amountMoney', amountMoney))..add(DiagnosticsProperty('effectiveAt', effectiveAt))..add(DiagnosticsProperty('type', type));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaymentProcessingFee&&(identical(other.amountMoney, amountMoney) || other.amountMoney == amountMoney)&&(identical(other.effectiveAt, effectiveAt) || other.effectiveAt == effectiveAt)&&(identical(other.type, type) || other.type == type));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,amountMoney,effectiveAt,type);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'PaymentProcessingFee(amountMoney: $amountMoney, effectiveAt: $effectiveAt, type: $type)';
}


}

/// @nodoc
abstract mixin class $PaymentProcessingFeeCopyWith<$Res>  {
  factory $PaymentProcessingFeeCopyWith(PaymentProcessingFee value, $Res Function(PaymentProcessingFee) _then) = _$PaymentProcessingFeeCopyWithImpl;
@useResult
$Res call({
 Money amountMoney, DateTime effectiveAt, ProcessingFeeType type
});


$MoneyCopyWith<$Res> get amountMoney;

}
/// @nodoc
class _$PaymentProcessingFeeCopyWithImpl<$Res>
    implements $PaymentProcessingFeeCopyWith<$Res> {
  _$PaymentProcessingFeeCopyWithImpl(this._self, this._then);

  final PaymentProcessingFee _self;
  final $Res Function(PaymentProcessingFee) _then;

/// Create a copy of PaymentProcessingFee
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? amountMoney = null,Object? effectiveAt = null,Object? type = null,}) {
  return _then(_self.copyWith(
amountMoney: null == amountMoney ? _self.amountMoney : amountMoney // ignore: cast_nullable_to_non_nullable
as Money,effectiveAt: null == effectiveAt ? _self.effectiveAt : effectiveAt // ignore: cast_nullable_to_non_nullable
as DateTime,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as ProcessingFeeType,
  ));
}
/// Create a copy of PaymentProcessingFee
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MoneyCopyWith<$Res> get amountMoney {
  
  return $MoneyCopyWith<$Res>(_self.amountMoney, (value) {
    return _then(_self.copyWith(amountMoney: value));
  });
}
}


/// Adds pattern-matching-related methods to [PaymentProcessingFee].
extension PaymentProcessingFeePatterns on PaymentProcessingFee {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PaymentProcessingFee value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PaymentProcessingFee() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PaymentProcessingFee value)  $default,){
final _that = this;
switch (_that) {
case _PaymentProcessingFee():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PaymentProcessingFee value)?  $default,){
final _that = this;
switch (_that) {
case _PaymentProcessingFee() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Money amountMoney,  DateTime effectiveAt,  ProcessingFeeType type)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PaymentProcessingFee() when $default != null:
return $default(_that.amountMoney,_that.effectiveAt,_that.type);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Money amountMoney,  DateTime effectiveAt,  ProcessingFeeType type)  $default,) {final _that = this;
switch (_that) {
case _PaymentProcessingFee():
return $default(_that.amountMoney,_that.effectiveAt,_that.type);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Money amountMoney,  DateTime effectiveAt,  ProcessingFeeType type)?  $default,) {final _that = this;
switch (_that) {
case _PaymentProcessingFee() when $default != null:
return $default(_that.amountMoney,_that.effectiveAt,_that.type);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PaymentProcessingFee with DiagnosticableTreeMixin implements PaymentProcessingFee {
  const _PaymentProcessingFee({required this.amountMoney, required this.effectiveAt, required this.type});
  factory _PaymentProcessingFee.fromJson(Map<String, dynamic> json) => _$PaymentProcessingFeeFromJson(json);

@override final  Money amountMoney;
@override final  DateTime effectiveAt;
@override final  ProcessingFeeType type;

/// Create a copy of PaymentProcessingFee
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PaymentProcessingFeeCopyWith<_PaymentProcessingFee> get copyWith => __$PaymentProcessingFeeCopyWithImpl<_PaymentProcessingFee>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PaymentProcessingFeeToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'PaymentProcessingFee'))
    ..add(DiagnosticsProperty('amountMoney', amountMoney))..add(DiagnosticsProperty('effectiveAt', effectiveAt))..add(DiagnosticsProperty('type', type));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PaymentProcessingFee&&(identical(other.amountMoney, amountMoney) || other.amountMoney == amountMoney)&&(identical(other.effectiveAt, effectiveAt) || other.effectiveAt == effectiveAt)&&(identical(other.type, type) || other.type == type));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,amountMoney,effectiveAt,type);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'PaymentProcessingFee(amountMoney: $amountMoney, effectiveAt: $effectiveAt, type: $type)';
}


}

/// @nodoc
abstract mixin class _$PaymentProcessingFeeCopyWith<$Res> implements $PaymentProcessingFeeCopyWith<$Res> {
  factory _$PaymentProcessingFeeCopyWith(_PaymentProcessingFee value, $Res Function(_PaymentProcessingFee) _then) = __$PaymentProcessingFeeCopyWithImpl;
@override @useResult
$Res call({
 Money amountMoney, DateTime effectiveAt, ProcessingFeeType type
});


@override $MoneyCopyWith<$Res> get amountMoney;

}
/// @nodoc
class __$PaymentProcessingFeeCopyWithImpl<$Res>
    implements _$PaymentProcessingFeeCopyWith<$Res> {
  __$PaymentProcessingFeeCopyWithImpl(this._self, this._then);

  final _PaymentProcessingFee _self;
  final $Res Function(_PaymentProcessingFee) _then;

/// Create a copy of PaymentProcessingFee
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? amountMoney = null,Object? effectiveAt = null,Object? type = null,}) {
  return _then(_PaymentProcessingFee(
amountMoney: null == amountMoney ? _self.amountMoney : amountMoney // ignore: cast_nullable_to_non_nullable
as Money,effectiveAt: null == effectiveAt ? _self.effectiveAt : effectiveAt // ignore: cast_nullable_to_non_nullable
as DateTime,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as ProcessingFeeType,
  ));
}

/// Create a copy of PaymentProcessingFee
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MoneyCopyWith<$Res> get amountMoney {
  
  return $MoneyCopyWith<$Res>(_self.amountMoney, (value) {
    return _then(_self.copyWith(amountMoney: value));
  });
}
}

PaymentParameters _$PaymentParametersFromJson(
  Map<String, dynamic> json
) {
        switch (json['type']) {
                  case 'current':
          return PaymentParametersCurrent.fromJson(
            json
          );
                case 'legacy':
          return _LegacyPaymentParameters.fromJson(
            json
          );
        
          default:
            throw CheckedFromJsonException(
  json,
  'type',
  'PaymentParameters',
  'Invalid union type "${json['type']}"!'
);
        }
      
}

/// @nodoc
mixin _$PaymentParameters implements DiagnosticableTreeMixin {

 bool? get acceptPartialAuthorization; bool? get allowCardSurcharge; Money get amountMoney; Money? get appFeeMoney; bool? get autocomplete; String? get customerId; DelayAction? get delayAction; num? get delayDuration; ProcessingMode get processingMode; String? get locationId; String? get note; String? get orderId; String? get referenceId; String? get statementDescription; String? get teamMemberId; Money? get tipMoney;
/// Create a copy of PaymentParameters
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaymentParametersCopyWith<PaymentParameters> get copyWith => _$PaymentParametersCopyWithImpl<PaymentParameters>(this as PaymentParameters, _$identity);

  /// Serializes this PaymentParameters to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'PaymentParameters'))
    ..add(DiagnosticsProperty('acceptPartialAuthorization', acceptPartialAuthorization))..add(DiagnosticsProperty('allowCardSurcharge', allowCardSurcharge))..add(DiagnosticsProperty('amountMoney', amountMoney))..add(DiagnosticsProperty('appFeeMoney', appFeeMoney))..add(DiagnosticsProperty('autocomplete', autocomplete))..add(DiagnosticsProperty('customerId', customerId))..add(DiagnosticsProperty('delayAction', delayAction))..add(DiagnosticsProperty('delayDuration', delayDuration))..add(DiagnosticsProperty('processingMode', processingMode))..add(DiagnosticsProperty('locationId', locationId))..add(DiagnosticsProperty('note', note))..add(DiagnosticsProperty('orderId', orderId))..add(DiagnosticsProperty('referenceId', referenceId))..add(DiagnosticsProperty('statementDescription', statementDescription))..add(DiagnosticsProperty('teamMemberId', teamMemberId))..add(DiagnosticsProperty('tipMoney', tipMoney));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaymentParameters&&(identical(other.acceptPartialAuthorization, acceptPartialAuthorization) || other.acceptPartialAuthorization == acceptPartialAuthorization)&&(identical(other.allowCardSurcharge, allowCardSurcharge) || other.allowCardSurcharge == allowCardSurcharge)&&(identical(other.amountMoney, amountMoney) || other.amountMoney == amountMoney)&&(identical(other.appFeeMoney, appFeeMoney) || other.appFeeMoney == appFeeMoney)&&(identical(other.autocomplete, autocomplete) || other.autocomplete == autocomplete)&&(identical(other.customerId, customerId) || other.customerId == customerId)&&(identical(other.delayAction, delayAction) || other.delayAction == delayAction)&&(identical(other.delayDuration, delayDuration) || other.delayDuration == delayDuration)&&(identical(other.processingMode, processingMode) || other.processingMode == processingMode)&&(identical(other.locationId, locationId) || other.locationId == locationId)&&(identical(other.note, note) || other.note == note)&&(identical(other.orderId, orderId) || other.orderId == orderId)&&(identical(other.referenceId, referenceId) || other.referenceId == referenceId)&&(identical(other.statementDescription, statementDescription) || other.statementDescription == statementDescription)&&(identical(other.teamMemberId, teamMemberId) || other.teamMemberId == teamMemberId)&&(identical(other.tipMoney, tipMoney) || other.tipMoney == tipMoney));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,acceptPartialAuthorization,allowCardSurcharge,amountMoney,appFeeMoney,autocomplete,customerId,delayAction,delayDuration,processingMode,locationId,note,orderId,referenceId,statementDescription,teamMemberId,tipMoney);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'PaymentParameters(acceptPartialAuthorization: $acceptPartialAuthorization, allowCardSurcharge: $allowCardSurcharge, amountMoney: $amountMoney, appFeeMoney: $appFeeMoney, autocomplete: $autocomplete, customerId: $customerId, delayAction: $delayAction, delayDuration: $delayDuration, processingMode: $processingMode, locationId: $locationId, note: $note, orderId: $orderId, referenceId: $referenceId, statementDescription: $statementDescription, teamMemberId: $teamMemberId, tipMoney: $tipMoney)';
}


}

/// @nodoc
abstract mixin class $PaymentParametersCopyWith<$Res>  {
  factory $PaymentParametersCopyWith(PaymentParameters value, $Res Function(PaymentParameters) _then) = _$PaymentParametersCopyWithImpl;
@useResult
$Res call({
 bool? acceptPartialAuthorization, bool? allowCardSurcharge, Money amountMoney, Money? appFeeMoney, bool? autocomplete, String? customerId, DelayAction? delayAction, num? delayDuration, ProcessingMode processingMode, String? locationId, String? note, String? orderId, String? referenceId, String? statementDescription, String? teamMemberId, Money? tipMoney
});


$MoneyCopyWith<$Res> get amountMoney;$MoneyCopyWith<$Res>? get appFeeMoney;$MoneyCopyWith<$Res>? get tipMoney;

}
/// @nodoc
class _$PaymentParametersCopyWithImpl<$Res>
    implements $PaymentParametersCopyWith<$Res> {
  _$PaymentParametersCopyWithImpl(this._self, this._then);

  final PaymentParameters _self;
  final $Res Function(PaymentParameters) _then;

/// Create a copy of PaymentParameters
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? acceptPartialAuthorization = freezed,Object? allowCardSurcharge = freezed,Object? amountMoney = null,Object? appFeeMoney = freezed,Object? autocomplete = freezed,Object? customerId = freezed,Object? delayAction = freezed,Object? delayDuration = freezed,Object? processingMode = null,Object? locationId = freezed,Object? note = freezed,Object? orderId = freezed,Object? referenceId = freezed,Object? statementDescription = freezed,Object? teamMemberId = freezed,Object? tipMoney = freezed,}) {
  return _then(_self.copyWith(
acceptPartialAuthorization: freezed == acceptPartialAuthorization ? _self.acceptPartialAuthorization : acceptPartialAuthorization // ignore: cast_nullable_to_non_nullable
as bool?,allowCardSurcharge: freezed == allowCardSurcharge ? _self.allowCardSurcharge : allowCardSurcharge // ignore: cast_nullable_to_non_nullable
as bool?,amountMoney: null == amountMoney ? _self.amountMoney : amountMoney // ignore: cast_nullable_to_non_nullable
as Money,appFeeMoney: freezed == appFeeMoney ? _self.appFeeMoney : appFeeMoney // ignore: cast_nullable_to_non_nullable
as Money?,autocomplete: freezed == autocomplete ? _self.autocomplete : autocomplete // ignore: cast_nullable_to_non_nullable
as bool?,customerId: freezed == customerId ? _self.customerId : customerId // ignore: cast_nullable_to_non_nullable
as String?,delayAction: freezed == delayAction ? _self.delayAction : delayAction // ignore: cast_nullable_to_non_nullable
as DelayAction?,delayDuration: freezed == delayDuration ? _self.delayDuration : delayDuration // ignore: cast_nullable_to_non_nullable
as num?,processingMode: null == processingMode ? _self.processingMode : processingMode // ignore: cast_nullable_to_non_nullable
as ProcessingMode,locationId: freezed == locationId ? _self.locationId : locationId // ignore: cast_nullable_to_non_nullable
as String?,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,orderId: freezed == orderId ? _self.orderId : orderId // ignore: cast_nullable_to_non_nullable
as String?,referenceId: freezed == referenceId ? _self.referenceId : referenceId // ignore: cast_nullable_to_non_nullable
as String?,statementDescription: freezed == statementDescription ? _self.statementDescription : statementDescription // ignore: cast_nullable_to_non_nullable
as String?,teamMemberId: freezed == teamMemberId ? _self.teamMemberId : teamMemberId // ignore: cast_nullable_to_non_nullable
as String?,tipMoney: freezed == tipMoney ? _self.tipMoney : tipMoney // ignore: cast_nullable_to_non_nullable
as Money?,
  ));
}
/// Create a copy of PaymentParameters
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MoneyCopyWith<$Res> get amountMoney {
  
  return $MoneyCopyWith<$Res>(_self.amountMoney, (value) {
    return _then(_self.copyWith(amountMoney: value));
  });
}/// Create a copy of PaymentParameters
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MoneyCopyWith<$Res>? get appFeeMoney {
    if (_self.appFeeMoney == null) {
    return null;
  }

  return $MoneyCopyWith<$Res>(_self.appFeeMoney!, (value) {
    return _then(_self.copyWith(appFeeMoney: value));
  });
}/// Create a copy of PaymentParameters
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MoneyCopyWith<$Res>? get tipMoney {
    if (_self.tipMoney == null) {
    return null;
  }

  return $MoneyCopyWith<$Res>(_self.tipMoney!, (value) {
    return _then(_self.copyWith(tipMoney: value));
  });
}
}


/// Adds pattern-matching-related methods to [PaymentParameters].
extension PaymentParametersPatterns on PaymentParameters {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( PaymentParametersCurrent value)?  $default,{TResult Function( _LegacyPaymentParameters value)?  legacy,required TResult orElse(),}){
final _that = this;
switch (_that) {
case PaymentParametersCurrent() when $default != null:
return $default(_that);case _LegacyPaymentParameters() when legacy != null:
return legacy(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( PaymentParametersCurrent value)  $default,{required TResult Function( _LegacyPaymentParameters value)  legacy,}){
final _that = this;
switch (_that) {
case PaymentParametersCurrent():
return $default(_that);case _LegacyPaymentParameters():
return legacy(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( PaymentParametersCurrent value)?  $default,{TResult? Function( _LegacyPaymentParameters value)?  legacy,}){
final _that = this;
switch (_that) {
case PaymentParametersCurrent() when $default != null:
return $default(_that);case _LegacyPaymentParameters() when legacy != null:
return legacy(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool? acceptPartialAuthorization,  bool? allowCardSurcharge,  Money amountMoney,  Money? appFeeMoney,  bool? autocomplete,  String? customerId,  DelayAction? delayAction,  num? delayDuration,  ProcessingMode processingMode,  String paymentAttemptId,  String? locationId,  String? note,  String? orderId,  String? referenceId,  String? statementDescription,  String? teamMemberId,  Money? tipMoney)?  $default,{TResult Function( bool? acceptPartialAuthorization,  bool? allowCardSurcharge,  Money amountMoney,  Money? appFeeMoney,  bool? autocomplete,  String? customerId,  DelayAction? delayAction,  num? delayDuration,  ProcessingMode processingMode,  String idempotencyKey,  String? locationId,  String? note,  String? orderId,  String? referenceId,  String? statementDescription,  String? teamMemberId,  Money? tipMoney)?  legacy,required TResult orElse(),}) {final _that = this;
switch (_that) {
case PaymentParametersCurrent() when $default != null:
return $default(_that.acceptPartialAuthorization,_that.allowCardSurcharge,_that.amountMoney,_that.appFeeMoney,_that.autocomplete,_that.customerId,_that.delayAction,_that.delayDuration,_that.processingMode,_that.paymentAttemptId,_that.locationId,_that.note,_that.orderId,_that.referenceId,_that.statementDescription,_that.teamMemberId,_that.tipMoney);case _LegacyPaymentParameters() when legacy != null:
return legacy(_that.acceptPartialAuthorization,_that.allowCardSurcharge,_that.amountMoney,_that.appFeeMoney,_that.autocomplete,_that.customerId,_that.delayAction,_that.delayDuration,_that.processingMode,_that.idempotencyKey,_that.locationId,_that.note,_that.orderId,_that.referenceId,_that.statementDescription,_that.teamMemberId,_that.tipMoney);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool? acceptPartialAuthorization,  bool? allowCardSurcharge,  Money amountMoney,  Money? appFeeMoney,  bool? autocomplete,  String? customerId,  DelayAction? delayAction,  num? delayDuration,  ProcessingMode processingMode,  String paymentAttemptId,  String? locationId,  String? note,  String? orderId,  String? referenceId,  String? statementDescription,  String? teamMemberId,  Money? tipMoney)  $default,{required TResult Function( bool? acceptPartialAuthorization,  bool? allowCardSurcharge,  Money amountMoney,  Money? appFeeMoney,  bool? autocomplete,  String? customerId,  DelayAction? delayAction,  num? delayDuration,  ProcessingMode processingMode,  String idempotencyKey,  String? locationId,  String? note,  String? orderId,  String? referenceId,  String? statementDescription,  String? teamMemberId,  Money? tipMoney)  legacy,}) {final _that = this;
switch (_that) {
case PaymentParametersCurrent():
return $default(_that.acceptPartialAuthorization,_that.allowCardSurcharge,_that.amountMoney,_that.appFeeMoney,_that.autocomplete,_that.customerId,_that.delayAction,_that.delayDuration,_that.processingMode,_that.paymentAttemptId,_that.locationId,_that.note,_that.orderId,_that.referenceId,_that.statementDescription,_that.teamMemberId,_that.tipMoney);case _LegacyPaymentParameters():
return legacy(_that.acceptPartialAuthorization,_that.allowCardSurcharge,_that.amountMoney,_that.appFeeMoney,_that.autocomplete,_that.customerId,_that.delayAction,_that.delayDuration,_that.processingMode,_that.idempotencyKey,_that.locationId,_that.note,_that.orderId,_that.referenceId,_that.statementDescription,_that.teamMemberId,_that.tipMoney);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool? acceptPartialAuthorization,  bool? allowCardSurcharge,  Money amountMoney,  Money? appFeeMoney,  bool? autocomplete,  String? customerId,  DelayAction? delayAction,  num? delayDuration,  ProcessingMode processingMode,  String paymentAttemptId,  String? locationId,  String? note,  String? orderId,  String? referenceId,  String? statementDescription,  String? teamMemberId,  Money? tipMoney)?  $default,{TResult? Function( bool? acceptPartialAuthorization,  bool? allowCardSurcharge,  Money amountMoney,  Money? appFeeMoney,  bool? autocomplete,  String? customerId,  DelayAction? delayAction,  num? delayDuration,  ProcessingMode processingMode,  String idempotencyKey,  String? locationId,  String? note,  String? orderId,  String? referenceId,  String? statementDescription,  String? teamMemberId,  Money? tipMoney)?  legacy,}) {final _that = this;
switch (_that) {
case PaymentParametersCurrent() when $default != null:
return $default(_that.acceptPartialAuthorization,_that.allowCardSurcharge,_that.amountMoney,_that.appFeeMoney,_that.autocomplete,_that.customerId,_that.delayAction,_that.delayDuration,_that.processingMode,_that.paymentAttemptId,_that.locationId,_that.note,_that.orderId,_that.referenceId,_that.statementDescription,_that.teamMemberId,_that.tipMoney);case _LegacyPaymentParameters() when legacy != null:
return legacy(_that.acceptPartialAuthorization,_that.allowCardSurcharge,_that.amountMoney,_that.appFeeMoney,_that.autocomplete,_that.customerId,_that.delayAction,_that.delayDuration,_that.processingMode,_that.idempotencyKey,_that.locationId,_that.note,_that.orderId,_that.referenceId,_that.statementDescription,_that.teamMemberId,_that.tipMoney);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class PaymentParametersCurrent with DiagnosticableTreeMixin implements PaymentParameters {
  const PaymentParametersCurrent({this.acceptPartialAuthorization, this.allowCardSurcharge, required this.amountMoney, this.appFeeMoney, this.autocomplete, this.customerId, this.delayAction, this.delayDuration, required this.processingMode, required this.paymentAttemptId, this.locationId, this.note, this.orderId, this.referenceId, this.statementDescription, this.teamMemberId, this.tipMoney, final  String? $type}): $type = $type ?? 'current';
  factory PaymentParametersCurrent.fromJson(Map<String, dynamic> json) => _$PaymentParametersCurrentFromJson(json);

@override final  bool? acceptPartialAuthorization;
@override final  bool? allowCardSurcharge;
@override final  Money amountMoney;
@override final  Money? appFeeMoney;
@override final  bool? autocomplete;
@override final  String? customerId;
@override final  DelayAction? delayAction;
@override final  num? delayDuration;
@override final  ProcessingMode processingMode;
 final  String paymentAttemptId;
@override final  String? locationId;
@override final  String? note;
@override final  String? orderId;
@override final  String? referenceId;
@override final  String? statementDescription;
@override final  String? teamMemberId;
@override final  Money? tipMoney;

@JsonKey(name: 'type')
final String $type;


/// Create a copy of PaymentParameters
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaymentParametersCurrentCopyWith<PaymentParametersCurrent> get copyWith => _$PaymentParametersCurrentCopyWithImpl<PaymentParametersCurrent>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PaymentParametersCurrentToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'PaymentParameters'))
    ..add(DiagnosticsProperty('acceptPartialAuthorization', acceptPartialAuthorization))..add(DiagnosticsProperty('allowCardSurcharge', allowCardSurcharge))..add(DiagnosticsProperty('amountMoney', amountMoney))..add(DiagnosticsProperty('appFeeMoney', appFeeMoney))..add(DiagnosticsProperty('autocomplete', autocomplete))..add(DiagnosticsProperty('customerId', customerId))..add(DiagnosticsProperty('delayAction', delayAction))..add(DiagnosticsProperty('delayDuration', delayDuration))..add(DiagnosticsProperty('processingMode', processingMode))..add(DiagnosticsProperty('paymentAttemptId', paymentAttemptId))..add(DiagnosticsProperty('locationId', locationId))..add(DiagnosticsProperty('note', note))..add(DiagnosticsProperty('orderId', orderId))..add(DiagnosticsProperty('referenceId', referenceId))..add(DiagnosticsProperty('statementDescription', statementDescription))..add(DiagnosticsProperty('teamMemberId', teamMemberId))..add(DiagnosticsProperty('tipMoney', tipMoney));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaymentParametersCurrent&&(identical(other.acceptPartialAuthorization, acceptPartialAuthorization) || other.acceptPartialAuthorization == acceptPartialAuthorization)&&(identical(other.allowCardSurcharge, allowCardSurcharge) || other.allowCardSurcharge == allowCardSurcharge)&&(identical(other.amountMoney, amountMoney) || other.amountMoney == amountMoney)&&(identical(other.appFeeMoney, appFeeMoney) || other.appFeeMoney == appFeeMoney)&&(identical(other.autocomplete, autocomplete) || other.autocomplete == autocomplete)&&(identical(other.customerId, customerId) || other.customerId == customerId)&&(identical(other.delayAction, delayAction) || other.delayAction == delayAction)&&(identical(other.delayDuration, delayDuration) || other.delayDuration == delayDuration)&&(identical(other.processingMode, processingMode) || other.processingMode == processingMode)&&(identical(other.paymentAttemptId, paymentAttemptId) || other.paymentAttemptId == paymentAttemptId)&&(identical(other.locationId, locationId) || other.locationId == locationId)&&(identical(other.note, note) || other.note == note)&&(identical(other.orderId, orderId) || other.orderId == orderId)&&(identical(other.referenceId, referenceId) || other.referenceId == referenceId)&&(identical(other.statementDescription, statementDescription) || other.statementDescription == statementDescription)&&(identical(other.teamMemberId, teamMemberId) || other.teamMemberId == teamMemberId)&&(identical(other.tipMoney, tipMoney) || other.tipMoney == tipMoney));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,acceptPartialAuthorization,allowCardSurcharge,amountMoney,appFeeMoney,autocomplete,customerId,delayAction,delayDuration,processingMode,paymentAttemptId,locationId,note,orderId,referenceId,statementDescription,teamMemberId,tipMoney);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'PaymentParameters(acceptPartialAuthorization: $acceptPartialAuthorization, allowCardSurcharge: $allowCardSurcharge, amountMoney: $amountMoney, appFeeMoney: $appFeeMoney, autocomplete: $autocomplete, customerId: $customerId, delayAction: $delayAction, delayDuration: $delayDuration, processingMode: $processingMode, paymentAttemptId: $paymentAttemptId, locationId: $locationId, note: $note, orderId: $orderId, referenceId: $referenceId, statementDescription: $statementDescription, teamMemberId: $teamMemberId, tipMoney: $tipMoney)';
}


}

/// @nodoc
abstract mixin class $PaymentParametersCurrentCopyWith<$Res> implements $PaymentParametersCopyWith<$Res> {
  factory $PaymentParametersCurrentCopyWith(PaymentParametersCurrent value, $Res Function(PaymentParametersCurrent) _then) = _$PaymentParametersCurrentCopyWithImpl;
@override @useResult
$Res call({
 bool? acceptPartialAuthorization, bool? allowCardSurcharge, Money amountMoney, Money? appFeeMoney, bool? autocomplete, String? customerId, DelayAction? delayAction, num? delayDuration, ProcessingMode processingMode, String paymentAttemptId, String? locationId, String? note, String? orderId, String? referenceId, String? statementDescription, String? teamMemberId, Money? tipMoney
});


@override $MoneyCopyWith<$Res> get amountMoney;@override $MoneyCopyWith<$Res>? get appFeeMoney;@override $MoneyCopyWith<$Res>? get tipMoney;

}
/// @nodoc
class _$PaymentParametersCurrentCopyWithImpl<$Res>
    implements $PaymentParametersCurrentCopyWith<$Res> {
  _$PaymentParametersCurrentCopyWithImpl(this._self, this._then);

  final PaymentParametersCurrent _self;
  final $Res Function(PaymentParametersCurrent) _then;

/// Create a copy of PaymentParameters
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? acceptPartialAuthorization = freezed,Object? allowCardSurcharge = freezed,Object? amountMoney = null,Object? appFeeMoney = freezed,Object? autocomplete = freezed,Object? customerId = freezed,Object? delayAction = freezed,Object? delayDuration = freezed,Object? processingMode = null,Object? paymentAttemptId = null,Object? locationId = freezed,Object? note = freezed,Object? orderId = freezed,Object? referenceId = freezed,Object? statementDescription = freezed,Object? teamMemberId = freezed,Object? tipMoney = freezed,}) {
  return _then(PaymentParametersCurrent(
acceptPartialAuthorization: freezed == acceptPartialAuthorization ? _self.acceptPartialAuthorization : acceptPartialAuthorization // ignore: cast_nullable_to_non_nullable
as bool?,allowCardSurcharge: freezed == allowCardSurcharge ? _self.allowCardSurcharge : allowCardSurcharge // ignore: cast_nullable_to_non_nullable
as bool?,amountMoney: null == amountMoney ? _self.amountMoney : amountMoney // ignore: cast_nullable_to_non_nullable
as Money,appFeeMoney: freezed == appFeeMoney ? _self.appFeeMoney : appFeeMoney // ignore: cast_nullable_to_non_nullable
as Money?,autocomplete: freezed == autocomplete ? _self.autocomplete : autocomplete // ignore: cast_nullable_to_non_nullable
as bool?,customerId: freezed == customerId ? _self.customerId : customerId // ignore: cast_nullable_to_non_nullable
as String?,delayAction: freezed == delayAction ? _self.delayAction : delayAction // ignore: cast_nullable_to_non_nullable
as DelayAction?,delayDuration: freezed == delayDuration ? _self.delayDuration : delayDuration // ignore: cast_nullable_to_non_nullable
as num?,processingMode: null == processingMode ? _self.processingMode : processingMode // ignore: cast_nullable_to_non_nullable
as ProcessingMode,paymentAttemptId: null == paymentAttemptId ? _self.paymentAttemptId : paymentAttemptId // ignore: cast_nullable_to_non_nullable
as String,locationId: freezed == locationId ? _self.locationId : locationId // ignore: cast_nullable_to_non_nullable
as String?,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,orderId: freezed == orderId ? _self.orderId : orderId // ignore: cast_nullable_to_non_nullable
as String?,referenceId: freezed == referenceId ? _self.referenceId : referenceId // ignore: cast_nullable_to_non_nullable
as String?,statementDescription: freezed == statementDescription ? _self.statementDescription : statementDescription // ignore: cast_nullable_to_non_nullable
as String?,teamMemberId: freezed == teamMemberId ? _self.teamMemberId : teamMemberId // ignore: cast_nullable_to_non_nullable
as String?,tipMoney: freezed == tipMoney ? _self.tipMoney : tipMoney // ignore: cast_nullable_to_non_nullable
as Money?,
  ));
}

/// Create a copy of PaymentParameters
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MoneyCopyWith<$Res> get amountMoney {
  
  return $MoneyCopyWith<$Res>(_self.amountMoney, (value) {
    return _then(_self.copyWith(amountMoney: value));
  });
}/// Create a copy of PaymentParameters
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MoneyCopyWith<$Res>? get appFeeMoney {
    if (_self.appFeeMoney == null) {
    return null;
  }

  return $MoneyCopyWith<$Res>(_self.appFeeMoney!, (value) {
    return _then(_self.copyWith(appFeeMoney: value));
  });
}/// Create a copy of PaymentParameters
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MoneyCopyWith<$Res>? get tipMoney {
    if (_self.tipMoney == null) {
    return null;
  }

  return $MoneyCopyWith<$Res>(_self.tipMoney!, (value) {
    return _then(_self.copyWith(tipMoney: value));
  });
}
}

/// @nodoc
@JsonSerializable()
@Deprecated('Use the constructor with paymentAttemptId instead.')
class _LegacyPaymentParameters with DiagnosticableTreeMixin implements PaymentParameters {
  const _LegacyPaymentParameters({this.acceptPartialAuthorization, this.allowCardSurcharge, required this.amountMoney, this.appFeeMoney, this.autocomplete, this.customerId, this.delayAction, this.delayDuration, required this.processingMode, required this.idempotencyKey, this.locationId, this.note, this.orderId, this.referenceId, this.statementDescription, this.teamMemberId, this.tipMoney, final  String? $type}): $type = $type ?? 'legacy';
  factory _LegacyPaymentParameters.fromJson(Map<String, dynamic> json) => _$LegacyPaymentParametersFromJson(json);

@override final  bool? acceptPartialAuthorization;
@override final  bool? allowCardSurcharge;
@override final  Money amountMoney;
@override final  Money? appFeeMoney;
@override final  bool? autocomplete;
@override final  String? customerId;
@override final  DelayAction? delayAction;
@override final  num? delayDuration;
@override final  ProcessingMode processingMode;
 final  String idempotencyKey;
@override final  String? locationId;
@override final  String? note;
@override final  String? orderId;
@override final  String? referenceId;
@override final  String? statementDescription;
@override final  String? teamMemberId;
@override final  Money? tipMoney;

@JsonKey(name: 'type')
final String $type;


/// Create a copy of PaymentParameters
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LegacyPaymentParametersCopyWith<_LegacyPaymentParameters> get copyWith => __$LegacyPaymentParametersCopyWithImpl<_LegacyPaymentParameters>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LegacyPaymentParametersToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'PaymentParameters.legacy'))
    ..add(DiagnosticsProperty('acceptPartialAuthorization', acceptPartialAuthorization))..add(DiagnosticsProperty('allowCardSurcharge', allowCardSurcharge))..add(DiagnosticsProperty('amountMoney', amountMoney))..add(DiagnosticsProperty('appFeeMoney', appFeeMoney))..add(DiagnosticsProperty('autocomplete', autocomplete))..add(DiagnosticsProperty('customerId', customerId))..add(DiagnosticsProperty('delayAction', delayAction))..add(DiagnosticsProperty('delayDuration', delayDuration))..add(DiagnosticsProperty('processingMode', processingMode))..add(DiagnosticsProperty('idempotencyKey', idempotencyKey))..add(DiagnosticsProperty('locationId', locationId))..add(DiagnosticsProperty('note', note))..add(DiagnosticsProperty('orderId', orderId))..add(DiagnosticsProperty('referenceId', referenceId))..add(DiagnosticsProperty('statementDescription', statementDescription))..add(DiagnosticsProperty('teamMemberId', teamMemberId))..add(DiagnosticsProperty('tipMoney', tipMoney));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LegacyPaymentParameters&&(identical(other.acceptPartialAuthorization, acceptPartialAuthorization) || other.acceptPartialAuthorization == acceptPartialAuthorization)&&(identical(other.allowCardSurcharge, allowCardSurcharge) || other.allowCardSurcharge == allowCardSurcharge)&&(identical(other.amountMoney, amountMoney) || other.amountMoney == amountMoney)&&(identical(other.appFeeMoney, appFeeMoney) || other.appFeeMoney == appFeeMoney)&&(identical(other.autocomplete, autocomplete) || other.autocomplete == autocomplete)&&(identical(other.customerId, customerId) || other.customerId == customerId)&&(identical(other.delayAction, delayAction) || other.delayAction == delayAction)&&(identical(other.delayDuration, delayDuration) || other.delayDuration == delayDuration)&&(identical(other.processingMode, processingMode) || other.processingMode == processingMode)&&(identical(other.idempotencyKey, idempotencyKey) || other.idempotencyKey == idempotencyKey)&&(identical(other.locationId, locationId) || other.locationId == locationId)&&(identical(other.note, note) || other.note == note)&&(identical(other.orderId, orderId) || other.orderId == orderId)&&(identical(other.referenceId, referenceId) || other.referenceId == referenceId)&&(identical(other.statementDescription, statementDescription) || other.statementDescription == statementDescription)&&(identical(other.teamMemberId, teamMemberId) || other.teamMemberId == teamMemberId)&&(identical(other.tipMoney, tipMoney) || other.tipMoney == tipMoney));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,acceptPartialAuthorization,allowCardSurcharge,amountMoney,appFeeMoney,autocomplete,customerId,delayAction,delayDuration,processingMode,idempotencyKey,locationId,note,orderId,referenceId,statementDescription,teamMemberId,tipMoney);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'PaymentParameters.legacy(acceptPartialAuthorization: $acceptPartialAuthorization, allowCardSurcharge: $allowCardSurcharge, amountMoney: $amountMoney, appFeeMoney: $appFeeMoney, autocomplete: $autocomplete, customerId: $customerId, delayAction: $delayAction, delayDuration: $delayDuration, processingMode: $processingMode, idempotencyKey: $idempotencyKey, locationId: $locationId, note: $note, orderId: $orderId, referenceId: $referenceId, statementDescription: $statementDescription, teamMemberId: $teamMemberId, tipMoney: $tipMoney)';
}


}

/// @nodoc
abstract mixin class _$LegacyPaymentParametersCopyWith<$Res> implements $PaymentParametersCopyWith<$Res> {
  factory _$LegacyPaymentParametersCopyWith(_LegacyPaymentParameters value, $Res Function(_LegacyPaymentParameters) _then) = __$LegacyPaymentParametersCopyWithImpl;
@override @useResult
$Res call({
 bool? acceptPartialAuthorization, bool? allowCardSurcharge, Money amountMoney, Money? appFeeMoney, bool? autocomplete, String? customerId, DelayAction? delayAction, num? delayDuration, ProcessingMode processingMode, String idempotencyKey, String? locationId, String? note, String? orderId, String? referenceId, String? statementDescription, String? teamMemberId, Money? tipMoney
});


@override $MoneyCopyWith<$Res> get amountMoney;@override $MoneyCopyWith<$Res>? get appFeeMoney;@override $MoneyCopyWith<$Res>? get tipMoney;

}
/// @nodoc
class __$LegacyPaymentParametersCopyWithImpl<$Res>
    implements _$LegacyPaymentParametersCopyWith<$Res> {
  __$LegacyPaymentParametersCopyWithImpl(this._self, this._then);

  final _LegacyPaymentParameters _self;
  final $Res Function(_LegacyPaymentParameters) _then;

/// Create a copy of PaymentParameters
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? acceptPartialAuthorization = freezed,Object? allowCardSurcharge = freezed,Object? amountMoney = null,Object? appFeeMoney = freezed,Object? autocomplete = freezed,Object? customerId = freezed,Object? delayAction = freezed,Object? delayDuration = freezed,Object? processingMode = null,Object? idempotencyKey = null,Object? locationId = freezed,Object? note = freezed,Object? orderId = freezed,Object? referenceId = freezed,Object? statementDescription = freezed,Object? teamMemberId = freezed,Object? tipMoney = freezed,}) {
  return _then(_LegacyPaymentParameters(
acceptPartialAuthorization: freezed == acceptPartialAuthorization ? _self.acceptPartialAuthorization : acceptPartialAuthorization // ignore: cast_nullable_to_non_nullable
as bool?,allowCardSurcharge: freezed == allowCardSurcharge ? _self.allowCardSurcharge : allowCardSurcharge // ignore: cast_nullable_to_non_nullable
as bool?,amountMoney: null == amountMoney ? _self.amountMoney : amountMoney // ignore: cast_nullable_to_non_nullable
as Money,appFeeMoney: freezed == appFeeMoney ? _self.appFeeMoney : appFeeMoney // ignore: cast_nullable_to_non_nullable
as Money?,autocomplete: freezed == autocomplete ? _self.autocomplete : autocomplete // ignore: cast_nullable_to_non_nullable
as bool?,customerId: freezed == customerId ? _self.customerId : customerId // ignore: cast_nullable_to_non_nullable
as String?,delayAction: freezed == delayAction ? _self.delayAction : delayAction // ignore: cast_nullable_to_non_nullable
as DelayAction?,delayDuration: freezed == delayDuration ? _self.delayDuration : delayDuration // ignore: cast_nullable_to_non_nullable
as num?,processingMode: null == processingMode ? _self.processingMode : processingMode // ignore: cast_nullable_to_non_nullable
as ProcessingMode,idempotencyKey: null == idempotencyKey ? _self.idempotencyKey : idempotencyKey // ignore: cast_nullable_to_non_nullable
as String,locationId: freezed == locationId ? _self.locationId : locationId // ignore: cast_nullable_to_non_nullable
as String?,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,orderId: freezed == orderId ? _self.orderId : orderId // ignore: cast_nullable_to_non_nullable
as String?,referenceId: freezed == referenceId ? _self.referenceId : referenceId // ignore: cast_nullable_to_non_nullable
as String?,statementDescription: freezed == statementDescription ? _self.statementDescription : statementDescription // ignore: cast_nullable_to_non_nullable
as String?,teamMemberId: freezed == teamMemberId ? _self.teamMemberId : teamMemberId // ignore: cast_nullable_to_non_nullable
as String?,tipMoney: freezed == tipMoney ? _self.tipMoney : tipMoney // ignore: cast_nullable_to_non_nullable
as Money?,
  ));
}

/// Create a copy of PaymentParameters
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MoneyCopyWith<$Res> get amountMoney {
  
  return $MoneyCopyWith<$Res>(_self.amountMoney, (value) {
    return _then(_self.copyWith(amountMoney: value));
  });
}/// Create a copy of PaymentParameters
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MoneyCopyWith<$Res>? get appFeeMoney {
    if (_self.appFeeMoney == null) {
    return null;
  }

  return $MoneyCopyWith<$Res>(_self.appFeeMoney!, (value) {
    return _then(_self.copyWith(appFeeMoney: value));
  });
}/// Create a copy of PaymentParameters
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MoneyCopyWith<$Res>? get tipMoney {
    if (_self.tipMoney == null) {
    return null;
  }

  return $MoneyCopyWith<$Res>(_self.tipMoney!, (value) {
    return _then(_self.copyWith(tipMoney: value));
  });
}
}


/// @nodoc
mixin _$OfflineCardPaymentDetails implements DiagnosticableTreeMixin {

 String? get applicationIdentifier; String? get applicationName; OfflineCard? get card;@JsonKey(unknownEnumValue: EntryMethod.unknown) EntryMethod get entryMethod;
/// Create a copy of OfflineCardPaymentDetails
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OfflineCardPaymentDetailsCopyWith<OfflineCardPaymentDetails> get copyWith => _$OfflineCardPaymentDetailsCopyWithImpl<OfflineCardPaymentDetails>(this as OfflineCardPaymentDetails, _$identity);

  /// Serializes this OfflineCardPaymentDetails to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'OfflineCardPaymentDetails'))
    ..add(DiagnosticsProperty('applicationIdentifier', applicationIdentifier))..add(DiagnosticsProperty('applicationName', applicationName))..add(DiagnosticsProperty('card', card))..add(DiagnosticsProperty('entryMethod', entryMethod));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OfflineCardPaymentDetails&&(identical(other.applicationIdentifier, applicationIdentifier) || other.applicationIdentifier == applicationIdentifier)&&(identical(other.applicationName, applicationName) || other.applicationName == applicationName)&&(identical(other.card, card) || other.card == card)&&(identical(other.entryMethod, entryMethod) || other.entryMethod == entryMethod));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,applicationIdentifier,applicationName,card,entryMethod);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'OfflineCardPaymentDetails(applicationIdentifier: $applicationIdentifier, applicationName: $applicationName, card: $card, entryMethod: $entryMethod)';
}


}

/// @nodoc
abstract mixin class $OfflineCardPaymentDetailsCopyWith<$Res>  {
  factory $OfflineCardPaymentDetailsCopyWith(OfflineCardPaymentDetails value, $Res Function(OfflineCardPaymentDetails) _then) = _$OfflineCardPaymentDetailsCopyWithImpl;
@useResult
$Res call({
 String? applicationIdentifier, String? applicationName, OfflineCard? card,@JsonKey(unknownEnumValue: EntryMethod.unknown) EntryMethod entryMethod
});


$OfflineCardCopyWith<$Res>? get card;

}
/// @nodoc
class _$OfflineCardPaymentDetailsCopyWithImpl<$Res>
    implements $OfflineCardPaymentDetailsCopyWith<$Res> {
  _$OfflineCardPaymentDetailsCopyWithImpl(this._self, this._then);

  final OfflineCardPaymentDetails _self;
  final $Res Function(OfflineCardPaymentDetails) _then;

/// Create a copy of OfflineCardPaymentDetails
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? applicationIdentifier = freezed,Object? applicationName = freezed,Object? card = freezed,Object? entryMethod = null,}) {
  return _then(_self.copyWith(
applicationIdentifier: freezed == applicationIdentifier ? _self.applicationIdentifier : applicationIdentifier // ignore: cast_nullable_to_non_nullable
as String?,applicationName: freezed == applicationName ? _self.applicationName : applicationName // ignore: cast_nullable_to_non_nullable
as String?,card: freezed == card ? _self.card : card // ignore: cast_nullable_to_non_nullable
as OfflineCard?,entryMethod: null == entryMethod ? _self.entryMethod : entryMethod // ignore: cast_nullable_to_non_nullable
as EntryMethod,
  ));
}
/// Create a copy of OfflineCardPaymentDetails
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OfflineCardCopyWith<$Res>? get card {
    if (_self.card == null) {
    return null;
  }

  return $OfflineCardCopyWith<$Res>(_self.card!, (value) {
    return _then(_self.copyWith(card: value));
  });
}
}


/// Adds pattern-matching-related methods to [OfflineCardPaymentDetails].
extension OfflineCardPaymentDetailsPatterns on OfflineCardPaymentDetails {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OfflineCardPaymentDetails value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OfflineCardPaymentDetails() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OfflineCardPaymentDetails value)  $default,){
final _that = this;
switch (_that) {
case _OfflineCardPaymentDetails():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OfflineCardPaymentDetails value)?  $default,){
final _that = this;
switch (_that) {
case _OfflineCardPaymentDetails() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? applicationIdentifier,  String? applicationName,  OfflineCard? card, @JsonKey(unknownEnumValue: EntryMethod.unknown)  EntryMethod entryMethod)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OfflineCardPaymentDetails() when $default != null:
return $default(_that.applicationIdentifier,_that.applicationName,_that.card,_that.entryMethod);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? applicationIdentifier,  String? applicationName,  OfflineCard? card, @JsonKey(unknownEnumValue: EntryMethod.unknown)  EntryMethod entryMethod)  $default,) {final _that = this;
switch (_that) {
case _OfflineCardPaymentDetails():
return $default(_that.applicationIdentifier,_that.applicationName,_that.card,_that.entryMethod);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? applicationIdentifier,  String? applicationName,  OfflineCard? card, @JsonKey(unknownEnumValue: EntryMethod.unknown)  EntryMethod entryMethod)?  $default,) {final _that = this;
switch (_that) {
case _OfflineCardPaymentDetails() when $default != null:
return $default(_that.applicationIdentifier,_that.applicationName,_that.card,_that.entryMethod);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OfflineCardPaymentDetails with DiagnosticableTreeMixin implements OfflineCardPaymentDetails {
  const _OfflineCardPaymentDetails({this.applicationIdentifier, this.applicationName, this.card, @JsonKey(unknownEnumValue: EntryMethod.unknown) required this.entryMethod});
  factory _OfflineCardPaymentDetails.fromJson(Map<String, dynamic> json) => _$OfflineCardPaymentDetailsFromJson(json);

@override final  String? applicationIdentifier;
@override final  String? applicationName;
@override final  OfflineCard? card;
@override@JsonKey(unknownEnumValue: EntryMethod.unknown) final  EntryMethod entryMethod;

/// Create a copy of OfflineCardPaymentDetails
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OfflineCardPaymentDetailsCopyWith<_OfflineCardPaymentDetails> get copyWith => __$OfflineCardPaymentDetailsCopyWithImpl<_OfflineCardPaymentDetails>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OfflineCardPaymentDetailsToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'OfflineCardPaymentDetails'))
    ..add(DiagnosticsProperty('applicationIdentifier', applicationIdentifier))..add(DiagnosticsProperty('applicationName', applicationName))..add(DiagnosticsProperty('card', card))..add(DiagnosticsProperty('entryMethod', entryMethod));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OfflineCardPaymentDetails&&(identical(other.applicationIdentifier, applicationIdentifier) || other.applicationIdentifier == applicationIdentifier)&&(identical(other.applicationName, applicationName) || other.applicationName == applicationName)&&(identical(other.card, card) || other.card == card)&&(identical(other.entryMethod, entryMethod) || other.entryMethod == entryMethod));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,applicationIdentifier,applicationName,card,entryMethod);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'OfflineCardPaymentDetails(applicationIdentifier: $applicationIdentifier, applicationName: $applicationName, card: $card, entryMethod: $entryMethod)';
}


}

/// @nodoc
abstract mixin class _$OfflineCardPaymentDetailsCopyWith<$Res> implements $OfflineCardPaymentDetailsCopyWith<$Res> {
  factory _$OfflineCardPaymentDetailsCopyWith(_OfflineCardPaymentDetails value, $Res Function(_OfflineCardPaymentDetails) _then) = __$OfflineCardPaymentDetailsCopyWithImpl;
@override @useResult
$Res call({
 String? applicationIdentifier, String? applicationName, OfflineCard? card,@JsonKey(unknownEnumValue: EntryMethod.unknown) EntryMethod entryMethod
});


@override $OfflineCardCopyWith<$Res>? get card;

}
/// @nodoc
class __$OfflineCardPaymentDetailsCopyWithImpl<$Res>
    implements _$OfflineCardPaymentDetailsCopyWith<$Res> {
  __$OfflineCardPaymentDetailsCopyWithImpl(this._self, this._then);

  final _OfflineCardPaymentDetails _self;
  final $Res Function(_OfflineCardPaymentDetails) _then;

/// Create a copy of OfflineCardPaymentDetails
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? applicationIdentifier = freezed,Object? applicationName = freezed,Object? card = freezed,Object? entryMethod = null,}) {
  return _then(_OfflineCardPaymentDetails(
applicationIdentifier: freezed == applicationIdentifier ? _self.applicationIdentifier : applicationIdentifier // ignore: cast_nullable_to_non_nullable
as String?,applicationName: freezed == applicationName ? _self.applicationName : applicationName // ignore: cast_nullable_to_non_nullable
as String?,card: freezed == card ? _self.card : card // ignore: cast_nullable_to_non_nullable
as OfflineCard?,entryMethod: null == entryMethod ? _self.entryMethod : entryMethod // ignore: cast_nullable_to_non_nullable
as EntryMethod,
  ));
}

/// Create a copy of OfflineCardPaymentDetails
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OfflineCardCopyWith<$Res>? get card {
    if (_self.card == null) {
    return null;
  }

  return $OfflineCardCopyWith<$Res>(_self.card!, (value) {
    return _then(_self.copyWith(card: value));
  });
}
}


/// @nodoc
mixin _$ReaderChangedEvent implements DiagnosticableTreeMixin {

 ReaderInfo get reader; ReaderChange get change;
/// Create a copy of ReaderChangedEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReaderChangedEventCopyWith<ReaderChangedEvent> get copyWith => _$ReaderChangedEventCopyWithImpl<ReaderChangedEvent>(this as ReaderChangedEvent, _$identity);

  /// Serializes this ReaderChangedEvent to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ReaderChangedEvent'))
    ..add(DiagnosticsProperty('reader', reader))..add(DiagnosticsProperty('change', change));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReaderChangedEvent&&(identical(other.reader, reader) || other.reader == reader)&&(identical(other.change, change) || other.change == change));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,reader,change);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ReaderChangedEvent(reader: $reader, change: $change)';
}


}

/// @nodoc
abstract mixin class $ReaderChangedEventCopyWith<$Res>  {
  factory $ReaderChangedEventCopyWith(ReaderChangedEvent value, $Res Function(ReaderChangedEvent) _then) = _$ReaderChangedEventCopyWithImpl;
@useResult
$Res call({
 ReaderInfo reader, ReaderChange change
});


$ReaderInfoCopyWith<$Res> get reader;

}
/// @nodoc
class _$ReaderChangedEventCopyWithImpl<$Res>
    implements $ReaderChangedEventCopyWith<$Res> {
  _$ReaderChangedEventCopyWithImpl(this._self, this._then);

  final ReaderChangedEvent _self;
  final $Res Function(ReaderChangedEvent) _then;

/// Create a copy of ReaderChangedEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? reader = null,Object? change = null,}) {
  return _then(_self.copyWith(
reader: null == reader ? _self.reader : reader // ignore: cast_nullable_to_non_nullable
as ReaderInfo,change: null == change ? _self.change : change // ignore: cast_nullable_to_non_nullable
as ReaderChange,
  ));
}
/// Create a copy of ReaderChangedEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReaderInfoCopyWith<$Res> get reader {
  
  return $ReaderInfoCopyWith<$Res>(_self.reader, (value) {
    return _then(_self.copyWith(reader: value));
  });
}
}


/// Adds pattern-matching-related methods to [ReaderChangedEvent].
extension ReaderChangedEventPatterns on ReaderChangedEvent {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReaderChangedEvent value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReaderChangedEvent() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReaderChangedEvent value)  $default,){
final _that = this;
switch (_that) {
case _ReaderChangedEvent():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReaderChangedEvent value)?  $default,){
final _that = this;
switch (_that) {
case _ReaderChangedEvent() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( ReaderInfo reader,  ReaderChange change)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ReaderChangedEvent() when $default != null:
return $default(_that.reader,_that.change);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( ReaderInfo reader,  ReaderChange change)  $default,) {final _that = this;
switch (_that) {
case _ReaderChangedEvent():
return $default(_that.reader,_that.change);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( ReaderInfo reader,  ReaderChange change)?  $default,) {final _that = this;
switch (_that) {
case _ReaderChangedEvent() when $default != null:
return $default(_that.reader,_that.change);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ReaderChangedEvent with DiagnosticableTreeMixin implements ReaderChangedEvent {
  const _ReaderChangedEvent({required this.reader, required this.change});
  factory _ReaderChangedEvent.fromJson(Map<String, dynamic> json) => _$ReaderChangedEventFromJson(json);

@override final  ReaderInfo reader;
@override final  ReaderChange change;

/// Create a copy of ReaderChangedEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReaderChangedEventCopyWith<_ReaderChangedEvent> get copyWith => __$ReaderChangedEventCopyWithImpl<_ReaderChangedEvent>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ReaderChangedEventToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ReaderChangedEvent'))
    ..add(DiagnosticsProperty('reader', reader))..add(DiagnosticsProperty('change', change));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReaderChangedEvent&&(identical(other.reader, reader) || other.reader == reader)&&(identical(other.change, change) || other.change == change));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,reader,change);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ReaderChangedEvent(reader: $reader, change: $change)';
}


}

/// @nodoc
abstract mixin class _$ReaderChangedEventCopyWith<$Res> implements $ReaderChangedEventCopyWith<$Res> {
  factory _$ReaderChangedEventCopyWith(_ReaderChangedEvent value, $Res Function(_ReaderChangedEvent) _then) = __$ReaderChangedEventCopyWithImpl;
@override @useResult
$Res call({
 ReaderInfo reader, ReaderChange change
});


@override $ReaderInfoCopyWith<$Res> get reader;

}
/// @nodoc
class __$ReaderChangedEventCopyWithImpl<$Res>
    implements _$ReaderChangedEventCopyWith<$Res> {
  __$ReaderChangedEventCopyWithImpl(this._self, this._then);

  final _ReaderChangedEvent _self;
  final $Res Function(_ReaderChangedEvent) _then;

/// Create a copy of ReaderChangedEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? reader = null,Object? change = null,}) {
  return _then(_ReaderChangedEvent(
reader: null == reader ? _self.reader : reader // ignore: cast_nullable_to_non_nullable
as ReaderInfo,change: null == change ? _self.change : change // ignore: cast_nullable_to_non_nullable
as ReaderChange,
  ));
}

/// Create a copy of ReaderChangedEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReaderInfoCopyWith<$Res> get reader {
  
  return $ReaderInfoCopyWith<$Res>(_self.reader, (value) {
    return _then(_self.copyWith(reader: value));
  });
}
}


/// @nodoc
mixin _$TimeOfDay implements DiagnosticableTreeMixin {

 int get hour; int get minute;
/// Create a copy of TimeOfDay
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TimeOfDayCopyWith<TimeOfDay> get copyWith => _$TimeOfDayCopyWithImpl<TimeOfDay>(this as TimeOfDay, _$identity);

  /// Serializes this TimeOfDay to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'TimeOfDay'))
    ..add(DiagnosticsProperty('hour', hour))..add(DiagnosticsProperty('minute', minute));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TimeOfDay&&(identical(other.hour, hour) || other.hour == hour)&&(identical(other.minute, minute) || other.minute == minute));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,hour,minute);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'TimeOfDay(hour: $hour, minute: $minute)';
}


}

/// @nodoc
abstract mixin class $TimeOfDayCopyWith<$Res>  {
  factory $TimeOfDayCopyWith(TimeOfDay value, $Res Function(TimeOfDay) _then) = _$TimeOfDayCopyWithImpl;
@useResult
$Res call({
 int hour, int minute
});




}
/// @nodoc
class _$TimeOfDayCopyWithImpl<$Res>
    implements $TimeOfDayCopyWith<$Res> {
  _$TimeOfDayCopyWithImpl(this._self, this._then);

  final TimeOfDay _self;
  final $Res Function(TimeOfDay) _then;

/// Create a copy of TimeOfDay
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? hour = null,Object? minute = null,}) {
  return _then(_self.copyWith(
hour: null == hour ? _self.hour : hour // ignore: cast_nullable_to_non_nullable
as int,minute: null == minute ? _self.minute : minute // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [TimeOfDay].
extension TimeOfDayPatterns on TimeOfDay {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TimeOfDay value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TimeOfDay() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TimeOfDay value)  $default,){
final _that = this;
switch (_that) {
case _TimeOfDay():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TimeOfDay value)?  $default,){
final _that = this;
switch (_that) {
case _TimeOfDay() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int hour,  int minute)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TimeOfDay() when $default != null:
return $default(_that.hour,_that.minute);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int hour,  int minute)  $default,) {final _that = this;
switch (_that) {
case _TimeOfDay():
return $default(_that.hour,_that.minute);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int hour,  int minute)?  $default,) {final _that = this;
switch (_that) {
case _TimeOfDay() when $default != null:
return $default(_that.hour,_that.minute);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TimeOfDay with DiagnosticableTreeMixin implements TimeOfDay {
  const _TimeOfDay({required this.hour, required this.minute});
  factory _TimeOfDay.fromJson(Map<String, dynamic> json) => _$TimeOfDayFromJson(json);

@override final  int hour;
@override final  int minute;

/// Create a copy of TimeOfDay
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TimeOfDayCopyWith<_TimeOfDay> get copyWith => __$TimeOfDayCopyWithImpl<_TimeOfDay>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TimeOfDayToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'TimeOfDay'))
    ..add(DiagnosticsProperty('hour', hour))..add(DiagnosticsProperty('minute', minute));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TimeOfDay&&(identical(other.hour, hour) || other.hour == hour)&&(identical(other.minute, minute) || other.minute == minute));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,hour,minute);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'TimeOfDay(hour: $hour, minute: $minute)';
}


}

/// @nodoc
abstract mixin class _$TimeOfDayCopyWith<$Res> implements $TimeOfDayCopyWith<$Res> {
  factory _$TimeOfDayCopyWith(_TimeOfDay value, $Res Function(_TimeOfDay) _then) = __$TimeOfDayCopyWithImpl;
@override @useResult
$Res call({
 int hour, int minute
});




}
/// @nodoc
class __$TimeOfDayCopyWithImpl<$Res>
    implements _$TimeOfDayCopyWith<$Res> {
  __$TimeOfDayCopyWithImpl(this._self, this._then);

  final _TimeOfDay _self;
  final $Res Function(_TimeOfDay) _then;

/// Create a copy of TimeOfDay
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? hour = null,Object? minute = null,}) {
  return _then(_TimeOfDay(
hour: null == hour ? _self.hour : hour // ignore: cast_nullable_to_non_nullable
as int,minute: null == minute ? _self.minute : minute // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$ReaderSettings implements DiagnosticableTreeMixin {

 bool get isReducedChargingModeEnabled; TimeOfDay? get preferredFirmwareUpdateTime;
/// Create a copy of ReaderSettings
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReaderSettingsCopyWith<ReaderSettings> get copyWith => _$ReaderSettingsCopyWithImpl<ReaderSettings>(this as ReaderSettings, _$identity);

  /// Serializes this ReaderSettings to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ReaderSettings'))
    ..add(DiagnosticsProperty('isReducedChargingModeEnabled', isReducedChargingModeEnabled))..add(DiagnosticsProperty('preferredFirmwareUpdateTime', preferredFirmwareUpdateTime));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReaderSettings&&(identical(other.isReducedChargingModeEnabled, isReducedChargingModeEnabled) || other.isReducedChargingModeEnabled == isReducedChargingModeEnabled)&&(identical(other.preferredFirmwareUpdateTime, preferredFirmwareUpdateTime) || other.preferredFirmwareUpdateTime == preferredFirmwareUpdateTime));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,isReducedChargingModeEnabled,preferredFirmwareUpdateTime);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ReaderSettings(isReducedChargingModeEnabled: $isReducedChargingModeEnabled, preferredFirmwareUpdateTime: $preferredFirmwareUpdateTime)';
}


}

/// @nodoc
abstract mixin class $ReaderSettingsCopyWith<$Res>  {
  factory $ReaderSettingsCopyWith(ReaderSettings value, $Res Function(ReaderSettings) _then) = _$ReaderSettingsCopyWithImpl;
@useResult
$Res call({
 bool isReducedChargingModeEnabled, TimeOfDay? preferredFirmwareUpdateTime
});


$TimeOfDayCopyWith<$Res>? get preferredFirmwareUpdateTime;

}
/// @nodoc
class _$ReaderSettingsCopyWithImpl<$Res>
    implements $ReaderSettingsCopyWith<$Res> {
  _$ReaderSettingsCopyWithImpl(this._self, this._then);

  final ReaderSettings _self;
  final $Res Function(ReaderSettings) _then;

/// Create a copy of ReaderSettings
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isReducedChargingModeEnabled = null,Object? preferredFirmwareUpdateTime = freezed,}) {
  return _then(_self.copyWith(
isReducedChargingModeEnabled: null == isReducedChargingModeEnabled ? _self.isReducedChargingModeEnabled : isReducedChargingModeEnabled // ignore: cast_nullable_to_non_nullable
as bool,preferredFirmwareUpdateTime: freezed == preferredFirmwareUpdateTime ? _self.preferredFirmwareUpdateTime : preferredFirmwareUpdateTime // ignore: cast_nullable_to_non_nullable
as TimeOfDay?,
  ));
}
/// Create a copy of ReaderSettings
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TimeOfDayCopyWith<$Res>? get preferredFirmwareUpdateTime {
    if (_self.preferredFirmwareUpdateTime == null) {
    return null;
  }

  return $TimeOfDayCopyWith<$Res>(_self.preferredFirmwareUpdateTime!, (value) {
    return _then(_self.copyWith(preferredFirmwareUpdateTime: value));
  });
}
}


/// Adds pattern-matching-related methods to [ReaderSettings].
extension ReaderSettingsPatterns on ReaderSettings {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReaderSettings value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReaderSettings() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReaderSettings value)  $default,){
final _that = this;
switch (_that) {
case _ReaderSettings():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReaderSettings value)?  $default,){
final _that = this;
switch (_that) {
case _ReaderSettings() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isReducedChargingModeEnabled,  TimeOfDay? preferredFirmwareUpdateTime)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ReaderSettings() when $default != null:
return $default(_that.isReducedChargingModeEnabled,_that.preferredFirmwareUpdateTime);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isReducedChargingModeEnabled,  TimeOfDay? preferredFirmwareUpdateTime)  $default,) {final _that = this;
switch (_that) {
case _ReaderSettings():
return $default(_that.isReducedChargingModeEnabled,_that.preferredFirmwareUpdateTime);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isReducedChargingModeEnabled,  TimeOfDay? preferredFirmwareUpdateTime)?  $default,) {final _that = this;
switch (_that) {
case _ReaderSettings() when $default != null:
return $default(_that.isReducedChargingModeEnabled,_that.preferredFirmwareUpdateTime);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ReaderSettings with DiagnosticableTreeMixin implements ReaderSettings {
  const _ReaderSettings({required this.isReducedChargingModeEnabled, this.preferredFirmwareUpdateTime});
  factory _ReaderSettings.fromJson(Map<String, dynamic> json) => _$ReaderSettingsFromJson(json);

@override final  bool isReducedChargingModeEnabled;
@override final  TimeOfDay? preferredFirmwareUpdateTime;

/// Create a copy of ReaderSettings
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReaderSettingsCopyWith<_ReaderSettings> get copyWith => __$ReaderSettingsCopyWithImpl<_ReaderSettings>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ReaderSettingsToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ReaderSettings'))
    ..add(DiagnosticsProperty('isReducedChargingModeEnabled', isReducedChargingModeEnabled))..add(DiagnosticsProperty('preferredFirmwareUpdateTime', preferredFirmwareUpdateTime));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReaderSettings&&(identical(other.isReducedChargingModeEnabled, isReducedChargingModeEnabled) || other.isReducedChargingModeEnabled == isReducedChargingModeEnabled)&&(identical(other.preferredFirmwareUpdateTime, preferredFirmwareUpdateTime) || other.preferredFirmwareUpdateTime == preferredFirmwareUpdateTime));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,isReducedChargingModeEnabled,preferredFirmwareUpdateTime);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ReaderSettings(isReducedChargingModeEnabled: $isReducedChargingModeEnabled, preferredFirmwareUpdateTime: $preferredFirmwareUpdateTime)';
}


}

/// @nodoc
abstract mixin class _$ReaderSettingsCopyWith<$Res> implements $ReaderSettingsCopyWith<$Res> {
  factory _$ReaderSettingsCopyWith(_ReaderSettings value, $Res Function(_ReaderSettings) _then) = __$ReaderSettingsCopyWithImpl;
@override @useResult
$Res call({
 bool isReducedChargingModeEnabled, TimeOfDay? preferredFirmwareUpdateTime
});


@override $TimeOfDayCopyWith<$Res>? get preferredFirmwareUpdateTime;

}
/// @nodoc
class __$ReaderSettingsCopyWithImpl<$Res>
    implements _$ReaderSettingsCopyWith<$Res> {
  __$ReaderSettingsCopyWithImpl(this._self, this._then);

  final _ReaderSettings _self;
  final $Res Function(_ReaderSettings) _then;

/// Create a copy of ReaderSettings
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isReducedChargingModeEnabled = null,Object? preferredFirmwareUpdateTime = freezed,}) {
  return _then(_ReaderSettings(
isReducedChargingModeEnabled: null == isReducedChargingModeEnabled ? _self.isReducedChargingModeEnabled : isReducedChargingModeEnabled // ignore: cast_nullable_to_non_nullable
as bool,preferredFirmwareUpdateTime: freezed == preferredFirmwareUpdateTime ? _self.preferredFirmwareUpdateTime : preferredFirmwareUpdateTime // ignore: cast_nullable_to_non_nullable
as TimeOfDay?,
  ));
}

/// Create a copy of ReaderSettings
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TimeOfDayCopyWith<$Res>? get preferredFirmwareUpdateTime {
    if (_self.preferredFirmwareUpdateTime == null) {
    return null;
  }

  return $TimeOfDayCopyWith<$Res>(_self.preferredFirmwareUpdateTime!, (value) {
    return _then(_self.copyWith(preferredFirmwareUpdateTime: value));
  });
}
}

// dart format on
