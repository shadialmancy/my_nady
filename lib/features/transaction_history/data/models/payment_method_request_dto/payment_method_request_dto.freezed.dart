// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_method_request_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PaymentMethodRequestDto {

 String get gatewayCardId; String get cardBrand; String get last4Digits; int get expiryMonth; int get expiryYear; String get cardholderName; String get gatewayCustomerId;
/// Create a copy of PaymentMethodRequestDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaymentMethodRequestDtoCopyWith<PaymentMethodRequestDto> get copyWith => _$PaymentMethodRequestDtoCopyWithImpl<PaymentMethodRequestDto>(this as PaymentMethodRequestDto, _$identity);

  /// Serializes this PaymentMethodRequestDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaymentMethodRequestDto&&(identical(other.gatewayCardId, gatewayCardId) || other.gatewayCardId == gatewayCardId)&&(identical(other.cardBrand, cardBrand) || other.cardBrand == cardBrand)&&(identical(other.last4Digits, last4Digits) || other.last4Digits == last4Digits)&&(identical(other.expiryMonth, expiryMonth) || other.expiryMonth == expiryMonth)&&(identical(other.expiryYear, expiryYear) || other.expiryYear == expiryYear)&&(identical(other.cardholderName, cardholderName) || other.cardholderName == cardholderName)&&(identical(other.gatewayCustomerId, gatewayCustomerId) || other.gatewayCustomerId == gatewayCustomerId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,gatewayCardId,cardBrand,last4Digits,expiryMonth,expiryYear,cardholderName,gatewayCustomerId);

@override
String toString() {
  return 'PaymentMethodRequestDto(gatewayCardId: $gatewayCardId, cardBrand: $cardBrand, last4Digits: $last4Digits, expiryMonth: $expiryMonth, expiryYear: $expiryYear, cardholderName: $cardholderName, gatewayCustomerId: $gatewayCustomerId)';
}


}

/// @nodoc
abstract mixin class $PaymentMethodRequestDtoCopyWith<$Res>  {
  factory $PaymentMethodRequestDtoCopyWith(PaymentMethodRequestDto value, $Res Function(PaymentMethodRequestDto) _then) = _$PaymentMethodRequestDtoCopyWithImpl;
@useResult
$Res call({
 String gatewayCardId, String cardBrand, String last4Digits, int expiryMonth, int expiryYear, String cardholderName, String gatewayCustomerId
});




}
/// @nodoc
class _$PaymentMethodRequestDtoCopyWithImpl<$Res>
    implements $PaymentMethodRequestDtoCopyWith<$Res> {
  _$PaymentMethodRequestDtoCopyWithImpl(this._self, this._then);

  final PaymentMethodRequestDto _self;
  final $Res Function(PaymentMethodRequestDto) _then;

/// Create a copy of PaymentMethodRequestDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? gatewayCardId = null,Object? cardBrand = null,Object? last4Digits = null,Object? expiryMonth = null,Object? expiryYear = null,Object? cardholderName = null,Object? gatewayCustomerId = null,}) {
  return _then(_self.copyWith(
gatewayCardId: null == gatewayCardId ? _self.gatewayCardId : gatewayCardId // ignore: cast_nullable_to_non_nullable
as String,cardBrand: null == cardBrand ? _self.cardBrand : cardBrand // ignore: cast_nullable_to_non_nullable
as String,last4Digits: null == last4Digits ? _self.last4Digits : last4Digits // ignore: cast_nullable_to_non_nullable
as String,expiryMonth: null == expiryMonth ? _self.expiryMonth : expiryMonth // ignore: cast_nullable_to_non_nullable
as int,expiryYear: null == expiryYear ? _self.expiryYear : expiryYear // ignore: cast_nullable_to_non_nullable
as int,cardholderName: null == cardholderName ? _self.cardholderName : cardholderName // ignore: cast_nullable_to_non_nullable
as String,gatewayCustomerId: null == gatewayCustomerId ? _self.gatewayCustomerId : gatewayCustomerId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [PaymentMethodRequestDto].
extension PaymentMethodRequestDtoPatterns on PaymentMethodRequestDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PaymentMethodRequestDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PaymentMethodRequestDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PaymentMethodRequestDto value)  $default,){
final _that = this;
switch (_that) {
case _PaymentMethodRequestDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PaymentMethodRequestDto value)?  $default,){
final _that = this;
switch (_that) {
case _PaymentMethodRequestDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String gatewayCardId,  String cardBrand,  String last4Digits,  int expiryMonth,  int expiryYear,  String cardholderName,  String gatewayCustomerId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PaymentMethodRequestDto() when $default != null:
return $default(_that.gatewayCardId,_that.cardBrand,_that.last4Digits,_that.expiryMonth,_that.expiryYear,_that.cardholderName,_that.gatewayCustomerId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String gatewayCardId,  String cardBrand,  String last4Digits,  int expiryMonth,  int expiryYear,  String cardholderName,  String gatewayCustomerId)  $default,) {final _that = this;
switch (_that) {
case _PaymentMethodRequestDto():
return $default(_that.gatewayCardId,_that.cardBrand,_that.last4Digits,_that.expiryMonth,_that.expiryYear,_that.cardholderName,_that.gatewayCustomerId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String gatewayCardId,  String cardBrand,  String last4Digits,  int expiryMonth,  int expiryYear,  String cardholderName,  String gatewayCustomerId)?  $default,) {final _that = this;
switch (_that) {
case _PaymentMethodRequestDto() when $default != null:
return $default(_that.gatewayCardId,_that.cardBrand,_that.last4Digits,_that.expiryMonth,_that.expiryYear,_that.cardholderName,_that.gatewayCustomerId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PaymentMethodRequestDto implements PaymentMethodRequestDto {
   _PaymentMethodRequestDto({required this.gatewayCardId, required this.cardBrand, required this.last4Digits, required this.expiryMonth, required this.expiryYear, required this.cardholderName, required this.gatewayCustomerId});
  factory _PaymentMethodRequestDto.fromJson(Map<String, dynamic> json) => _$PaymentMethodRequestDtoFromJson(json);

@override final  String gatewayCardId;
@override final  String cardBrand;
@override final  String last4Digits;
@override final  int expiryMonth;
@override final  int expiryYear;
@override final  String cardholderName;
@override final  String gatewayCustomerId;

/// Create a copy of PaymentMethodRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PaymentMethodRequestDtoCopyWith<_PaymentMethodRequestDto> get copyWith => __$PaymentMethodRequestDtoCopyWithImpl<_PaymentMethodRequestDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PaymentMethodRequestDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PaymentMethodRequestDto&&(identical(other.gatewayCardId, gatewayCardId) || other.gatewayCardId == gatewayCardId)&&(identical(other.cardBrand, cardBrand) || other.cardBrand == cardBrand)&&(identical(other.last4Digits, last4Digits) || other.last4Digits == last4Digits)&&(identical(other.expiryMonth, expiryMonth) || other.expiryMonth == expiryMonth)&&(identical(other.expiryYear, expiryYear) || other.expiryYear == expiryYear)&&(identical(other.cardholderName, cardholderName) || other.cardholderName == cardholderName)&&(identical(other.gatewayCustomerId, gatewayCustomerId) || other.gatewayCustomerId == gatewayCustomerId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,gatewayCardId,cardBrand,last4Digits,expiryMonth,expiryYear,cardholderName,gatewayCustomerId);

@override
String toString() {
  return 'PaymentMethodRequestDto(gatewayCardId: $gatewayCardId, cardBrand: $cardBrand, last4Digits: $last4Digits, expiryMonth: $expiryMonth, expiryYear: $expiryYear, cardholderName: $cardholderName, gatewayCustomerId: $gatewayCustomerId)';
}


}

/// @nodoc
abstract mixin class _$PaymentMethodRequestDtoCopyWith<$Res> implements $PaymentMethodRequestDtoCopyWith<$Res> {
  factory _$PaymentMethodRequestDtoCopyWith(_PaymentMethodRequestDto value, $Res Function(_PaymentMethodRequestDto) _then) = __$PaymentMethodRequestDtoCopyWithImpl;
@override @useResult
$Res call({
 String gatewayCardId, String cardBrand, String last4Digits, int expiryMonth, int expiryYear, String cardholderName, String gatewayCustomerId
});




}
/// @nodoc
class __$PaymentMethodRequestDtoCopyWithImpl<$Res>
    implements _$PaymentMethodRequestDtoCopyWith<$Res> {
  __$PaymentMethodRequestDtoCopyWithImpl(this._self, this._then);

  final _PaymentMethodRequestDto _self;
  final $Res Function(_PaymentMethodRequestDto) _then;

/// Create a copy of PaymentMethodRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? gatewayCardId = null,Object? cardBrand = null,Object? last4Digits = null,Object? expiryMonth = null,Object? expiryYear = null,Object? cardholderName = null,Object? gatewayCustomerId = null,}) {
  return _then(_PaymentMethodRequestDto(
gatewayCardId: null == gatewayCardId ? _self.gatewayCardId : gatewayCardId // ignore: cast_nullable_to_non_nullable
as String,cardBrand: null == cardBrand ? _self.cardBrand : cardBrand // ignore: cast_nullable_to_non_nullable
as String,last4Digits: null == last4Digits ? _self.last4Digits : last4Digits // ignore: cast_nullable_to_non_nullable
as String,expiryMonth: null == expiryMonth ? _self.expiryMonth : expiryMonth // ignore: cast_nullable_to_non_nullable
as int,expiryYear: null == expiryYear ? _self.expiryYear : expiryYear // ignore: cast_nullable_to_non_nullable
as int,cardholderName: null == cardholderName ? _self.cardholderName : cardholderName // ignore: cast_nullable_to_non_nullable
as String,gatewayCustomerId: null == gatewayCustomerId ? _self.gatewayCustomerId : gatewayCustomerId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
