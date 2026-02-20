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

 String? get id; String? get name; String? get providerId; List<String>? get photos; String? get logo; String? get description; String? get genderType; bool? get isFeatured; bool? get active; DateTime? get createdAt; DateTime? get updatedAt; dynamic get deletedAt; String? get branchTypeId; List<String>? get secondaryTypeIds; List<String>? get amenityIds; Location? get location; num? get distance; num? get minPlanPrice; num? get maxPlanPrice; BranchType? get branchType; Provider? get provider; List<Amenity>? get amenities; num? get rating; num? get reviewCount; List<Offer>? get offers; bool? get isFavorite;
/// Create a copy of Datum
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DatumCopyWith<Datum> get copyWith => _$DatumCopyWithImpl<Datum>(this as Datum, _$identity);

  /// Serializes this Datum to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Datum&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.providerId, providerId) || other.providerId == providerId)&&const DeepCollectionEquality().equals(other.photos, photos)&&(identical(other.logo, logo) || other.logo == logo)&&(identical(other.description, description) || other.description == description)&&(identical(other.genderType, genderType) || other.genderType == genderType)&&(identical(other.isFeatured, isFeatured) || other.isFeatured == isFeatured)&&(identical(other.active, active) || other.active == active)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&const DeepCollectionEquality().equals(other.deletedAt, deletedAt)&&(identical(other.branchTypeId, branchTypeId) || other.branchTypeId == branchTypeId)&&const DeepCollectionEquality().equals(other.secondaryTypeIds, secondaryTypeIds)&&const DeepCollectionEquality().equals(other.amenityIds, amenityIds)&&(identical(other.location, location) || other.location == location)&&(identical(other.distance, distance) || other.distance == distance)&&(identical(other.minPlanPrice, minPlanPrice) || other.minPlanPrice == minPlanPrice)&&(identical(other.maxPlanPrice, maxPlanPrice) || other.maxPlanPrice == maxPlanPrice)&&(identical(other.branchType, branchType) || other.branchType == branchType)&&(identical(other.provider, provider) || other.provider == provider)&&const DeepCollectionEquality().equals(other.amenities, amenities)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.reviewCount, reviewCount) || other.reviewCount == reviewCount)&&const DeepCollectionEquality().equals(other.offers, offers)&&(identical(other.isFavorite, isFavorite) || other.isFavorite == isFavorite));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,name,providerId,const DeepCollectionEquality().hash(photos),logo,description,genderType,isFeatured,active,createdAt,updatedAt,const DeepCollectionEquality().hash(deletedAt),branchTypeId,const DeepCollectionEquality().hash(secondaryTypeIds),const DeepCollectionEquality().hash(amenityIds),location,distance,minPlanPrice,maxPlanPrice,branchType,provider,const DeepCollectionEquality().hash(amenities),rating,reviewCount,const DeepCollectionEquality().hash(offers),isFavorite]);

@override
String toString() {
  return 'Datum(id: $id, name: $name, providerId: $providerId, photos: $photos, logo: $logo, description: $description, genderType: $genderType, isFeatured: $isFeatured, active: $active, createdAt: $createdAt, updatedAt: $updatedAt, deletedAt: $deletedAt, branchTypeId: $branchTypeId, secondaryTypeIds: $secondaryTypeIds, amenityIds: $amenityIds, location: $location, distance: $distance, minPlanPrice: $minPlanPrice, maxPlanPrice: $maxPlanPrice, branchType: $branchType, provider: $provider, amenities: $amenities, rating: $rating, reviewCount: $reviewCount, offers: $offers, isFavorite: $isFavorite)';
}


}

/// @nodoc
abstract mixin class $DatumCopyWith<$Res>  {
  factory $DatumCopyWith(Datum value, $Res Function(Datum) _then) = _$DatumCopyWithImpl;
@useResult
$Res call({
 String? id, String? name, String? providerId, List<String>? photos, String? logo, String? description, String? genderType, bool? isFeatured, bool? active, DateTime? createdAt, DateTime? updatedAt, dynamic deletedAt, String? branchTypeId, List<String>? secondaryTypeIds, List<String>? amenityIds, Location? location, num? distance, num? minPlanPrice, num? maxPlanPrice, BranchType? branchType, Provider? provider, List<Amenity>? amenities, num? rating, num? reviewCount, List<Offer>? offers, bool? isFavorite
});


$LocationCopyWith<$Res>? get location;$BranchTypeCopyWith<$Res>? get branchType;$ProviderCopyWith<$Res>? get provider;

}
/// @nodoc
class _$DatumCopyWithImpl<$Res>
    implements $DatumCopyWith<$Res> {
  _$DatumCopyWithImpl(this._self, this._then);

  final Datum _self;
  final $Res Function(Datum) _then;

/// Create a copy of Datum
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = freezed,Object? providerId = freezed,Object? photos = freezed,Object? logo = freezed,Object? description = freezed,Object? genderType = freezed,Object? isFeatured = freezed,Object? active = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? deletedAt = freezed,Object? branchTypeId = freezed,Object? secondaryTypeIds = freezed,Object? amenityIds = freezed,Object? location = freezed,Object? distance = freezed,Object? minPlanPrice = freezed,Object? maxPlanPrice = freezed,Object? branchType = freezed,Object? provider = freezed,Object? amenities = freezed,Object? rating = freezed,Object? reviewCount = freezed,Object? offers = freezed,Object? isFavorite = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,providerId: freezed == providerId ? _self.providerId : providerId // ignore: cast_nullable_to_non_nullable
as String?,photos: freezed == photos ? _self.photos : photos // ignore: cast_nullable_to_non_nullable
as List<String>?,logo: freezed == logo ? _self.logo : logo // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,genderType: freezed == genderType ? _self.genderType : genderType // ignore: cast_nullable_to_non_nullable
as String?,isFeatured: freezed == isFeatured ? _self.isFeatured : isFeatured // ignore: cast_nullable_to_non_nullable
as bool?,active: freezed == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,deletedAt: freezed == deletedAt ? _self.deletedAt : deletedAt // ignore: cast_nullable_to_non_nullable
as dynamic,branchTypeId: freezed == branchTypeId ? _self.branchTypeId : branchTypeId // ignore: cast_nullable_to_non_nullable
as String?,secondaryTypeIds: freezed == secondaryTypeIds ? _self.secondaryTypeIds : secondaryTypeIds // ignore: cast_nullable_to_non_nullable
as List<String>?,amenityIds: freezed == amenityIds ? _self.amenityIds : amenityIds // ignore: cast_nullable_to_non_nullable
as List<String>?,location: freezed == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as Location?,distance: freezed == distance ? _self.distance : distance // ignore: cast_nullable_to_non_nullable
as num?,minPlanPrice: freezed == minPlanPrice ? _self.minPlanPrice : minPlanPrice // ignore: cast_nullable_to_non_nullable
as num?,maxPlanPrice: freezed == maxPlanPrice ? _self.maxPlanPrice : maxPlanPrice // ignore: cast_nullable_to_non_nullable
as num?,branchType: freezed == branchType ? _self.branchType : branchType // ignore: cast_nullable_to_non_nullable
as BranchType?,provider: freezed == provider ? _self.provider : provider // ignore: cast_nullable_to_non_nullable
as Provider?,amenities: freezed == amenities ? _self.amenities : amenities // ignore: cast_nullable_to_non_nullable
as List<Amenity>?,rating: freezed == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as num?,reviewCount: freezed == reviewCount ? _self.reviewCount : reviewCount // ignore: cast_nullable_to_non_nullable
as num?,offers: freezed == offers ? _self.offers : offers // ignore: cast_nullable_to_non_nullable
as List<Offer>?,isFavorite: freezed == isFavorite ? _self.isFavorite : isFavorite // ignore: cast_nullable_to_non_nullable
as bool?,
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
}/// Create a copy of Datum
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProviderCopyWith<$Res>? get provider {
    if (_self.provider == null) {
    return null;
  }

  return $ProviderCopyWith<$Res>(_self.provider!, (value) {
    return _then(_self.copyWith(provider: value));
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? id,  String? name,  String? providerId,  List<String>? photos,  String? logo,  String? description,  String? genderType,  bool? isFeatured,  bool? active,  DateTime? createdAt,  DateTime? updatedAt,  dynamic deletedAt,  String? branchTypeId,  List<String>? secondaryTypeIds,  List<String>? amenityIds,  Location? location,  num? distance,  num? minPlanPrice,  num? maxPlanPrice,  BranchType? branchType,  Provider? provider,  List<Amenity>? amenities,  num? rating,  num? reviewCount,  List<Offer>? offers,  bool? isFavorite)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Datum() when $default != null:
return $default(_that.id,_that.name,_that.providerId,_that.photos,_that.logo,_that.description,_that.genderType,_that.isFeatured,_that.active,_that.createdAt,_that.updatedAt,_that.deletedAt,_that.branchTypeId,_that.secondaryTypeIds,_that.amenityIds,_that.location,_that.distance,_that.minPlanPrice,_that.maxPlanPrice,_that.branchType,_that.provider,_that.amenities,_that.rating,_that.reviewCount,_that.offers,_that.isFavorite);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? id,  String? name,  String? providerId,  List<String>? photos,  String? logo,  String? description,  String? genderType,  bool? isFeatured,  bool? active,  DateTime? createdAt,  DateTime? updatedAt,  dynamic deletedAt,  String? branchTypeId,  List<String>? secondaryTypeIds,  List<String>? amenityIds,  Location? location,  num? distance,  num? minPlanPrice,  num? maxPlanPrice,  BranchType? branchType,  Provider? provider,  List<Amenity>? amenities,  num? rating,  num? reviewCount,  List<Offer>? offers,  bool? isFavorite)  $default,) {final _that = this;
switch (_that) {
case _Datum():
return $default(_that.id,_that.name,_that.providerId,_that.photos,_that.logo,_that.description,_that.genderType,_that.isFeatured,_that.active,_that.createdAt,_that.updatedAt,_that.deletedAt,_that.branchTypeId,_that.secondaryTypeIds,_that.amenityIds,_that.location,_that.distance,_that.minPlanPrice,_that.maxPlanPrice,_that.branchType,_that.provider,_that.amenities,_that.rating,_that.reviewCount,_that.offers,_that.isFavorite);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? id,  String? name,  String? providerId,  List<String>? photos,  String? logo,  String? description,  String? genderType,  bool? isFeatured,  bool? active,  DateTime? createdAt,  DateTime? updatedAt,  dynamic deletedAt,  String? branchTypeId,  List<String>? secondaryTypeIds,  List<String>? amenityIds,  Location? location,  num? distance,  num? minPlanPrice,  num? maxPlanPrice,  BranchType? branchType,  Provider? provider,  List<Amenity>? amenities,  num? rating,  num? reviewCount,  List<Offer>? offers,  bool? isFavorite)?  $default,) {final _that = this;
switch (_that) {
case _Datum() when $default != null:
return $default(_that.id,_that.name,_that.providerId,_that.photos,_that.logo,_that.description,_that.genderType,_that.isFeatured,_that.active,_that.createdAt,_that.updatedAt,_that.deletedAt,_that.branchTypeId,_that.secondaryTypeIds,_that.amenityIds,_that.location,_that.distance,_that.minPlanPrice,_that.maxPlanPrice,_that.branchType,_that.provider,_that.amenities,_that.rating,_that.reviewCount,_that.offers,_that.isFavorite);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Datum implements Datum {
   _Datum({this.id, this.name, this.providerId, final  List<String>? photos, this.logo, this.description, this.genderType, this.isFeatured, this.active, this.createdAt, this.updatedAt, this.deletedAt, this.branchTypeId, final  List<String>? secondaryTypeIds, final  List<String>? amenityIds, this.location, this.distance, this.minPlanPrice, this.maxPlanPrice, this.branchType, this.provider, final  List<Amenity>? amenities, this.rating, this.reviewCount, final  List<Offer>? offers, this.isFavorite}): _photos = photos,_secondaryTypeIds = secondaryTypeIds,_amenityIds = amenityIds,_amenities = amenities,_offers = offers;
  factory _Datum.fromJson(Map<String, dynamic> json) => _$DatumFromJson(json);

@override final  String? id;
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
@override final  dynamic deletedAt;
@override final  String? branchTypeId;
 final  List<String>? _secondaryTypeIds;
@override List<String>? get secondaryTypeIds {
  final value = _secondaryTypeIds;
  if (value == null) return null;
  if (_secondaryTypeIds is EqualUnmodifiableListView) return _secondaryTypeIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<String>? _amenityIds;
@override List<String>? get amenityIds {
  final value = _amenityIds;
  if (value == null) return null;
  if (_amenityIds is EqualUnmodifiableListView) return _amenityIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  Location? location;
@override final  num? distance;
@override final  num? minPlanPrice;
@override final  num? maxPlanPrice;
@override final  BranchType? branchType;
@override final  Provider? provider;
 final  List<Amenity>? _amenities;
@override List<Amenity>? get amenities {
  final value = _amenities;
  if (value == null) return null;
  if (_amenities is EqualUnmodifiableListView) return _amenities;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  num? rating;
@override final  num? reviewCount;
 final  List<Offer>? _offers;
@override List<Offer>? get offers {
  final value = _offers;
  if (value == null) return null;
  if (_offers is EqualUnmodifiableListView) return _offers;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  bool? isFavorite;

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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Datum&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.providerId, providerId) || other.providerId == providerId)&&const DeepCollectionEquality().equals(other._photos, _photos)&&(identical(other.logo, logo) || other.logo == logo)&&(identical(other.description, description) || other.description == description)&&(identical(other.genderType, genderType) || other.genderType == genderType)&&(identical(other.isFeatured, isFeatured) || other.isFeatured == isFeatured)&&(identical(other.active, active) || other.active == active)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&const DeepCollectionEquality().equals(other.deletedAt, deletedAt)&&(identical(other.branchTypeId, branchTypeId) || other.branchTypeId == branchTypeId)&&const DeepCollectionEquality().equals(other._secondaryTypeIds, _secondaryTypeIds)&&const DeepCollectionEquality().equals(other._amenityIds, _amenityIds)&&(identical(other.location, location) || other.location == location)&&(identical(other.distance, distance) || other.distance == distance)&&(identical(other.minPlanPrice, minPlanPrice) || other.minPlanPrice == minPlanPrice)&&(identical(other.maxPlanPrice, maxPlanPrice) || other.maxPlanPrice == maxPlanPrice)&&(identical(other.branchType, branchType) || other.branchType == branchType)&&(identical(other.provider, provider) || other.provider == provider)&&const DeepCollectionEquality().equals(other._amenities, _amenities)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.reviewCount, reviewCount) || other.reviewCount == reviewCount)&&const DeepCollectionEquality().equals(other._offers, _offers)&&(identical(other.isFavorite, isFavorite) || other.isFavorite == isFavorite));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,name,providerId,const DeepCollectionEquality().hash(_photos),logo,description,genderType,isFeatured,active,createdAt,updatedAt,const DeepCollectionEquality().hash(deletedAt),branchTypeId,const DeepCollectionEquality().hash(_secondaryTypeIds),const DeepCollectionEquality().hash(_amenityIds),location,distance,minPlanPrice,maxPlanPrice,branchType,provider,const DeepCollectionEquality().hash(_amenities),rating,reviewCount,const DeepCollectionEquality().hash(_offers),isFavorite]);

@override
String toString() {
  return 'Datum(id: $id, name: $name, providerId: $providerId, photos: $photos, logo: $logo, description: $description, genderType: $genderType, isFeatured: $isFeatured, active: $active, createdAt: $createdAt, updatedAt: $updatedAt, deletedAt: $deletedAt, branchTypeId: $branchTypeId, secondaryTypeIds: $secondaryTypeIds, amenityIds: $amenityIds, location: $location, distance: $distance, minPlanPrice: $minPlanPrice, maxPlanPrice: $maxPlanPrice, branchType: $branchType, provider: $provider, amenities: $amenities, rating: $rating, reviewCount: $reviewCount, offers: $offers, isFavorite: $isFavorite)';
}


}

/// @nodoc
abstract mixin class _$DatumCopyWith<$Res> implements $DatumCopyWith<$Res> {
  factory _$DatumCopyWith(_Datum value, $Res Function(_Datum) _then) = __$DatumCopyWithImpl;
@override @useResult
$Res call({
 String? id, String? name, String? providerId, List<String>? photos, String? logo, String? description, String? genderType, bool? isFeatured, bool? active, DateTime? createdAt, DateTime? updatedAt, dynamic deletedAt, String? branchTypeId, List<String>? secondaryTypeIds, List<String>? amenityIds, Location? location, num? distance, num? minPlanPrice, num? maxPlanPrice, BranchType? branchType, Provider? provider, List<Amenity>? amenities, num? rating, num? reviewCount, List<Offer>? offers, bool? isFavorite
});


@override $LocationCopyWith<$Res>? get location;@override $BranchTypeCopyWith<$Res>? get branchType;@override $ProviderCopyWith<$Res>? get provider;

}
/// @nodoc
class __$DatumCopyWithImpl<$Res>
    implements _$DatumCopyWith<$Res> {
  __$DatumCopyWithImpl(this._self, this._then);

  final _Datum _self;
  final $Res Function(_Datum) _then;

/// Create a copy of Datum
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = freezed,Object? providerId = freezed,Object? photos = freezed,Object? logo = freezed,Object? description = freezed,Object? genderType = freezed,Object? isFeatured = freezed,Object? active = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? deletedAt = freezed,Object? branchTypeId = freezed,Object? secondaryTypeIds = freezed,Object? amenityIds = freezed,Object? location = freezed,Object? distance = freezed,Object? minPlanPrice = freezed,Object? maxPlanPrice = freezed,Object? branchType = freezed,Object? provider = freezed,Object? amenities = freezed,Object? rating = freezed,Object? reviewCount = freezed,Object? offers = freezed,Object? isFavorite = freezed,}) {
  return _then(_Datum(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,providerId: freezed == providerId ? _self.providerId : providerId // ignore: cast_nullable_to_non_nullable
as String?,photos: freezed == photos ? _self._photos : photos // ignore: cast_nullable_to_non_nullable
as List<String>?,logo: freezed == logo ? _self.logo : logo // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,genderType: freezed == genderType ? _self.genderType : genderType // ignore: cast_nullable_to_non_nullable
as String?,isFeatured: freezed == isFeatured ? _self.isFeatured : isFeatured // ignore: cast_nullable_to_non_nullable
as bool?,active: freezed == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,deletedAt: freezed == deletedAt ? _self.deletedAt : deletedAt // ignore: cast_nullable_to_non_nullable
as dynamic,branchTypeId: freezed == branchTypeId ? _self.branchTypeId : branchTypeId // ignore: cast_nullable_to_non_nullable
as String?,secondaryTypeIds: freezed == secondaryTypeIds ? _self._secondaryTypeIds : secondaryTypeIds // ignore: cast_nullable_to_non_nullable
as List<String>?,amenityIds: freezed == amenityIds ? _self._amenityIds : amenityIds // ignore: cast_nullable_to_non_nullable
as List<String>?,location: freezed == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as Location?,distance: freezed == distance ? _self.distance : distance // ignore: cast_nullable_to_non_nullable
as num?,minPlanPrice: freezed == minPlanPrice ? _self.minPlanPrice : minPlanPrice // ignore: cast_nullable_to_non_nullable
as num?,maxPlanPrice: freezed == maxPlanPrice ? _self.maxPlanPrice : maxPlanPrice // ignore: cast_nullable_to_non_nullable
as num?,branchType: freezed == branchType ? _self.branchType : branchType // ignore: cast_nullable_to_non_nullable
as BranchType?,provider: freezed == provider ? _self.provider : provider // ignore: cast_nullable_to_non_nullable
as Provider?,amenities: freezed == amenities ? _self._amenities : amenities // ignore: cast_nullable_to_non_nullable
as List<Amenity>?,rating: freezed == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as num?,reviewCount: freezed == reviewCount ? _self.reviewCount : reviewCount // ignore: cast_nullable_to_non_nullable
as num?,offers: freezed == offers ? _self._offers : offers // ignore: cast_nullable_to_non_nullable
as List<Offer>?,isFavorite: freezed == isFavorite ? _self.isFavorite : isFavorite // ignore: cast_nullable_to_non_nullable
as bool?,
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
}/// Create a copy of Datum
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProviderCopyWith<$Res>? get provider {
    if (_self.provider == null) {
    return null;
  }

  return $ProviderCopyWith<$Res>(_self.provider!, (value) {
    return _then(_self.copyWith(provider: value));
  });
}
}

// dart format on
