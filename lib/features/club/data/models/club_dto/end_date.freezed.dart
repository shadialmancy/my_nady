// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'end_date.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$EndDate {

@JsonKey(name: '\$date') DateTime? get date;
/// Create a copy of EndDate
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EndDateCopyWith<EndDate> get copyWith => _$EndDateCopyWithImpl<EndDate>(this as EndDate, _$identity);

  /// Serializes this EndDate to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EndDate&&(identical(other.date, date) || other.date == date));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,date);

@override
String toString() {
  return 'EndDate(date: $date)';
}


}

/// @nodoc
abstract mixin class $EndDateCopyWith<$Res>  {
  factory $EndDateCopyWith(EndDate value, $Res Function(EndDate) _then) = _$EndDateCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: '\$date') DateTime? date
});




}
/// @nodoc
class _$EndDateCopyWithImpl<$Res>
    implements $EndDateCopyWith<$Res> {
  _$EndDateCopyWithImpl(this._self, this._then);

  final EndDate _self;
  final $Res Function(EndDate) _then;

/// Create a copy of EndDate
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? date = freezed,}) {
  return _then(_self.copyWith(
date: freezed == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [EndDate].
extension EndDatePatterns on EndDate {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EndDate value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EndDate() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EndDate value)  $default,){
final _that = this;
switch (_that) {
case _EndDate():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EndDate value)?  $default,){
final _that = this;
switch (_that) {
case _EndDate() when $default != null:
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
case _EndDate() when $default != null:
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
case _EndDate():
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
case _EndDate() when $default != null:
return $default(_that.date);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _EndDate implements EndDate {
   _EndDate({@JsonKey(name: '\$date') this.date});
  factory _EndDate.fromJson(Map<String, dynamic> json) => _$EndDateFromJson(json);

@override@JsonKey(name: '\$date') final  DateTime? date;

/// Create a copy of EndDate
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EndDateCopyWith<_EndDate> get copyWith => __$EndDateCopyWithImpl<_EndDate>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EndDateToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EndDate&&(identical(other.date, date) || other.date == date));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,date);

@override
String toString() {
  return 'EndDate(date: $date)';
}


}

/// @nodoc
abstract mixin class _$EndDateCopyWith<$Res> implements $EndDateCopyWith<$Res> {
  factory _$EndDateCopyWith(_EndDate value, $Res Function(_EndDate) _then) = __$EndDateCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: '\$date') DateTime? date
});




}
/// @nodoc
class __$EndDateCopyWithImpl<$Res>
    implements _$EndDateCopyWith<$Res> {
  __$EndDateCopyWithImpl(this._self, this._then);

  final _EndDate _self;
  final $Res Function(_EndDate) _then;

/// Create a copy of EndDate
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? date = freezed,}) {
  return _then(_EndDate(
date: freezed == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
