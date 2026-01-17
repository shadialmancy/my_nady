// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'other_branch.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$OtherBranch {

 String? get id; String? get name; Location? get location;
/// Create a copy of OtherBranch
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OtherBranchCopyWith<OtherBranch> get copyWith => _$OtherBranchCopyWithImpl<OtherBranch>(this as OtherBranch, _$identity);

  /// Serializes this OtherBranch to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OtherBranch&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.location, location) || other.location == location));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,location);

@override
String toString() {
  return 'OtherBranch(id: $id, name: $name, location: $location)';
}


}

/// @nodoc
abstract mixin class $OtherBranchCopyWith<$Res>  {
  factory $OtherBranchCopyWith(OtherBranch value, $Res Function(OtherBranch) _then) = _$OtherBranchCopyWithImpl;
@useResult
$Res call({
 String? id, String? name, Location? location
});


$LocationCopyWith<$Res>? get location;

}
/// @nodoc
class _$OtherBranchCopyWithImpl<$Res>
    implements $OtherBranchCopyWith<$Res> {
  _$OtherBranchCopyWithImpl(this._self, this._then);

  final OtherBranch _self;
  final $Res Function(OtherBranch) _then;

/// Create a copy of OtherBranch
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = freezed,Object? location = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,location: freezed == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as Location?,
  ));
}
/// Create a copy of OtherBranch
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LocationCopyWith<$Res>? get location {
    if (_self.location == null) {
    return null;
  }

  return $LocationCopyWith<$Res>(_self.location!, (value) {
    return _then(_self.copyWith(location: value));
  });
}
}


/// Adds pattern-matching-related methods to [OtherBranch].
extension OtherBranchPatterns on OtherBranch {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OtherBranch value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OtherBranch() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OtherBranch value)  $default,){
final _that = this;
switch (_that) {
case _OtherBranch():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OtherBranch value)?  $default,){
final _that = this;
switch (_that) {
case _OtherBranch() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? id,  String? name,  Location? location)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OtherBranch() when $default != null:
return $default(_that.id,_that.name,_that.location);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? id,  String? name,  Location? location)  $default,) {final _that = this;
switch (_that) {
case _OtherBranch():
return $default(_that.id,_that.name,_that.location);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? id,  String? name,  Location? location)?  $default,) {final _that = this;
switch (_that) {
case _OtherBranch() when $default != null:
return $default(_that.id,_that.name,_that.location);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OtherBranch implements OtherBranch {
   _OtherBranch({this.id, this.name, this.location});
  factory _OtherBranch.fromJson(Map<String, dynamic> json) => _$OtherBranchFromJson(json);

@override final  String? id;
@override final  String? name;
@override final  Location? location;

/// Create a copy of OtherBranch
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OtherBranchCopyWith<_OtherBranch> get copyWith => __$OtherBranchCopyWithImpl<_OtherBranch>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OtherBranchToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OtherBranch&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.location, location) || other.location == location));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,location);

@override
String toString() {
  return 'OtherBranch(id: $id, name: $name, location: $location)';
}


}

/// @nodoc
abstract mixin class _$OtherBranchCopyWith<$Res> implements $OtherBranchCopyWith<$Res> {
  factory _$OtherBranchCopyWith(_OtherBranch value, $Res Function(_OtherBranch) _then) = __$OtherBranchCopyWithImpl;
@override @useResult
$Res call({
 String? id, String? name, Location? location
});


@override $LocationCopyWith<$Res>? get location;

}
/// @nodoc
class __$OtherBranchCopyWithImpl<$Res>
    implements _$OtherBranchCopyWith<$Res> {
  __$OtherBranchCopyWithImpl(this._self, this._then);

  final _OtherBranch _self;
  final $Res Function(_OtherBranch) _then;

/// Create a copy of OtherBranch
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = freezed,Object? location = freezed,}) {
  return _then(_OtherBranch(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,location: freezed == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as Location?,
  ));
}

/// Create a copy of OtherBranch
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LocationCopyWith<$Res>? get location {
    if (_self.location == null) {
    return null;
  }

  return $LocationCopyWith<$Res>(_self.location!, (value) {
    return _then(_self.copyWith(location: value));
  });
}
}

// dart format on
