// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'created_at.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CreatedAt {

@JsonKey(name: '\$date') DateTime? get date;
/// Create a copy of CreatedAt
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreatedAtCopyWith<CreatedAt> get copyWith => _$CreatedAtCopyWithImpl<CreatedAt>(this as CreatedAt, _$identity);

  /// Serializes this CreatedAt to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreatedAt&&(identical(other.date, date) || other.date == date));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,date);

@override
String toString() {
  return 'CreatedAt(date: $date)';
}


}

/// @nodoc
abstract mixin class $CreatedAtCopyWith<$Res>  {
  factory $CreatedAtCopyWith(CreatedAt value, $Res Function(CreatedAt) _then) = _$CreatedAtCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: '\$date') DateTime? date
});




}
/// @nodoc
class _$CreatedAtCopyWithImpl<$Res>
    implements $CreatedAtCopyWith<$Res> {
  _$CreatedAtCopyWithImpl(this._self, this._then);

  final CreatedAt _self;
  final $Res Function(CreatedAt) _then;

/// Create a copy of CreatedAt
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? date = freezed,}) {
  return _then(_self.copyWith(
date: freezed == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [CreatedAt].
extension CreatedAtPatterns on CreatedAt {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreatedAt value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreatedAt() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreatedAt value)  $default,){
final _that = this;
switch (_that) {
case _CreatedAt():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreatedAt value)?  $default,){
final _that = this;
switch (_that) {
case _CreatedAt() when $default != null:
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
case _CreatedAt() when $default != null:
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
case _CreatedAt():
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
case _CreatedAt() when $default != null:
return $default(_that.date);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CreatedAt implements CreatedAt {
   _CreatedAt({@JsonKey(name: '\$date') this.date});
  factory _CreatedAt.fromJson(Map<String, dynamic> json) => _$CreatedAtFromJson(json);

@override@JsonKey(name: '\$date') final  DateTime? date;

/// Create a copy of CreatedAt
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreatedAtCopyWith<_CreatedAt> get copyWith => __$CreatedAtCopyWithImpl<_CreatedAt>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreatedAtToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreatedAt&&(identical(other.date, date) || other.date == date));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,date);

@override
String toString() {
  return 'CreatedAt(date: $date)';
}


}

/// @nodoc
abstract mixin class _$CreatedAtCopyWith<$Res> implements $CreatedAtCopyWith<$Res> {
  factory _$CreatedAtCopyWith(_CreatedAt value, $Res Function(_CreatedAt) _then) = __$CreatedAtCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: '\$date') DateTime? date
});




}
/// @nodoc
class __$CreatedAtCopyWithImpl<$Res>
    implements _$CreatedAtCopyWith<$Res> {
  __$CreatedAtCopyWithImpl(this._self, this._then);

  final _CreatedAt _self;
  final $Res Function(_CreatedAt) _then;

/// Create a copy of CreatedAt
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? date = freezed,}) {
  return _then(_CreatedAt(
date: freezed == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
