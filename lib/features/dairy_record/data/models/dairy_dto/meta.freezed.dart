// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'meta.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DairyMeta {

 DateTime? get timestamp;
/// Create a copy of DairyMeta
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DairyMetaCopyWith<DairyMeta> get copyWith => _$DairyMetaCopyWithImpl<DairyMeta>(this as DairyMeta, _$identity);

  /// Serializes this DairyMeta to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DairyMeta&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,timestamp);

@override
String toString() {
  return 'DairyMeta(timestamp: $timestamp)';
}


}

/// @nodoc
abstract mixin class $DairyMetaCopyWith<$Res>  {
  factory $DairyMetaCopyWith(DairyMeta value, $Res Function(DairyMeta) _then) = _$DairyMetaCopyWithImpl;
@useResult
$Res call({
 DateTime? timestamp
});




}
/// @nodoc
class _$DairyMetaCopyWithImpl<$Res>
    implements $DairyMetaCopyWith<$Res> {
  _$DairyMetaCopyWithImpl(this._self, this._then);

  final DairyMeta _self;
  final $Res Function(DairyMeta) _then;

/// Create a copy of DairyMeta
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? timestamp = freezed,}) {
  return _then(_self.copyWith(
timestamp: freezed == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [DairyMeta].
extension DairyMetaPatterns on DairyMeta {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DairyMeta value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DairyMeta() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DairyMeta value)  $default,){
final _that = this;
switch (_that) {
case _DairyMeta():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DairyMeta value)?  $default,){
final _that = this;
switch (_that) {
case _DairyMeta() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( DateTime? timestamp)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DairyMeta() when $default != null:
return $default(_that.timestamp);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( DateTime? timestamp)  $default,) {final _that = this;
switch (_that) {
case _DairyMeta():
return $default(_that.timestamp);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( DateTime? timestamp)?  $default,) {final _that = this;
switch (_that) {
case _DairyMeta() when $default != null:
return $default(_that.timestamp);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DairyMeta implements DairyMeta {
   _DairyMeta({this.timestamp});
  factory _DairyMeta.fromJson(Map<String, dynamic> json) => _$DairyMetaFromJson(json);

@override final  DateTime? timestamp;

/// Create a copy of DairyMeta
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DairyMetaCopyWith<_DairyMeta> get copyWith => __$DairyMetaCopyWithImpl<_DairyMeta>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DairyMetaToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DairyMeta&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,timestamp);

@override
String toString() {
  return 'DairyMeta(timestamp: $timestamp)';
}


}

/// @nodoc
abstract mixin class _$DairyMetaCopyWith<$Res> implements $DairyMetaCopyWith<$Res> {
  factory _$DairyMetaCopyWith(_DairyMeta value, $Res Function(_DairyMeta) _then) = __$DairyMetaCopyWithImpl;
@override @useResult
$Res call({
 DateTime? timestamp
});




}
/// @nodoc
class __$DairyMetaCopyWithImpl<$Res>
    implements _$DairyMetaCopyWith<$Res> {
  __$DairyMetaCopyWithImpl(this._self, this._then);

  final _DairyMeta _self;
  final $Res Function(_DairyMeta) _then;

/// Create a copy of DairyMeta
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? timestamp = freezed,}) {
  return _then(_DairyMeta(
timestamp: freezed == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
