// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'club_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ClubDto {

 List<Datum>? get data; Meta? get meta;
/// Create a copy of ClubDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ClubDtoCopyWith<ClubDto> get copyWith => _$ClubDtoCopyWithImpl<ClubDto>(this as ClubDto, _$identity);

  /// Serializes this ClubDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ClubDto&&const DeepCollectionEquality().equals(other.data, data)&&(identical(other.meta, meta) || other.meta == meta));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data),meta);

@override
String toString() {
  return 'ClubDto(data: $data, meta: $meta)';
}


}

/// @nodoc
abstract mixin class $ClubDtoCopyWith<$Res>  {
  factory $ClubDtoCopyWith(ClubDto value, $Res Function(ClubDto) _then) = _$ClubDtoCopyWithImpl;
@useResult
$Res call({
 List<Datum>? data, Meta? meta
});


$MetaCopyWith<$Res>? get meta;

}
/// @nodoc
class _$ClubDtoCopyWithImpl<$Res>
    implements $ClubDtoCopyWith<$Res> {
  _$ClubDtoCopyWithImpl(this._self, this._then);

  final ClubDto _self;
  final $Res Function(ClubDto) _then;

/// Create a copy of ClubDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = freezed,Object? meta = freezed,}) {
  return _then(_self.copyWith(
data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<Datum>?,meta: freezed == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as Meta?,
  ));
}
/// Create a copy of ClubDto
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


/// Adds pattern-matching-related methods to [ClubDto].
extension ClubDtoPatterns on ClubDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ClubDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ClubDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ClubDto value)  $default,){
final _that = this;
switch (_that) {
case _ClubDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ClubDto value)?  $default,){
final _that = this;
switch (_that) {
case _ClubDto() when $default != null:
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
case _ClubDto() when $default != null:
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
case _ClubDto():
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
case _ClubDto() when $default != null:
return $default(_that.data,_that.meta);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ClubDto implements ClubDto {
   _ClubDto({final  List<Datum>? data, this.meta}): _data = data;
  factory _ClubDto.fromJson(Map<String, dynamic> json) => _$ClubDtoFromJson(json);

 final  List<Datum>? _data;
@override List<Datum>? get data {
  final value = _data;
  if (value == null) return null;
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  Meta? meta;

/// Create a copy of ClubDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ClubDtoCopyWith<_ClubDto> get copyWith => __$ClubDtoCopyWithImpl<_ClubDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ClubDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ClubDto&&const DeepCollectionEquality().equals(other._data, _data)&&(identical(other.meta, meta) || other.meta == meta));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_data),meta);

@override
String toString() {
  return 'ClubDto(data: $data, meta: $meta)';
}


}

/// @nodoc
abstract mixin class _$ClubDtoCopyWith<$Res> implements $ClubDtoCopyWith<$Res> {
  factory _$ClubDtoCopyWith(_ClubDto value, $Res Function(_ClubDto) _then) = __$ClubDtoCopyWithImpl;
@override @useResult
$Res call({
 List<Datum>? data, Meta? meta
});


@override $MetaCopyWith<$Res>? get meta;

}
/// @nodoc
class __$ClubDtoCopyWithImpl<$Res>
    implements _$ClubDtoCopyWith<$Res> {
  __$ClubDtoCopyWithImpl(this._self, this._then);

  final _ClubDto _self;
  final $Res Function(_ClubDto) _then;

/// Create a copy of ClubDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = freezed,Object? meta = freezed,}) {
  return _then(_ClubDto(
data: freezed == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<Datum>?,meta: freezed == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as Meta?,
  ));
}

/// Create a copy of ClubDto
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
