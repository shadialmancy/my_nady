// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'club_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ClubEntity {

 List<Datum>? get clubs; Meta? get meta;
/// Create a copy of ClubEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ClubEntityCopyWith<ClubEntity> get copyWith => _$ClubEntityCopyWithImpl<ClubEntity>(this as ClubEntity, _$identity);

  /// Serializes this ClubEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ClubEntity&&const DeepCollectionEquality().equals(other.clubs, clubs)&&(identical(other.meta, meta) || other.meta == meta));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(clubs),meta);

@override
String toString() {
  return 'ClubEntity(clubs: $clubs, meta: $meta)';
}


}

/// @nodoc
abstract mixin class $ClubEntityCopyWith<$Res>  {
  factory $ClubEntityCopyWith(ClubEntity value, $Res Function(ClubEntity) _then) = _$ClubEntityCopyWithImpl;
@useResult
$Res call({
 List<Datum>? clubs, Meta? meta
});


$MetaCopyWith<$Res>? get meta;

}
/// @nodoc
class _$ClubEntityCopyWithImpl<$Res>
    implements $ClubEntityCopyWith<$Res> {
  _$ClubEntityCopyWithImpl(this._self, this._then);

  final ClubEntity _self;
  final $Res Function(ClubEntity) _then;

/// Create a copy of ClubEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? clubs = freezed,Object? meta = freezed,}) {
  return _then(_self.copyWith(
clubs: freezed == clubs ? _self.clubs : clubs // ignore: cast_nullable_to_non_nullable
as List<Datum>?,meta: freezed == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as Meta?,
  ));
}
/// Create a copy of ClubEntity
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


/// Adds pattern-matching-related methods to [ClubEntity].
extension ClubEntityPatterns on ClubEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ClubEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ClubEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ClubEntity value)  $default,){
final _that = this;
switch (_that) {
case _ClubEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ClubEntity value)?  $default,){
final _that = this;
switch (_that) {
case _ClubEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<Datum>? clubs,  Meta? meta)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ClubEntity() when $default != null:
return $default(_that.clubs,_that.meta);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<Datum>? clubs,  Meta? meta)  $default,) {final _that = this;
switch (_that) {
case _ClubEntity():
return $default(_that.clubs,_that.meta);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<Datum>? clubs,  Meta? meta)?  $default,) {final _that = this;
switch (_that) {
case _ClubEntity() when $default != null:
return $default(_that.clubs,_that.meta);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ClubEntity implements ClubEntity {
   _ClubEntity({final  List<Datum>? clubs, this.meta}): _clubs = clubs;
  factory _ClubEntity.fromJson(Map<String, dynamic> json) => _$ClubEntityFromJson(json);

 final  List<Datum>? _clubs;
@override List<Datum>? get clubs {
  final value = _clubs;
  if (value == null) return null;
  if (_clubs is EqualUnmodifiableListView) return _clubs;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  Meta? meta;

/// Create a copy of ClubEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ClubEntityCopyWith<_ClubEntity> get copyWith => __$ClubEntityCopyWithImpl<_ClubEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ClubEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ClubEntity&&const DeepCollectionEquality().equals(other._clubs, _clubs)&&(identical(other.meta, meta) || other.meta == meta));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_clubs),meta);

@override
String toString() {
  return 'ClubEntity(clubs: $clubs, meta: $meta)';
}


}

/// @nodoc
abstract mixin class _$ClubEntityCopyWith<$Res> implements $ClubEntityCopyWith<$Res> {
  factory _$ClubEntityCopyWith(_ClubEntity value, $Res Function(_ClubEntity) _then) = __$ClubEntityCopyWithImpl;
@override @useResult
$Res call({
 List<Datum>? clubs, Meta? meta
});


@override $MetaCopyWith<$Res>? get meta;

}
/// @nodoc
class __$ClubEntityCopyWithImpl<$Res>
    implements _$ClubEntityCopyWith<$Res> {
  __$ClubEntityCopyWithImpl(this._self, this._then);

  final _ClubEntity _self;
  final $Res Function(_ClubEntity) _then;

/// Create a copy of ClubEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? clubs = freezed,Object? meta = freezed,}) {
  return _then(_ClubEntity(
clubs: freezed == clubs ? _self._clubs : clubs // ignore: cast_nullable_to_non_nullable
as List<Datum>?,meta: freezed == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as Meta?,
  ));
}

/// Create a copy of ClubEntity
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
