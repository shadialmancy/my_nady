// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'secondary_branch_id.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SecondaryBranchId {

@JsonKey(name: '\$oid') String? get oid;
/// Create a copy of SecondaryBranchId
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SecondaryBranchIdCopyWith<SecondaryBranchId> get copyWith => _$SecondaryBranchIdCopyWithImpl<SecondaryBranchId>(this as SecondaryBranchId, _$identity);

  /// Serializes this SecondaryBranchId to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SecondaryBranchId&&(identical(other.oid, oid) || other.oid == oid));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,oid);

@override
String toString() {
  return 'SecondaryBranchId(oid: $oid)';
}


}

/// @nodoc
abstract mixin class $SecondaryBranchIdCopyWith<$Res>  {
  factory $SecondaryBranchIdCopyWith(SecondaryBranchId value, $Res Function(SecondaryBranchId) _then) = _$SecondaryBranchIdCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: '\$oid') String? oid
});




}
/// @nodoc
class _$SecondaryBranchIdCopyWithImpl<$Res>
    implements $SecondaryBranchIdCopyWith<$Res> {
  _$SecondaryBranchIdCopyWithImpl(this._self, this._then);

  final SecondaryBranchId _self;
  final $Res Function(SecondaryBranchId) _then;

/// Create a copy of SecondaryBranchId
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? oid = freezed,}) {
  return _then(_self.copyWith(
oid: freezed == oid ? _self.oid : oid // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [SecondaryBranchId].
extension SecondaryBranchIdPatterns on SecondaryBranchId {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SecondaryBranchId value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SecondaryBranchId() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SecondaryBranchId value)  $default,){
final _that = this;
switch (_that) {
case _SecondaryBranchId():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SecondaryBranchId value)?  $default,){
final _that = this;
switch (_that) {
case _SecondaryBranchId() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: '\$oid')  String? oid)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SecondaryBranchId() when $default != null:
return $default(_that.oid);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: '\$oid')  String? oid)  $default,) {final _that = this;
switch (_that) {
case _SecondaryBranchId():
return $default(_that.oid);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: '\$oid')  String? oid)?  $default,) {final _that = this;
switch (_that) {
case _SecondaryBranchId() when $default != null:
return $default(_that.oid);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SecondaryBranchId implements SecondaryBranchId {
   _SecondaryBranchId({@JsonKey(name: '\$oid') this.oid});
  factory _SecondaryBranchId.fromJson(Map<String, dynamic> json) => _$SecondaryBranchIdFromJson(json);

@override@JsonKey(name: '\$oid') final  String? oid;

/// Create a copy of SecondaryBranchId
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SecondaryBranchIdCopyWith<_SecondaryBranchId> get copyWith => __$SecondaryBranchIdCopyWithImpl<_SecondaryBranchId>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SecondaryBranchIdToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SecondaryBranchId&&(identical(other.oid, oid) || other.oid == oid));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,oid);

@override
String toString() {
  return 'SecondaryBranchId(oid: $oid)';
}


}

/// @nodoc
abstract mixin class _$SecondaryBranchIdCopyWith<$Res> implements $SecondaryBranchIdCopyWith<$Res> {
  factory _$SecondaryBranchIdCopyWith(_SecondaryBranchId value, $Res Function(_SecondaryBranchId) _then) = __$SecondaryBranchIdCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: '\$oid') String? oid
});




}
/// @nodoc
class __$SecondaryBranchIdCopyWithImpl<$Res>
    implements _$SecondaryBranchIdCopyWith<$Res> {
  __$SecondaryBranchIdCopyWithImpl(this._self, this._then);

  final _SecondaryBranchId _self;
  final $Res Function(_SecondaryBranchId) _then;

/// Create a copy of SecondaryBranchId
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? oid = freezed,}) {
  return _then(_SecondaryBranchId(
oid: freezed == oid ? _self.oid : oid // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
