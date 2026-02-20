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

 String? get id; String? get name; String? get description; List<String>? get photos; String? get logo; Location? get location; String? get genderType; bool? get active; bool? get isFeatured; String? get providerId; Provider? get provider; BranchType? get branchType; List<Amenity>? get amenities; List<dynamic>? get offers; bool? get hasOffers; num? get reviewCount; bool? get isFavorite;
/// Create a copy of Datum
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DatumCopyWith<Datum> get copyWith => _$DatumCopyWithImpl<Datum>(this as Datum, _$identity);

  /// Serializes this Datum to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Datum&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&const DeepCollectionEquality().equals(other.photos, photos)&&(identical(other.logo, logo) || other.logo == logo)&&(identical(other.location, location) || other.location == location)&&(identical(other.genderType, genderType) || other.genderType == genderType)&&(identical(other.active, active) || other.active == active)&&(identical(other.isFeatured, isFeatured) || other.isFeatured == isFeatured)&&(identical(other.providerId, providerId) || other.providerId == providerId)&&(identical(other.provider, provider) || other.provider == provider)&&(identical(other.branchType, branchType) || other.branchType == branchType)&&const DeepCollectionEquality().equals(other.amenities, amenities)&&const DeepCollectionEquality().equals(other.offers, offers)&&(identical(other.hasOffers, hasOffers) || other.hasOffers == hasOffers)&&(identical(other.reviewCount, reviewCount) || other.reviewCount == reviewCount)&&(identical(other.isFavorite, isFavorite) || other.isFavorite == isFavorite));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,description,const DeepCollectionEquality().hash(photos),logo,location,genderType,active,isFeatured,providerId,provider,branchType,const DeepCollectionEquality().hash(amenities),const DeepCollectionEquality().hash(offers),hasOffers,reviewCount,isFavorite);

@override
String toString() {
  return 'Datum(id: $id, name: $name, description: $description, photos: $photos, logo: $logo, location: $location, genderType: $genderType, active: $active, isFeatured: $isFeatured, providerId: $providerId, provider: $provider, branchType: $branchType, amenities: $amenities, offers: $offers, hasOffers: $hasOffers, reviewCount: $reviewCount, isFavorite: $isFavorite)';
}


}

/// @nodoc
abstract mixin class $DatumCopyWith<$Res>  {
  factory $DatumCopyWith(Datum value, $Res Function(Datum) _then) = _$DatumCopyWithImpl;
@useResult
$Res call({
 String? id, String? name, String? description, List<String>? photos, String? logo, Location? location, String? genderType, bool? active, bool? isFeatured, String? providerId, Provider? provider, BranchType? branchType, List<Amenity>? amenities, List<dynamic>? offers, bool? hasOffers, num? reviewCount, bool? isFavorite
});


$LocationCopyWith<$Res>? get location;$ProviderCopyWith<$Res>? get provider;$BranchTypeCopyWith<$Res>? get branchType;

}
/// @nodoc
class _$DatumCopyWithImpl<$Res>
    implements $DatumCopyWith<$Res> {
  _$DatumCopyWithImpl(this._self, this._then);

  final Datum _self;
  final $Res Function(Datum) _then;

/// Create a copy of Datum
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = freezed,Object? description = freezed,Object? photos = freezed,Object? logo = freezed,Object? location = freezed,Object? genderType = freezed,Object? active = freezed,Object? isFeatured = freezed,Object? providerId = freezed,Object? provider = freezed,Object? branchType = freezed,Object? amenities = freezed,Object? offers = freezed,Object? hasOffers = freezed,Object? reviewCount = freezed,Object? isFavorite = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,photos: freezed == photos ? _self.photos : photos // ignore: cast_nullable_to_non_nullable
as List<String>?,logo: freezed == logo ? _self.logo : logo // ignore: cast_nullable_to_non_nullable
as String?,location: freezed == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as Location?,genderType: freezed == genderType ? _self.genderType : genderType // ignore: cast_nullable_to_non_nullable
as String?,active: freezed == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool?,isFeatured: freezed == isFeatured ? _self.isFeatured : isFeatured // ignore: cast_nullable_to_non_nullable
as bool?,providerId: freezed == providerId ? _self.providerId : providerId // ignore: cast_nullable_to_non_nullable
as String?,provider: freezed == provider ? _self.provider : provider // ignore: cast_nullable_to_non_nullable
as Provider?,branchType: freezed == branchType ? _self.branchType : branchType // ignore: cast_nullable_to_non_nullable
as BranchType?,amenities: freezed == amenities ? _self.amenities : amenities // ignore: cast_nullable_to_non_nullable
as List<Amenity>?,offers: freezed == offers ? _self.offers : offers // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,hasOffers: freezed == hasOffers ? _self.hasOffers : hasOffers // ignore: cast_nullable_to_non_nullable
as bool?,reviewCount: freezed == reviewCount ? _self.reviewCount : reviewCount // ignore: cast_nullable_to_non_nullable
as num?,isFavorite: freezed == isFavorite ? _self.isFavorite : isFavorite // ignore: cast_nullable_to_non_nullable
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
$ProviderCopyWith<$Res>? get provider {
    if (_self.provider == null) {
    return null;
  }

  return $ProviderCopyWith<$Res>(_self.provider!, (value) {
    return _then(_self.copyWith(provider: value));
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? id,  String? name,  String? description,  List<String>? photos,  String? logo,  Location? location,  String? genderType,  bool? active,  bool? isFeatured,  String? providerId,  Provider? provider,  BranchType? branchType,  List<Amenity>? amenities,  List<dynamic>? offers,  bool? hasOffers,  num? reviewCount,  bool? isFavorite)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Datum() when $default != null:
return $default(_that.id,_that.name,_that.description,_that.photos,_that.logo,_that.location,_that.genderType,_that.active,_that.isFeatured,_that.providerId,_that.provider,_that.branchType,_that.amenities,_that.offers,_that.hasOffers,_that.reviewCount,_that.isFavorite);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? id,  String? name,  String? description,  List<String>? photos,  String? logo,  Location? location,  String? genderType,  bool? active,  bool? isFeatured,  String? providerId,  Provider? provider,  BranchType? branchType,  List<Amenity>? amenities,  List<dynamic>? offers,  bool? hasOffers,  num? reviewCount,  bool? isFavorite)  $default,) {final _that = this;
switch (_that) {
case _Datum():
return $default(_that.id,_that.name,_that.description,_that.photos,_that.logo,_that.location,_that.genderType,_that.active,_that.isFeatured,_that.providerId,_that.provider,_that.branchType,_that.amenities,_that.offers,_that.hasOffers,_that.reviewCount,_that.isFavorite);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? id,  String? name,  String? description,  List<String>? photos,  String? logo,  Location? location,  String? genderType,  bool? active,  bool? isFeatured,  String? providerId,  Provider? provider,  BranchType? branchType,  List<Amenity>? amenities,  List<dynamic>? offers,  bool? hasOffers,  num? reviewCount,  bool? isFavorite)?  $default,) {final _that = this;
switch (_that) {
case _Datum() when $default != null:
return $default(_that.id,_that.name,_that.description,_that.photos,_that.logo,_that.location,_that.genderType,_that.active,_that.isFeatured,_that.providerId,_that.provider,_that.branchType,_that.amenities,_that.offers,_that.hasOffers,_that.reviewCount,_that.isFavorite);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Datum implements Datum {
   _Datum({this.id, this.name, this.description, final  List<String>? photos, this.logo, this.location, this.genderType, this.active, this.isFeatured, this.providerId, this.provider, this.branchType, final  List<Amenity>? amenities, final  List<dynamic>? offers, this.hasOffers, this.reviewCount, this.isFavorite}): _photos = photos,_amenities = amenities,_offers = offers;
  factory _Datum.fromJson(Map<String, dynamic> json) => _$DatumFromJson(json);

@override final  String? id;
@override final  String? name;
@override final  String? description;
 final  List<String>? _photos;
@override List<String>? get photos {
  final value = _photos;
  if (value == null) return null;
  if (_photos is EqualUnmodifiableListView) return _photos;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  String? logo;
@override final  Location? location;
@override final  String? genderType;
@override final  bool? active;
@override final  bool? isFeatured;
@override final  String? providerId;
@override final  Provider? provider;
@override final  BranchType? branchType;
 final  List<Amenity>? _amenities;
@override List<Amenity>? get amenities {
  final value = _amenities;
  if (value == null) return null;
  if (_amenities is EqualUnmodifiableListView) return _amenities;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<dynamic>? _offers;
@override List<dynamic>? get offers {
  final value = _offers;
  if (value == null) return null;
  if (_offers is EqualUnmodifiableListView) return _offers;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  bool? hasOffers;
@override final  num? reviewCount;
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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Datum&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&const DeepCollectionEquality().equals(other._photos, _photos)&&(identical(other.logo, logo) || other.logo == logo)&&(identical(other.location, location) || other.location == location)&&(identical(other.genderType, genderType) || other.genderType == genderType)&&(identical(other.active, active) || other.active == active)&&(identical(other.isFeatured, isFeatured) || other.isFeatured == isFeatured)&&(identical(other.providerId, providerId) || other.providerId == providerId)&&(identical(other.provider, provider) || other.provider == provider)&&(identical(other.branchType, branchType) || other.branchType == branchType)&&const DeepCollectionEquality().equals(other._amenities, _amenities)&&const DeepCollectionEquality().equals(other._offers, _offers)&&(identical(other.hasOffers, hasOffers) || other.hasOffers == hasOffers)&&(identical(other.reviewCount, reviewCount) || other.reviewCount == reviewCount)&&(identical(other.isFavorite, isFavorite) || other.isFavorite == isFavorite));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,description,const DeepCollectionEquality().hash(_photos),logo,location,genderType,active,isFeatured,providerId,provider,branchType,const DeepCollectionEquality().hash(_amenities),const DeepCollectionEquality().hash(_offers),hasOffers,reviewCount,isFavorite);

@override
String toString() {
  return 'Datum(id: $id, name: $name, description: $description, photos: $photos, logo: $logo, location: $location, genderType: $genderType, active: $active, isFeatured: $isFeatured, providerId: $providerId, provider: $provider, branchType: $branchType, amenities: $amenities, offers: $offers, hasOffers: $hasOffers, reviewCount: $reviewCount, isFavorite: $isFavorite)';
}


}

/// @nodoc
abstract mixin class _$DatumCopyWith<$Res> implements $DatumCopyWith<$Res> {
  factory _$DatumCopyWith(_Datum value, $Res Function(_Datum) _then) = __$DatumCopyWithImpl;
@override @useResult
$Res call({
 String? id, String? name, String? description, List<String>? photos, String? logo, Location? location, String? genderType, bool? active, bool? isFeatured, String? providerId, Provider? provider, BranchType? branchType, List<Amenity>? amenities, List<dynamic>? offers, bool? hasOffers, num? reviewCount, bool? isFavorite
});


@override $LocationCopyWith<$Res>? get location;@override $ProviderCopyWith<$Res>? get provider;@override $BranchTypeCopyWith<$Res>? get branchType;

}
/// @nodoc
class __$DatumCopyWithImpl<$Res>
    implements _$DatumCopyWith<$Res> {
  __$DatumCopyWithImpl(this._self, this._then);

  final _Datum _self;
  final $Res Function(_Datum) _then;

/// Create a copy of Datum
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = freezed,Object? description = freezed,Object? photos = freezed,Object? logo = freezed,Object? location = freezed,Object? genderType = freezed,Object? active = freezed,Object? isFeatured = freezed,Object? providerId = freezed,Object? provider = freezed,Object? branchType = freezed,Object? amenities = freezed,Object? offers = freezed,Object? hasOffers = freezed,Object? reviewCount = freezed,Object? isFavorite = freezed,}) {
  return _then(_Datum(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,photos: freezed == photos ? _self._photos : photos // ignore: cast_nullable_to_non_nullable
as List<String>?,logo: freezed == logo ? _self.logo : logo // ignore: cast_nullable_to_non_nullable
as String?,location: freezed == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as Location?,genderType: freezed == genderType ? _self.genderType : genderType // ignore: cast_nullable_to_non_nullable
as String?,active: freezed == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool?,isFeatured: freezed == isFeatured ? _self.isFeatured : isFeatured // ignore: cast_nullable_to_non_nullable
as bool?,providerId: freezed == providerId ? _self.providerId : providerId // ignore: cast_nullable_to_non_nullable
as String?,provider: freezed == provider ? _self.provider : provider // ignore: cast_nullable_to_non_nullable
as Provider?,branchType: freezed == branchType ? _self.branchType : branchType // ignore: cast_nullable_to_non_nullable
as BranchType?,amenities: freezed == amenities ? _self._amenities : amenities // ignore: cast_nullable_to_non_nullable
as List<Amenity>?,offers: freezed == offers ? _self._offers : offers // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,hasOffers: freezed == hasOffers ? _self.hasOffers : hasOffers // ignore: cast_nullable_to_non_nullable
as bool?,reviewCount: freezed == reviewCount ? _self.reviewCount : reviewCount // ignore: cast_nullable_to_non_nullable
as num?,isFavorite: freezed == isFavorite ? _self.isFavorite : isFavorite // ignore: cast_nullable_to_non_nullable
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
$ProviderCopyWith<$Res>? get provider {
    if (_self.provider == null) {
    return null;
  }

  return $ProviderCopyWith<$Res>(_self.provider!, (value) {
    return _then(_self.copyWith(provider: value));
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
