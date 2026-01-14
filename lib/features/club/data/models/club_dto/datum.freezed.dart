// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'datum.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Datum {

 String? get name; String? get providerId; List<String>? get photos; String? get logo; String? get description; String? get genderType; bool? get isFeatured; bool? get active; DateTime? get createdAt; DateTime? get updatedAt; String? get branchTypeId; List<SecondaryTypeId>? get secondaryTypeIds; List<AmenityId>? get amenityIds; Location? get location; num? get distance; num? get minPlanPrice; BranchType? get branchType; List<Offer>? get offers; String? get id;
/// Create a copy of Datum
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DatumCopyWith<Datum> get copyWith => _$DatumCopyWithImpl<Datum>(this as Datum, _$identity);

  /// Serializes this Datum to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Datum&&(identical(other.name, name) || other.name == name)&&(identical(other.providerId, providerId) || other.providerId == providerId)&&const DeepCollectionEquality().equals(other.photos, photos)&&(identical(other.logo, logo) || other.logo == logo)&&(identical(other.description, description) || other.description == description)&&(identical(other.genderType, genderType) || other.genderType == genderType)&&(identical(other.isFeatured, isFeatured) || other.isFeatured == isFeatured)&&(identical(other.active, active) || other.active == active)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.branchTypeId, branchTypeId) || other.branchTypeId == branchTypeId)&&const DeepCollectionEquality().equals(other.secondaryTypeIds, secondaryTypeIds)&&const DeepCollectionEquality().equals(other.amenityIds, amenityIds)&&(identical(other.location, location) || other.location == location)&&(identical(other.distance, distance) || other.distance == distance)&&(identical(other.minPlanPrice, minPlanPrice) || other.minPlanPrice == minPlanPrice)&&(identical(other.branchType, branchType) || other.branchType == branchType)&&const DeepCollectionEquality().equals(other.offers, offers)&&(identical(other.id, id) || other.id == id));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,name,providerId,const DeepCollectionEquality().hash(photos),logo,description,genderType,isFeatured,active,createdAt,updatedAt,branchTypeId,const DeepCollectionEquality().hash(secondaryTypeIds),const DeepCollectionEquality().hash(amenityIds),location,distance,minPlanPrice,branchType,const DeepCollectionEquality().hash(offers),id]);

@override
String toString() {
  return 'Datum(name: $name, providerId: $providerId, photos: $photos, logo: $logo, description: $description, genderType: $genderType, isFeatured: $isFeatured, active: $active, createdAt: $createdAt, updatedAt: $updatedAt, branchTypeId: $branchTypeId, secondaryTypeIds: $secondaryTypeIds, amenityIds: $amenityIds, location: $location, distance: $distance, minPlanPrice: $minPlanPrice, branchType: $branchType, offers: $offers, id: $id)';
}


}

/// @nodoc
abstract mixin class $DatumCopyWith<$Res>  {
  factory $DatumCopyWith(Datum value, $Res Function(Datum) _then) = _$DatumCopyWithImpl;
@useResult
$Res call({
 String? name, String? providerId, List<String>? photos, String? logo, String? description, String? genderType, bool? isFeatured, bool? active, DateTime? createdAt, DateTime? updatedAt, String? branchTypeId, List<SecondaryTypeId>? secondaryTypeIds, List<AmenityId>? amenityIds, Location? location, num? distance, num? minPlanPrice, BranchType? branchType, List<Offer>? offers, String? id
});


$LocationCopyWith<$Res>? get location;$BranchTypeCopyWith<$Res>? get branchType;

}
/// @nodoc
class _$DatumCopyWithImpl<$Res>
    implements $DatumCopyWith<$Res> {
  _$DatumCopyWithImpl(this._self, this._then);

  final Datum _self;
  final $Res Function(Datum) _then;

/// Create a copy of Datum
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = freezed,Object? providerId = freezed,Object? photos = freezed,Object? logo = freezed,Object? description = freezed,Object? genderType = freezed,Object? isFeatured = freezed,Object? active = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? branchTypeId = freezed,Object? secondaryTypeIds = freezed,Object? amenityIds = freezed,Object? location = freezed,Object? distance = freezed,Object? minPlanPrice = freezed,Object? branchType = freezed,Object? offers = freezed,Object? id = freezed,}) {
  return _then(_self.copyWith(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,providerId: freezed == providerId ? _self.providerId : providerId // ignore: cast_nullable_to_non_nullable
as String?,photos: freezed == photos ? _self.photos : photos // ignore: cast_nullable_to_non_nullable
as List<String>?,logo: freezed == logo ? _self.logo : logo // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,genderType: freezed == genderType ? _self.genderType : genderType // ignore: cast_nullable_to_non_nullable
as String?,isFeatured: freezed == isFeatured ? _self.isFeatured : isFeatured // ignore: cast_nullable_to_non_nullable
as bool?,active: freezed == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,branchTypeId: freezed == branchTypeId ? _self.branchTypeId : branchTypeId // ignore: cast_nullable_to_non_nullable
as String?,secondaryTypeIds: freezed == secondaryTypeIds ? _self.secondaryTypeIds : secondaryTypeIds // ignore: cast_nullable_to_non_nullable
as List<SecondaryTypeId>?,amenityIds: freezed == amenityIds ? _self.amenityIds : amenityIds // ignore: cast_nullable_to_non_nullable
as List<AmenityId>?,location: freezed == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as Location?,distance: freezed == distance ? _self.distance : distance // ignore: cast_nullable_to_non_nullable
as num?,minPlanPrice: freezed == minPlanPrice ? _self.minPlanPrice : minPlanPrice // ignore: cast_nullable_to_non_nullable
as num?,branchType: freezed == branchType ? _self.branchType : branchType // ignore: cast_nullable_to_non_nullable
as BranchType?,offers: freezed == offers ? _self.offers : offers // ignore: cast_nullable_to_non_nullable
as List<Offer>?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of Datum
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
}/// Create a copy of Datum
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BranchTypeCopyWith<$Res>? get branchType {
    if (_self.branchType == null) {
    return null;
  }

  return $BranchTypeCopyWith<$Res>(_self.branchType!, (value) {
    return _then(_self.copyWith(branchType: value));
  });
}
}


/// Adds pattern-matching-related methods to [Datum].
extension DatumPatterns on Datum {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Datum value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Datum() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Datum value)  $default,){
final _that = this;
switch (_that) {
case _Datum():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Datum value)?  $default,){
final _that = this;
switch (_that) {
case _Datum() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? name,  String? providerId,  List<String>? photos,  String? logo,  String? description,  String? genderType,  bool? isFeatured,  bool? active,  DateTime? createdAt,  DateTime? updatedAt,  String? branchTypeId,  List<SecondaryTypeId>? secondaryTypeIds,  List<AmenityId>? amenityIds,  Location? location,  num? distance,  num? minPlanPrice,  BranchType? branchType,  List<Offer>? offers,  String? id)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Datum() when $default != null:
return $default(_that.name,_that.providerId,_that.photos,_that.logo,_that.description,_that.genderType,_that.isFeatured,_that.active,_that.createdAt,_that.updatedAt,_that.branchTypeId,_that.secondaryTypeIds,_that.amenityIds,_that.location,_that.distance,_that.minPlanPrice,_that.branchType,_that.offers,_that.id);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? name,  String? providerId,  List<String>? photos,  String? logo,  String? description,  String? genderType,  bool? isFeatured,  bool? active,  DateTime? createdAt,  DateTime? updatedAt,  String? branchTypeId,  List<SecondaryTypeId>? secondaryTypeIds,  List<AmenityId>? amenityIds,  Location? location,  num? distance,  num? minPlanPrice,  BranchType? branchType,  List<Offer>? offers,  String? id)  $default,) {final _that = this;
switch (_that) {
case _Datum():
return $default(_that.name,_that.providerId,_that.photos,_that.logo,_that.description,_that.genderType,_that.isFeatured,_that.active,_that.createdAt,_that.updatedAt,_that.branchTypeId,_that.secondaryTypeIds,_that.amenityIds,_that.location,_that.distance,_that.minPlanPrice,_that.branchType,_that.offers,_that.id);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? name,  String? providerId,  List<String>? photos,  String? logo,  String? description,  String? genderType,  bool? isFeatured,  bool? active,  DateTime? createdAt,  DateTime? updatedAt,  String? branchTypeId,  List<SecondaryTypeId>? secondaryTypeIds,  List<AmenityId>? amenityIds,  Location? location,  num? distance,  num? minPlanPrice,  BranchType? branchType,  List<Offer>? offers,  String? id)?  $default,) {final _that = this;
switch (_that) {
case _Datum() when $default != null:
return $default(_that.name,_that.providerId,_that.photos,_that.logo,_that.description,_that.genderType,_that.isFeatured,_that.active,_that.createdAt,_that.updatedAt,_that.branchTypeId,_that.secondaryTypeIds,_that.amenityIds,_that.location,_that.distance,_that.minPlanPrice,_that.branchType,_that.offers,_that.id);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Datum implements Datum {
   _Datum({this.name, this.providerId, final  List<String>? photos, this.logo, this.description, this.genderType, this.isFeatured, this.active, this.createdAt, this.updatedAt, this.branchTypeId, final  List<SecondaryTypeId>? secondaryTypeIds, final  List<AmenityId>? amenityIds, this.location, this.distance, this.minPlanPrice, this.branchType, final  List<Offer>? offers, this.id}): _photos = photos,_secondaryTypeIds = secondaryTypeIds,_amenityIds = amenityIds,_offers = offers;
  factory _Datum.fromJson(Map<String, dynamic> json) => _$DatumFromJson(json);

@override final  String? name;
@override final  String? providerId;
 final  List<String>? _photos;
@override List<String>? get photos {
  final value = _photos;
  if (value == null) return null;
  if (_photos is EqualUnmodifiableListView) return _photos;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  String? logo;
@override final  String? description;
@override final  String? genderType;
@override final  bool? isFeatured;
@override final  bool? active;
@override final  DateTime? createdAt;
@override final  DateTime? updatedAt;
@override final  String? branchTypeId;
 final  List<SecondaryTypeId>? _secondaryTypeIds;
@override List<SecondaryTypeId>? get secondaryTypeIds {
  final value = _secondaryTypeIds;
  if (value == null) return null;
  if (_secondaryTypeIds is EqualUnmodifiableListView) return _secondaryTypeIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<AmenityId>? _amenityIds;
@override List<AmenityId>? get amenityIds {
  final value = _amenityIds;
  if (value == null) return null;
  if (_amenityIds is EqualUnmodifiableListView) return _amenityIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  Location? location;
@override final  num? distance;
@override final  num? minPlanPrice;
@override final  BranchType? branchType;
 final  List<Offer>? _offers;
@override List<Offer>? get offers {
  final value = _offers;
  if (value == null) return null;
  if (_offers is EqualUnmodifiableListView) return _offers;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  String? id;

/// Create a copy of Datum
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DatumCopyWith<_Datum> get copyWith => __$DatumCopyWithImpl<_Datum>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DatumToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Datum&&(identical(other.name, name) || other.name == name)&&(identical(other.providerId, providerId) || other.providerId == providerId)&&const DeepCollectionEquality().equals(other._photos, _photos)&&(identical(other.logo, logo) || other.logo == logo)&&(identical(other.description, description) || other.description == description)&&(identical(other.genderType, genderType) || other.genderType == genderType)&&(identical(other.isFeatured, isFeatured) || other.isFeatured == isFeatured)&&(identical(other.active, active) || other.active == active)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.branchTypeId, branchTypeId) || other.branchTypeId == branchTypeId)&&const DeepCollectionEquality().equals(other._secondaryTypeIds, _secondaryTypeIds)&&const DeepCollectionEquality().equals(other._amenityIds, _amenityIds)&&(identical(other.location, location) || other.location == location)&&(identical(other.distance, distance) || other.distance == distance)&&(identical(other.minPlanPrice, minPlanPrice) || other.minPlanPrice == minPlanPrice)&&(identical(other.branchType, branchType) || other.branchType == branchType)&&const DeepCollectionEquality().equals(other._offers, _offers)&&(identical(other.id, id) || other.id == id));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,name,providerId,const DeepCollectionEquality().hash(_photos),logo,description,genderType,isFeatured,active,createdAt,updatedAt,branchTypeId,const DeepCollectionEquality().hash(_secondaryTypeIds),const DeepCollectionEquality().hash(_amenityIds),location,distance,minPlanPrice,branchType,const DeepCollectionEquality().hash(_offers),id]);

@override
String toString() {
  return 'Datum(name: $name, providerId: $providerId, photos: $photos, logo: $logo, description: $description, genderType: $genderType, isFeatured: $isFeatured, active: $active, createdAt: $createdAt, updatedAt: $updatedAt, branchTypeId: $branchTypeId, secondaryTypeIds: $secondaryTypeIds, amenityIds: $amenityIds, location: $location, distance: $distance, minPlanPrice: $minPlanPrice, branchType: $branchType, offers: $offers, id: $id)';
}


}

/// @nodoc
abstract mixin class _$DatumCopyWith<$Res> implements $DatumCopyWith<$Res> {
  factory _$DatumCopyWith(_Datum value, $Res Function(_Datum) _then) = __$DatumCopyWithImpl;
@override @useResult
$Res call({
 String? name, String? providerId, List<String>? photos, String? logo, String? description, String? genderType, bool? isFeatured, bool? active, DateTime? createdAt, DateTime? updatedAt, String? branchTypeId, List<SecondaryTypeId>? secondaryTypeIds, List<AmenityId>? amenityIds, Location? location, num? distance, num? minPlanPrice, BranchType? branchType, List<Offer>? offers, String? id
});


@override $LocationCopyWith<$Res>? get location;@override $BranchTypeCopyWith<$Res>? get branchType;

}
/// @nodoc
class __$DatumCopyWithImpl<$Res>
    implements _$DatumCopyWith<$Res> {
  __$DatumCopyWithImpl(this._self, this._then);

  final _Datum _self;
  final $Res Function(_Datum) _then;

/// Create a copy of Datum
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = freezed,Object? providerId = freezed,Object? photos = freezed,Object? logo = freezed,Object? description = freezed,Object? genderType = freezed,Object? isFeatured = freezed,Object? active = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? branchTypeId = freezed,Object? secondaryTypeIds = freezed,Object? amenityIds = freezed,Object? location = freezed,Object? distance = freezed,Object? minPlanPrice = freezed,Object? branchType = freezed,Object? offers = freezed,Object? id = freezed,}) {
  return _then(_Datum(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,providerId: freezed == providerId ? _self.providerId : providerId // ignore: cast_nullable_to_non_nullable
as String?,photos: freezed == photos ? _self._photos : photos // ignore: cast_nullable_to_non_nullable
as List<String>?,logo: freezed == logo ? _self.logo : logo // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,genderType: freezed == genderType ? _self.genderType : genderType // ignore: cast_nullable_to_non_nullable
as String?,isFeatured: freezed == isFeatured ? _self.isFeatured : isFeatured // ignore: cast_nullable_to_non_nullable
as bool?,active: freezed == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,branchTypeId: freezed == branchTypeId ? _self.branchTypeId : branchTypeId // ignore: cast_nullable_to_non_nullable
as String?,secondaryTypeIds: freezed == secondaryTypeIds ? _self._secondaryTypeIds : secondaryTypeIds // ignore: cast_nullable_to_non_nullable
as List<SecondaryTypeId>?,amenityIds: freezed == amenityIds ? _self._amenityIds : amenityIds // ignore: cast_nullable_to_non_nullable
as List<AmenityId>?,location: freezed == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as Location?,distance: freezed == distance ? _self.distance : distance // ignore: cast_nullable_to_non_nullable
as num?,minPlanPrice: freezed == minPlanPrice ? _self.minPlanPrice : minPlanPrice // ignore: cast_nullable_to_non_nullable
as num?,branchType: freezed == branchType ? _self.branchType : branchType // ignore: cast_nullable_to_non_nullable
as BranchType?,offers: freezed == offers ? _self._offers : offers // ignore: cast_nullable_to_non_nullable
as List<Offer>?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of Datum
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
}/// Create a copy of Datum
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BranchTypeCopyWith<$Res>? get branchType {
    if (_self.branchType == null) {
    return null;
  }

  return $BranchTypeCopyWith<$Res>(_self.branchType!, (value) {
    return _then(_self.copyWith(branchType: value));
  });
}
}

// dart format on
