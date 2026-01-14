// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'branch_type.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BranchType {

@JsonKey(name: '_id') Id? get id; String? get name; String? get icon; CreatedAt? get createdAt; UpdatedAt? get updatedAt; List<SecondaryBranchId>? get secondaryBranchIds;
/// Create a copy of BranchType
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BranchTypeCopyWith<BranchType> get copyWith => _$BranchTypeCopyWithImpl<BranchType>(this as BranchType, _$identity);

  /// Serializes this BranchType to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BranchType&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.icon, icon) || other.icon == icon)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&const DeepCollectionEquality().equals(other.secondaryBranchIds, secondaryBranchIds));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,icon,createdAt,updatedAt,const DeepCollectionEquality().hash(secondaryBranchIds));

@override
String toString() {
  return 'BranchType(id: $id, name: $name, icon: $icon, createdAt: $createdAt, updatedAt: $updatedAt, secondaryBranchIds: $secondaryBranchIds)';
}


}

/// @nodoc
abstract mixin class $BranchTypeCopyWith<$Res>  {
  factory $BranchTypeCopyWith(BranchType value, $Res Function(BranchType) _then) = _$BranchTypeCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: '_id') Id? id, String? name, String? icon, CreatedAt? createdAt, UpdatedAt? updatedAt, List<SecondaryBranchId>? secondaryBranchIds
});


$IdCopyWith<$Res>? get id;$CreatedAtCopyWith<$Res>? get createdAt;$UpdatedAtCopyWith<$Res>? get updatedAt;

}
/// @nodoc
class _$BranchTypeCopyWithImpl<$Res>
    implements $BranchTypeCopyWith<$Res> {
  _$BranchTypeCopyWithImpl(this._self, this._then);

  final BranchType _self;
  final $Res Function(BranchType) _then;

/// Create a copy of BranchType
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = freezed,Object? icon = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? secondaryBranchIds = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as Id?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,icon: freezed == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as CreatedAt?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as UpdatedAt?,secondaryBranchIds: freezed == secondaryBranchIds ? _self.secondaryBranchIds : secondaryBranchIds // ignore: cast_nullable_to_non_nullable
as List<SecondaryBranchId>?,
  ));
}
/// Create a copy of BranchType
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$IdCopyWith<$Res>? get id {
    if (_self.id == null) {
    return null;
  }

  return $IdCopyWith<$Res>(_self.id!, (value) {
    return _then(_self.copyWith(id: value));
  });
}/// Create a copy of BranchType
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CreatedAtCopyWith<$Res>? get createdAt {
    if (_self.createdAt == null) {
    return null;
  }

  return $CreatedAtCopyWith<$Res>(_self.createdAt!, (value) {
    return _then(_self.copyWith(createdAt: value));
  });
}/// Create a copy of BranchType
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UpdatedAtCopyWith<$Res>? get updatedAt {
    if (_self.updatedAt == null) {
    return null;
  }

  return $UpdatedAtCopyWith<$Res>(_self.updatedAt!, (value) {
    return _then(_self.copyWith(updatedAt: value));
  });
}
}


/// Adds pattern-matching-related methods to [BranchType].
extension BranchTypePatterns on BranchType {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BranchType value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BranchType() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BranchType value)  $default,){
final _that = this;
switch (_that) {
case _BranchType():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BranchType value)?  $default,){
final _that = this;
switch (_that) {
case _BranchType() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: '_id')  Id? id,  String? name,  String? icon,  CreatedAt? createdAt,  UpdatedAt? updatedAt,  List<SecondaryBranchId>? secondaryBranchIds)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BranchType() when $default != null:
return $default(_that.id,_that.name,_that.icon,_that.createdAt,_that.updatedAt,_that.secondaryBranchIds);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: '_id')  Id? id,  String? name,  String? icon,  CreatedAt? createdAt,  UpdatedAt? updatedAt,  List<SecondaryBranchId>? secondaryBranchIds)  $default,) {final _that = this;
switch (_that) {
case _BranchType():
return $default(_that.id,_that.name,_that.icon,_that.createdAt,_that.updatedAt,_that.secondaryBranchIds);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: '_id')  Id? id,  String? name,  String? icon,  CreatedAt? createdAt,  UpdatedAt? updatedAt,  List<SecondaryBranchId>? secondaryBranchIds)?  $default,) {final _that = this;
switch (_that) {
case _BranchType() when $default != null:
return $default(_that.id,_that.name,_that.icon,_that.createdAt,_that.updatedAt,_that.secondaryBranchIds);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BranchType implements BranchType {
   _BranchType({@JsonKey(name: '_id') this.id, this.name, this.icon, this.createdAt, this.updatedAt, final  List<SecondaryBranchId>? secondaryBranchIds}): _secondaryBranchIds = secondaryBranchIds;
  factory _BranchType.fromJson(Map<String, dynamic> json) => _$BranchTypeFromJson(json);

@override@JsonKey(name: '_id') final  Id? id;
@override final  String? name;
@override final  String? icon;
@override final  CreatedAt? createdAt;
@override final  UpdatedAt? updatedAt;
 final  List<SecondaryBranchId>? _secondaryBranchIds;
@override List<SecondaryBranchId>? get secondaryBranchIds {
  final value = _secondaryBranchIds;
  if (value == null) return null;
  if (_secondaryBranchIds is EqualUnmodifiableListView) return _secondaryBranchIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of BranchType
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BranchTypeCopyWith<_BranchType> get copyWith => __$BranchTypeCopyWithImpl<_BranchType>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BranchTypeToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BranchType&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.icon, icon) || other.icon == icon)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&const DeepCollectionEquality().equals(other._secondaryBranchIds, _secondaryBranchIds));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,icon,createdAt,updatedAt,const DeepCollectionEquality().hash(_secondaryBranchIds));

@override
String toString() {
  return 'BranchType(id: $id, name: $name, icon: $icon, createdAt: $createdAt, updatedAt: $updatedAt, secondaryBranchIds: $secondaryBranchIds)';
}


}

/// @nodoc
abstract mixin class _$BranchTypeCopyWith<$Res> implements $BranchTypeCopyWith<$Res> {
  factory _$BranchTypeCopyWith(_BranchType value, $Res Function(_BranchType) _then) = __$BranchTypeCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: '_id') Id? id, String? name, String? icon, CreatedAt? createdAt, UpdatedAt? updatedAt, List<SecondaryBranchId>? secondaryBranchIds
});


@override $IdCopyWith<$Res>? get id;@override $CreatedAtCopyWith<$Res>? get createdAt;@override $UpdatedAtCopyWith<$Res>? get updatedAt;

}
/// @nodoc
class __$BranchTypeCopyWithImpl<$Res>
    implements _$BranchTypeCopyWith<$Res> {
  __$BranchTypeCopyWithImpl(this._self, this._then);

  final _BranchType _self;
  final $Res Function(_BranchType) _then;

/// Create a copy of BranchType
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = freezed,Object? icon = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? secondaryBranchIds = freezed,}) {
  return _then(_BranchType(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as Id?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,icon: freezed == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as CreatedAt?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as UpdatedAt?,secondaryBranchIds: freezed == secondaryBranchIds ? _self._secondaryBranchIds : secondaryBranchIds // ignore: cast_nullable_to_non_nullable
as List<SecondaryBranchId>?,
  ));
}

/// Create a copy of BranchType
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$IdCopyWith<$Res>? get id {
    if (_self.id == null) {
    return null;
  }

  return $IdCopyWith<$Res>(_self.id!, (value) {
    return _then(_self.copyWith(id: value));
  });
}/// Create a copy of BranchType
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CreatedAtCopyWith<$Res>? get createdAt {
    if (_self.createdAt == null) {
    return null;
  }

  return $CreatedAtCopyWith<$Res>(_self.createdAt!, (value) {
    return _then(_self.copyWith(createdAt: value));
  });
}/// Create a copy of BranchType
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UpdatedAtCopyWith<$Res>? get updatedAt {
    if (_self.updatedAt == null) {
    return null;
  }

  return $UpdatedAtCopyWith<$Res>(_self.updatedAt!, (value) {
    return _then(_self.copyWith(updatedAt: value));
  });
}
}

// dart format on
