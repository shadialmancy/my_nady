// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'datum.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Datum {

 String? get id; String? get gatewayCardId; String? get cardBrand; String? get last4Digits; int? get expiryMonth; int? get expiryYear; String? get cardholderName; String? get gatewayCustomerId; DateTime? get createdAt; DateTime? get updatedAt;
/// Create a copy of Datum
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DatumCopyWith<Datum> get copyWith => _$DatumCopyWithImpl<Datum>(this as Datum, _$identity);

  /// Serializes this Datum to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Datum&&(identical(other.id, id) || other.id == id)&&(identical(other.gatewayCardId, gatewayCardId) || other.gatewayCardId == gatewayCardId)&&(identical(other.cardBrand, cardBrand) || other.cardBrand == cardBrand)&&(identical(other.last4Digits, last4Digits) || other.last4Digits == last4Digits)&&(identical(other.expiryMonth, expiryMonth) || other.expiryMonth == expiryMonth)&&(identical(other.expiryYear, expiryYear) || other.expiryYear == expiryYear)&&(identical(other.cardholderName, cardholderName) || other.cardholderName == cardholderName)&&(identical(other.gatewayCustomerId, gatewayCustomerId) || other.gatewayCustomerId == gatewayCustomerId)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,gatewayCardId,cardBrand,last4Digits,expiryMonth,expiryYear,cardholderName,gatewayCustomerId,createdAt,updatedAt);

@override
String toString() {
  return 'Datum(id: $id, gatewayCardId: $gatewayCardId, cardBrand: $cardBrand, last4Digits: $last4Digits, expiryMonth: $expiryMonth, expiryYear: $expiryYear, cardholderName: $cardholderName, gatewayCustomerId: $gatewayCustomerId, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $DatumCopyWith<$Res>  {
  factory $DatumCopyWith(Datum value, $Res Function(Datum) _then) = _$DatumCopyWithImpl;
@useResult
$Res call({
 String? id, String? gatewayCardId, String? cardBrand, String? last4Digits, int? expiryMonth, int? expiryYear, String? cardholderName, String? gatewayCustomerId, DateTime? createdAt, DateTime? updatedAt
});




}
/// @nodoc
class _$DatumCopyWithImpl<$Res>
    implements $DatumCopyWith<$Res> {
  _$DatumCopyWithImpl(this._self, this._then);

  final Datum _self;
  final $Res Function(Datum) _then;

/// Create a copy of Datum
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? gatewayCardId = freezed,Object? cardBrand = freezed,Object? last4Digits = freezed,Object? expiryMonth = freezed,Object? expiryYear = freezed,Object? cardholderName = freezed,Object? gatewayCustomerId = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,gatewayCardId: freezed == gatewayCardId ? _self.gatewayCardId : gatewayCardId // ignore: cast_nullable_to_non_nullable
as String?,cardBrand: freezed == cardBrand ? _self.cardBrand : cardBrand // ignore: cast_nullable_to_non_nullable
as String?,last4Digits: freezed == last4Digits ? _self.last4Digits : last4Digits // ignore: cast_nullable_to_non_nullable
as String?,expiryMonth: freezed == expiryMonth ? _self.expiryMonth : expiryMonth // ignore: cast_nullable_to_non_nullable
as int?,expiryYear: freezed == expiryYear ? _self.expiryYear : expiryYear // ignore: cast_nullable_to_non_nullable
as int?,cardholderName: freezed == cardholderName ? _self.cardholderName : cardholderName // ignore: cast_nullable_to_non_nullable
as String?,gatewayCustomerId: freezed == gatewayCustomerId ? _self.gatewayCustomerId : gatewayCustomerId // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [Datum].
extension DatumPatterns on Datum {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Datum value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Datum() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Datum value)  $default,){
final _that = this;
switch (_that) {
case _Datum():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Datum value)?  $default,){
final _that = this;
switch (_that) {
case _Datum() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? id,  String? gatewayCardId,  String? cardBrand,  String? last4Digits,  int? expiryMonth,  int? expiryYear,  String? cardholderName,  String? gatewayCustomerId,  DateTime? createdAt,  DateTime? updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Datum() when $default != null:
return $default(_that.id,_that.gatewayCardId,_that.cardBrand,_that.last4Digits,_that.expiryMonth,_that.expiryYear,_that.cardholderName,_that.gatewayCustomerId,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? id,  String? gatewayCardId,  String? cardBrand,  String? last4Digits,  int? expiryMonth,  int? expiryYear,  String? cardholderName,  String? gatewayCustomerId,  DateTime? createdAt,  DateTime? updatedAt)  $default,) {final _that = this;
switch (_that) {
case _Datum():
return $default(_that.id,_that.gatewayCardId,_that.cardBrand,_that.last4Digits,_that.expiryMonth,_that.expiryYear,_that.cardholderName,_that.gatewayCustomerId,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? id,  String? gatewayCardId,  String? cardBrand,  String? last4Digits,  int? expiryMonth,  int? expiryYear,  String? cardholderName,  String? gatewayCustomerId,  DateTime? createdAt,  DateTime? updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _Datum() when $default != null:
return $default(_that.id,_that.gatewayCardId,_that.cardBrand,_that.last4Digits,_that.expiryMonth,_that.expiryYear,_that.cardholderName,_that.gatewayCustomerId,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Datum implements Datum {
   _Datum({this.id, this.gatewayCardId, this.cardBrand, this.last4Digits, this.expiryMonth, this.expiryYear, this.cardholderName, this.gatewayCustomerId, this.createdAt, this.updatedAt});
  factory _Datum.fromJson(Map<String, dynamic> json) => _$DatumFromJson(json);

@override final  String? id;
@override final  String? gatewayCardId;
@override final  String? cardBrand;
@override final  String? last4Digits;
@override final  int? expiryMonth;
@override final  int? expiryYear;
@override final  String? cardholderName;
@override final  String? gatewayCustomerId;
@override final  DateTime? createdAt;
@override final  DateTime? updatedAt;

/// Create a copy of Datum
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DatumCopyWith<_Datum> get copyWith => __$DatumCopyWithImpl<_Datum>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DatumToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Datum&&(identical(other.id, id) || other.id == id)&&(identical(other.gatewayCardId, gatewayCardId) || other.gatewayCardId == gatewayCardId)&&(identical(other.cardBrand, cardBrand) || other.cardBrand == cardBrand)&&(identical(other.last4Digits, last4Digits) || other.last4Digits == last4Digits)&&(identical(other.expiryMonth, expiryMonth) || other.expiryMonth == expiryMonth)&&(identical(other.expiryYear, expiryYear) || other.expiryYear == expiryYear)&&(identical(other.cardholderName, cardholderName) || other.cardholderName == cardholderName)&&(identical(other.gatewayCustomerId, gatewayCustomerId) || other.gatewayCustomerId == gatewayCustomerId)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,gatewayCardId,cardBrand,last4Digits,expiryMonth,expiryYear,cardholderName,gatewayCustomerId,createdAt,updatedAt);

@override
String toString() {
  return 'Datum(id: $id, gatewayCardId: $gatewayCardId, cardBrand: $cardBrand, last4Digits: $last4Digits, expiryMonth: $expiryMonth, expiryYear: $expiryYear, cardholderName: $cardholderName, gatewayCustomerId: $gatewayCustomerId, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$DatumCopyWith<$Res> implements $DatumCopyWith<$Res> {
  factory _$DatumCopyWith(_Datum value, $Res Function(_Datum) _then) = __$DatumCopyWithImpl;
@override @useResult
$Res call({
 String? id, String? gatewayCardId, String? cardBrand, String? last4Digits, int? expiryMonth, int? expiryYear, String? cardholderName, String? gatewayCustomerId, DateTime? createdAt, DateTime? updatedAt
});




}
/// @nodoc
class __$DatumCopyWithImpl<$Res>
    implements _$DatumCopyWith<$Res> {
  __$DatumCopyWithImpl(this._self, this._then);

  final _Datum _self;
  final $Res Function(_Datum) _then;

/// Create a copy of Datum
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? gatewayCardId = freezed,Object? cardBrand = freezed,Object? last4Digits = freezed,Object? expiryMonth = freezed,Object? expiryYear = freezed,Object? cardholderName = freezed,Object? gatewayCustomerId = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_Datum(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,gatewayCardId: freezed == gatewayCardId ? _self.gatewayCardId : gatewayCardId // ignore: cast_nullable_to_non_nullable
as String?,cardBrand: freezed == cardBrand ? _self.cardBrand : cardBrand // ignore: cast_nullable_to_non_nullable
as String?,last4Digits: freezed == last4Digits ? _self.last4Digits : last4Digits // ignore: cast_nullable_to_non_nullable
as String?,expiryMonth: freezed == expiryMonth ? _self.expiryMonth : expiryMonth // ignore: cast_nullable_to_non_nullable
as int?,expiryYear: freezed == expiryYear ? _self.expiryYear : expiryYear // ignore: cast_nullable_to_non_nullable
as int?,cardholderName: freezed == cardholderName ? _self.cardholderName : cardholderName // ignore: cast_nullable_to_non_nullable
as String?,gatewayCustomerId: freezed == gatewayCustomerId ? _self.gatewayCustomerId : gatewayCustomerId // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
