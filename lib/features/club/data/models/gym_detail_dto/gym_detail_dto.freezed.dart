// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'gym_detail_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GymDetailDto {

 Data? get data; Meta? get meta;
/// Create a copy of GymDetailDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GymDetailDtoCopyWith<GymDetailDto> get copyWith => _$GymDetailDtoCopyWithImpl<GymDetailDto>(this as GymDetailDto, _$identity);

  /// Serializes this GymDetailDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GymDetailDto&&(identical(other.data, data) || other.data == data)&&(identical(other.meta, meta) || other.meta == meta));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,data,meta);

@override
String toString() {
  return 'GymDetailDto(data: $data, meta: $meta)';
}


}

/// @nodoc
abstract mixin class $GymDetailDtoCopyWith<$Res>  {
  factory $GymDetailDtoCopyWith(GymDetailDto value, $Res Function(GymDetailDto) _then) = _$GymDetailDtoCopyWithImpl;
@useResult
$Res call({
 Data? data, Meta? meta
});


$DataCopyWith<$Res>? get data;$MetaCopyWith<$Res>? get meta;

}
/// @nodoc
class _$GymDetailDtoCopyWithImpl<$Res>
    implements $GymDetailDtoCopyWith<$Res> {
  _$GymDetailDtoCopyWithImpl(this._self, this._then);

  final GymDetailDto _self;
  final $Res Function(GymDetailDto) _then;

/// Create a copy of GymDetailDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = freezed,Object? meta = freezed,}) {
  return _then(_self.copyWith(
data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as Data?,meta: freezed == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as Meta?,
  ));
}
/// Create a copy of GymDetailDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DataCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $DataCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}/// Create a copy of GymDetailDto
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


/// Adds pattern-matching-related methods to [GymDetailDto].
extension GymDetailDtoPatterns on GymDetailDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GymDetailDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GymDetailDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GymDetailDto value)  $default,){
final _that = this;
switch (_that) {
case _GymDetailDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GymDetailDto value)?  $default,){
final _that = this;
switch (_that) {
case _GymDetailDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Data? data,  Meta? meta)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GymDetailDto() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Data? data,  Meta? meta)  $default,) {final _that = this;
switch (_that) {
case _GymDetailDto():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Data? data,  Meta? meta)?  $default,) {final _that = this;
switch (_that) {
case _GymDetailDto() when $default != null:
return $default(_that.data,_that.meta);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GymDetailDto implements GymDetailDto {
   _GymDetailDto({this.data, this.meta});
  factory _GymDetailDto.fromJson(Map<String, dynamic> json) => _$GymDetailDtoFromJson(json);

@override final  Data? data;
@override final  Meta? meta;

/// Create a copy of GymDetailDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GymDetailDtoCopyWith<_GymDetailDto> get copyWith => __$GymDetailDtoCopyWithImpl<_GymDetailDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GymDetailDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GymDetailDto&&(identical(other.data, data) || other.data == data)&&(identical(other.meta, meta) || other.meta == meta));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,data,meta);

@override
String toString() {
  return 'GymDetailDto(data: $data, meta: $meta)';
}


}

/// @nodoc
abstract mixin class _$GymDetailDtoCopyWith<$Res> implements $GymDetailDtoCopyWith<$Res> {
  factory _$GymDetailDtoCopyWith(_GymDetailDto value, $Res Function(_GymDetailDto) _then) = __$GymDetailDtoCopyWithImpl;
@override @useResult
$Res call({
 Data? data, Meta? meta
});


@override $DataCopyWith<$Res>? get data;@override $MetaCopyWith<$Res>? get meta;

}
/// @nodoc
class __$GymDetailDtoCopyWithImpl<$Res>
    implements _$GymDetailDtoCopyWith<$Res> {
  __$GymDetailDtoCopyWithImpl(this._self, this._then);

  final _GymDetailDto _self;
  final $Res Function(_GymDetailDto) _then;

/// Create a copy of GymDetailDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = freezed,Object? meta = freezed,}) {
  return _then(_GymDetailDto(
data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as Data?,meta: freezed == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as Meta?,
  ));
}

/// Create a copy of GymDetailDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DataCopyWith<$Res>? get data {
    if (_self.data == null) {
    return null;
  }

  return $DataCopyWith<$Res>(_self.data!, (value) {
    return _then(_self.copyWith(data: value));
  });
}/// Create a copy of GymDetailDto
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
