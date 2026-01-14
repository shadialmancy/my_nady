// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'updated_at.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UpdatedAt {

@JsonKey(name: '\$date') DateTime? get date;
/// Create a copy of UpdatedAt
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdatedAtCopyWith<UpdatedAt> get copyWith => _$UpdatedAtCopyWithImpl<UpdatedAt>(this as UpdatedAt, _$identity);

  /// Serializes this UpdatedAt to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdatedAt&&(identical(other.date, date) || other.date == date));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,date);

@override
String toString() {
  return 'UpdatedAt(date: $date)';
}


}

/// @nodoc
abstract mixin class $UpdatedAtCopyWith<$Res>  {
  factory $UpdatedAtCopyWith(UpdatedAt value, $Res Function(UpdatedAt) _then) = _$UpdatedAtCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: '\$date') DateTime? date
});




}
/// @nodoc
class _$UpdatedAtCopyWithImpl<$Res>
    implements $UpdatedAtCopyWith<$Res> {
  _$UpdatedAtCopyWithImpl(this._self, this._then);

  final UpdatedAt _self;
  final $Res Function(UpdatedAt) _then;

/// Create a copy of UpdatedAt
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? date = freezed,}) {
  return _then(_self.copyWith(
date: freezed == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [UpdatedAt].
extension UpdatedAtPatterns on UpdatedAt {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UpdatedAt value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UpdatedAt() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UpdatedAt value)  $default,){
final _that = this;
switch (_that) {
case _UpdatedAt():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UpdatedAt value)?  $default,){
final _that = this;
switch (_that) {
case _UpdatedAt() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: '\$date')  DateTime? date)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UpdatedAt() when $default != null:
return $default(_that.date);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: '\$date')  DateTime? date)  $default,) {final _that = this;
switch (_that) {
case _UpdatedAt():
return $default(_that.date);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: '\$date')  DateTime? date)?  $default,) {final _that = this;
switch (_that) {
case _UpdatedAt() when $default != null:
return $default(_that.date);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UpdatedAt implements UpdatedAt {
   _UpdatedAt({@JsonKey(name: '\$date') this.date});
  factory _UpdatedAt.fromJson(Map<String, dynamic> json) => _$UpdatedAtFromJson(json);

@override@JsonKey(name: '\$date') final  DateTime? date;

/// Create a copy of UpdatedAt
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdatedAtCopyWith<_UpdatedAt> get copyWith => __$UpdatedAtCopyWithImpl<_UpdatedAt>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UpdatedAtToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdatedAt&&(identical(other.date, date) || other.date == date));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,date);

@override
String toString() {
  return 'UpdatedAt(date: $date)';
}


}

/// @nodoc
abstract mixin class _$UpdatedAtCopyWith<$Res> implements $UpdatedAtCopyWith<$Res> {
  factory _$UpdatedAtCopyWith(_UpdatedAt value, $Res Function(_UpdatedAt) _then) = __$UpdatedAtCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: '\$date') DateTime? date
});




}
/// @nodoc
class __$UpdatedAtCopyWithImpl<$Res>
    implements _$UpdatedAtCopyWith<$Res> {
  __$UpdatedAtCopyWithImpl(this._self, this._then);

  final _UpdatedAt _self;
  final $Res Function(_UpdatedAt) _then;

/// Create a copy of UpdatedAt
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? date = freezed,}) {
  return _then(_UpdatedAt(
date: freezed == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
