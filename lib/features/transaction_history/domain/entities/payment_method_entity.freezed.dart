// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_method_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PaymentMethodEntity {

 List<Datum>? get paymentMethods; Meta? get meta;
/// Create a copy of PaymentMethodEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaymentMethodEntityCopyWith<PaymentMethodEntity> get copyWith => _$PaymentMethodEntityCopyWithImpl<PaymentMethodEntity>(this as PaymentMethodEntity, _$identity);

  /// Serializes this PaymentMethodEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaymentMethodEntity&&const DeepCollectionEquality().equals(other.paymentMethods, paymentMethods)&&(identical(other.meta, meta) || other.meta == meta));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(paymentMethods),meta);

@override
String toString() {
  return 'PaymentMethodEntity(paymentMethods: $paymentMethods, meta: $meta)';
}


}

/// @nodoc
abstract mixin class $PaymentMethodEntityCopyWith<$Res>  {
  factory $PaymentMethodEntityCopyWith(PaymentMethodEntity value, $Res Function(PaymentMethodEntity) _then) = _$PaymentMethodEntityCopyWithImpl;
@useResult
$Res call({
 List<Datum>? paymentMethods, Meta? meta
});


$MetaCopyWith<$Res>? get meta;

}
/// @nodoc
class _$PaymentMethodEntityCopyWithImpl<$Res>
    implements $PaymentMethodEntityCopyWith<$Res> {
  _$PaymentMethodEntityCopyWithImpl(this._self, this._then);

  final PaymentMethodEntity _self;
  final $Res Function(PaymentMethodEntity) _then;

/// Create a copy of PaymentMethodEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? paymentMethods = freezed,Object? meta = freezed,}) {
  return _then(_self.copyWith(
paymentMethods: freezed == paymentMethods ? _self.paymentMethods : paymentMethods // ignore: cast_nullable_to_non_nullable
as List<Datum>?,meta: freezed == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as Meta?,
  ));
}
/// Create a copy of PaymentMethodEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MetaCopyWith<$Res>? get meta {
    if (_self.meta == null) {
    return null;
  }

  return $MetaCopyWith<$Res>(_self.meta!, (value) {
    return _then(_self.copyWith(meta: value));
  });
}
}


/// Adds pattern-matching-related methods to [PaymentMethodEntity].
extension PaymentMethodEntityPatterns on PaymentMethodEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PaymentMethodEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PaymentMethodEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PaymentMethodEntity value)  $default,){
final _that = this;
switch (_that) {
case _PaymentMethodEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PaymentMethodEntity value)?  $default,){
final _that = this;
switch (_that) {
case _PaymentMethodEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<Datum>? paymentMethods,  Meta? meta)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PaymentMethodEntity() when $default != null:
return $default(_that.paymentMethods,_that.meta);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<Datum>? paymentMethods,  Meta? meta)  $default,) {final _that = this;
switch (_that) {
case _PaymentMethodEntity():
return $default(_that.paymentMethods,_that.meta);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<Datum>? paymentMethods,  Meta? meta)?  $default,) {final _that = this;
switch (_that) {
case _PaymentMethodEntity() when $default != null:
return $default(_that.paymentMethods,_that.meta);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PaymentMethodEntity implements PaymentMethodEntity {
   _PaymentMethodEntity({final  List<Datum>? paymentMethods, this.meta}): _paymentMethods = paymentMethods;
  factory _PaymentMethodEntity.fromJson(Map<String, dynamic> json) => _$PaymentMethodEntityFromJson(json);

 final  List<Datum>? _paymentMethods;
@override List<Datum>? get paymentMethods {
  final value = _paymentMethods;
  if (value == null) return null;
  if (_paymentMethods is EqualUnmodifiableListView) return _paymentMethods;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  Meta? meta;

/// Create a copy of PaymentMethodEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PaymentMethodEntityCopyWith<_PaymentMethodEntity> get copyWith => __$PaymentMethodEntityCopyWithImpl<_PaymentMethodEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PaymentMethodEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PaymentMethodEntity&&const DeepCollectionEquality().equals(other._paymentMethods, _paymentMethods)&&(identical(other.meta, meta) || other.meta == meta));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_paymentMethods),meta);

@override
String toString() {
  return 'PaymentMethodEntity(paymentMethods: $paymentMethods, meta: $meta)';
}


}

/// @nodoc
abstract mixin class _$PaymentMethodEntityCopyWith<$Res> implements $PaymentMethodEntityCopyWith<$Res> {
  factory _$PaymentMethodEntityCopyWith(_PaymentMethodEntity value, $Res Function(_PaymentMethodEntity) _then) = __$PaymentMethodEntityCopyWithImpl;
@override @useResult
$Res call({
 List<Datum>? paymentMethods, Meta? meta
});


@override $MetaCopyWith<$Res>? get meta;

}
/// @nodoc
class __$PaymentMethodEntityCopyWithImpl<$Res>
    implements _$PaymentMethodEntityCopyWith<$Res> {
  __$PaymentMethodEntityCopyWithImpl(this._self, this._then);

  final _PaymentMethodEntity _self;
  final $Res Function(_PaymentMethodEntity) _then;

/// Create a copy of PaymentMethodEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? paymentMethods = freezed,Object? meta = freezed,}) {
  return _then(_PaymentMethodEntity(
paymentMethods: freezed == paymentMethods ? _self._paymentMethods : paymentMethods // ignore: cast_nullable_to_non_nullable
as List<Datum>?,meta: freezed == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as Meta?,
  ));
}

/// Create a copy of PaymentMethodEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MetaCopyWith<$Res>? get meta {
    if (_self.meta == null) {
    return null;
  }

  return $MetaCopyWith<$Res>(_self.meta!, (value) {
    return _then(_self.copyWith(meta: value));
  });
}
}

// dart format on
