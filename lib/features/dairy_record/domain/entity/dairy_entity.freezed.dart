// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dairy_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DairyEntity {

 List<DairyDatum>? get data; DairyMeta? get meta;
/// Create a copy of DairyEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DairyEntityCopyWith<DairyEntity> get copyWith => _$DairyEntityCopyWithImpl<DairyEntity>(this as DairyEntity, _$identity);

  /// Serializes this DairyEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DairyEntity&&const DeepCollectionEquality().equals(other.data, data)&&(identical(other.meta, meta) || other.meta == meta));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data),meta);

@override
String toString() {
  return 'DairyEntity(data: $data, meta: $meta)';
}


}

/// @nodoc
abstract mixin class $DairyEntityCopyWith<$Res>  {
  factory $DairyEntityCopyWith(DairyEntity value, $Res Function(DairyEntity) _then) = _$DairyEntityCopyWithImpl;
@useResult
$Res call({
 List<DairyDatum>? data, DairyMeta? meta
});


$DairyMetaCopyWith<$Res>? get meta;

}
/// @nodoc
class _$DairyEntityCopyWithImpl<$Res>
    implements $DairyEntityCopyWith<$Res> {
  _$DairyEntityCopyWithImpl(this._self, this._then);

  final DairyEntity _self;
  final $Res Function(DairyEntity) _then;

/// Create a copy of DairyEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = freezed,Object? meta = freezed,}) {
  return _then(_self.copyWith(
data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<DairyDatum>?,meta: freezed == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as DairyMeta?,
  ));
}
/// Create a copy of DairyEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DairyMetaCopyWith<$Res>? get meta {
    if (_self.meta == null) {
    return null;
  }

  return $DairyMetaCopyWith<$Res>(_self.meta!, (value) {
    return _then(_self.copyWith(meta: value));
  });
}
}


/// Adds pattern-matching-related methods to [DairyEntity].
extension DairyEntityPatterns on DairyEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DairyEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DairyEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DairyEntity value)  $default,){
final _that = this;
switch (_that) {
case _DairyEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DairyEntity value)?  $default,){
final _that = this;
switch (_that) {
case _DairyEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<DairyDatum>? data,  DairyMeta? meta)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DairyEntity() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<DairyDatum>? data,  DairyMeta? meta)  $default,) {final _that = this;
switch (_that) {
case _DairyEntity():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<DairyDatum>? data,  DairyMeta? meta)?  $default,) {final _that = this;
switch (_that) {
case _DairyEntity() when $default != null:
return $default(_that.data,_that.meta);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DairyEntity implements DairyEntity {
   _DairyEntity({final  List<DairyDatum>? data, this.meta}): _data = data;
  factory _DairyEntity.fromJson(Map<String, dynamic> json) => _$DairyEntityFromJson(json);

 final  List<DairyDatum>? _data;
@override List<DairyDatum>? get data {
  final value = _data;
  if (value == null) return null;
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  DairyMeta? meta;

/// Create a copy of DairyEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DairyEntityCopyWith<_DairyEntity> get copyWith => __$DairyEntityCopyWithImpl<_DairyEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DairyEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DairyEntity&&const DeepCollectionEquality().equals(other._data, _data)&&(identical(other.meta, meta) || other.meta == meta));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_data),meta);

@override
String toString() {
  return 'DairyEntity(data: $data, meta: $meta)';
}


}

/// @nodoc
abstract mixin class _$DairyEntityCopyWith<$Res> implements $DairyEntityCopyWith<$Res> {
  factory _$DairyEntityCopyWith(_DairyEntity value, $Res Function(_DairyEntity) _then) = __$DairyEntityCopyWithImpl;
@override @useResult
$Res call({
 List<DairyDatum>? data, DairyMeta? meta
});


@override $DairyMetaCopyWith<$Res>? get meta;

}
/// @nodoc
class __$DairyEntityCopyWithImpl<$Res>
    implements _$DairyEntityCopyWith<$Res> {
  __$DairyEntityCopyWithImpl(this._self, this._then);

  final _DairyEntity _self;
  final $Res Function(_DairyEntity) _then;

/// Create a copy of DairyEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = freezed,Object? meta = freezed,}) {
  return _then(_DairyEntity(
data: freezed == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<DairyDatum>?,meta: freezed == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as DairyMeta?,
  ));
}

/// Create a copy of DairyEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DairyMetaCopyWith<$Res>? get meta {
    if (_self.meta == null) {
    return null;
  }

  return $DairyMetaCopyWith<$Res>(_self.meta!, (value) {
    return _then(_self.copyWith(meta: value));
  });
}
}

// dart format on
