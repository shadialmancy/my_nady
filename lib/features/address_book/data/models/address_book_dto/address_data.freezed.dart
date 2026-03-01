// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'address_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AddressData {

 Location? get location; String? get id; String? get userId; String? get label; bool? get isDefault; DateTime? get createdAt; DateTime? get updatedAt;
/// Create a copy of AddressData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddressDataCopyWith<AddressData> get copyWith => _$AddressDataCopyWithImpl<AddressData>(this as AddressData, _$identity);

  /// Serializes this AddressData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddressData&&(identical(other.location, location) || other.location == location)&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.label, label) || other.label == label)&&(identical(other.isDefault, isDefault) || other.isDefault == isDefault)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,location,id,userId,label,isDefault,createdAt,updatedAt);

@override
String toString() {
  return 'AddressData(location: $location, id: $id, userId: $userId, label: $label, isDefault: $isDefault, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $AddressDataCopyWith<$Res>  {
  factory $AddressDataCopyWith(AddressData value, $Res Function(AddressData) _then) = _$AddressDataCopyWithImpl;
@useResult
$Res call({
 Location? location, String? id, String? userId, String? label, bool? isDefault, DateTime? createdAt, DateTime? updatedAt
});


$LocationCopyWith<$Res>? get location;

}
/// @nodoc
class _$AddressDataCopyWithImpl<$Res>
    implements $AddressDataCopyWith<$Res> {
  _$AddressDataCopyWithImpl(this._self, this._then);

  final AddressData _self;
  final $Res Function(AddressData) _then;

/// Create a copy of AddressData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? location = freezed,Object? id = freezed,Object? userId = freezed,Object? label = freezed,Object? isDefault = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_self.copyWith(
location: freezed == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as Location?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String?,label: freezed == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String?,isDefault: freezed == isDefault ? _self.isDefault : isDefault // ignore: cast_nullable_to_non_nullable
as bool?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}
/// Create a copy of AddressData
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


/// Adds pattern-matching-related methods to [AddressData].
extension AddressDataPatterns on AddressData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AddressData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AddressData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AddressData value)  $default,){
final _that = this;
switch (_that) {
case _AddressData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AddressData value)?  $default,){
final _that = this;
switch (_that) {
case _AddressData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Location? location,  String? id,  String? userId,  String? label,  bool? isDefault,  DateTime? createdAt,  DateTime? updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AddressData() when $default != null:
return $default(_that.location,_that.id,_that.userId,_that.label,_that.isDefault,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Location? location,  String? id,  String? userId,  String? label,  bool? isDefault,  DateTime? createdAt,  DateTime? updatedAt)  $default,) {final _that = this;
switch (_that) {
case _AddressData():
return $default(_that.location,_that.id,_that.userId,_that.label,_that.isDefault,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Location? location,  String? id,  String? userId,  String? label,  bool? isDefault,  DateTime? createdAt,  DateTime? updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _AddressData() when $default != null:
return $default(_that.location,_that.id,_that.userId,_that.label,_that.isDefault,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AddressData implements AddressData {
   _AddressData({this.location, this.id, this.userId, this.label, this.isDefault, this.createdAt, this.updatedAt});
  factory _AddressData.fromJson(Map<String, dynamic> json) => _$AddressDataFromJson(json);

@override final  Location? location;
@override final  String? id;
@override final  String? userId;
@override final  String? label;
@override final  bool? isDefault;
@override final  DateTime? createdAt;
@override final  DateTime? updatedAt;

/// Create a copy of AddressData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AddressDataCopyWith<_AddressData> get copyWith => __$AddressDataCopyWithImpl<_AddressData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AddressDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddressData&&(identical(other.location, location) || other.location == location)&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.label, label) || other.label == label)&&(identical(other.isDefault, isDefault) || other.isDefault == isDefault)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,location,id,userId,label,isDefault,createdAt,updatedAt);

@override
String toString() {
  return 'AddressData(location: $location, id: $id, userId: $userId, label: $label, isDefault: $isDefault, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$AddressDataCopyWith<$Res> implements $AddressDataCopyWith<$Res> {
  factory _$AddressDataCopyWith(_AddressData value, $Res Function(_AddressData) _then) = __$AddressDataCopyWithImpl;
@override @useResult
$Res call({
 Location? location, String? id, String? userId, String? label, bool? isDefault, DateTime? createdAt, DateTime? updatedAt
});


@override $LocationCopyWith<$Res>? get location;

}
/// @nodoc
class __$AddressDataCopyWithImpl<$Res>
    implements _$AddressDataCopyWith<$Res> {
  __$AddressDataCopyWithImpl(this._self, this._then);

  final _AddressData _self;
  final $Res Function(_AddressData) _then;

/// Create a copy of AddressData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? location = freezed,Object? id = freezed,Object? userId = freezed,Object? label = freezed,Object? isDefault = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_AddressData(
location: freezed == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as Location?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String?,label: freezed == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String?,isDefault: freezed == isDefault ? _self.isDefault : isDefault // ignore: cast_nullable_to_non_nullable
as bool?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

/// Create a copy of AddressData
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
