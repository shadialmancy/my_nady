// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_method_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PaymentMethodDto {

 List<Datum>? get data; Meta? get meta;
/// Create a copy of PaymentMethodDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaymentMethodDtoCopyWith<PaymentMethodDto> get copyWith => _$PaymentMethodDtoCopyWithImpl<PaymentMethodDto>(this as PaymentMethodDto, _$identity);

  /// Serializes this PaymentMethodDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaymentMethodDto&&const DeepCollectionEquality().equals(other.data, data)&&(identical(other.meta, meta) || other.meta == meta));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data),meta);

@override
String toString() {
  return 'PaymentMethodDto(data: $data, meta: $meta)';
}


}

/// @nodoc
abstract mixin class $PaymentMethodDtoCopyWith<$Res>  {
  factory $PaymentMethodDtoCopyWith(PaymentMethodDto value, $Res Function(PaymentMethodDto) _then) = _$PaymentMethodDtoCopyWithImpl;
@useResult
$Res call({
 List<Datum>? data, Meta? meta
});


$MetaCopyWith<$Res>? get meta;

}
/// @nodoc
class _$PaymentMethodDtoCopyWithImpl<$Res>
    implements $PaymentMethodDtoCopyWith<$Res> {
  _$PaymentMethodDtoCopyWithImpl(this._self, this._then);

  final PaymentMethodDto _self;
  final $Res Function(PaymentMethodDto) _then;

/// Create a copy of PaymentMethodDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = freezed,Object? meta = freezed,}) {
  return _then(_self.copyWith(
data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<Datum>?,meta: freezed == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as Meta?,
  ));
}
/// Create a copy of PaymentMethodDto
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


/// Adds pattern-matching-related methods to [PaymentMethodDto].
extension PaymentMethodDtoPatterns on PaymentMethodDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PaymentMethodDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PaymentMethodDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PaymentMethodDto value)  $default,){
final _that = this;
switch (_that) {
case _PaymentMethodDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PaymentMethodDto value)?  $default,){
final _that = this;
switch (_that) {
case _PaymentMethodDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<Datum>? data,  Meta? meta)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PaymentMethodDto() when $default != null:
return $default(_that.data,_that.meta);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<Datum>? data,  Meta? meta)  $default,) {final _that = this;
switch (_that) {
case _PaymentMethodDto():
return $default(_that.data,_that.meta);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<Datum>? data,  Meta? meta)?  $default,) {final _that = this;
switch (_that) {
case _PaymentMethodDto() when $default != null:
return $default(_that.data,_that.meta);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PaymentMethodDto implements PaymentMethodDto {
   _PaymentMethodDto({final  List<Datum>? data, this.meta}): _data = data;
  factory _PaymentMethodDto.fromJson(Map<String, dynamic> json) => _$PaymentMethodDtoFromJson(json);

 final  List<Datum>? _data;
@override List<Datum>? get data {
  final value = _data;
  if (value == null) return null;
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  Meta? meta;

/// Create a copy of PaymentMethodDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PaymentMethodDtoCopyWith<_PaymentMethodDto> get copyWith => __$PaymentMethodDtoCopyWithImpl<_PaymentMethodDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PaymentMethodDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PaymentMethodDto&&const DeepCollectionEquality().equals(other._data, _data)&&(identical(other.meta, meta) || other.meta == meta));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_data),meta);

@override
String toString() {
  return 'PaymentMethodDto(data: $data, meta: $meta)';
}


}

/// @nodoc
abstract mixin class _$PaymentMethodDtoCopyWith<$Res> implements $PaymentMethodDtoCopyWith<$Res> {
  factory _$PaymentMethodDtoCopyWith(_PaymentMethodDto value, $Res Function(_PaymentMethodDto) _then) = __$PaymentMethodDtoCopyWithImpl;
@override @useResult
$Res call({
 List<Datum>? data, Meta? meta
});


@override $MetaCopyWith<$Res>? get meta;

}
/// @nodoc
class __$PaymentMethodDtoCopyWithImpl<$Res>
    implements _$PaymentMethodDtoCopyWith<$Res> {
  __$PaymentMethodDtoCopyWithImpl(this._self, this._then);

  final _PaymentMethodDto _self;
  final $Res Function(_PaymentMethodDto) _then;

/// Create a copy of PaymentMethodDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = freezed,Object? meta = freezed,}) {
  return _then(_PaymentMethodDto(
data: freezed == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<Datum>?,meta: freezed == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as Meta?,
  ));
}

/// Create a copy of PaymentMethodDto
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
