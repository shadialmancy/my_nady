// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Data {

 String? get id; String? get name; String? get description; List<String>? get photos; String? get logo; Location? get location; String? get genderType; Provider? get provider; List<Amenity>? get amenities; Contact? get contact; List<SubscriptionPlan>? get subscriptionPlans; List<dynamic>? get classes; List<Offer>? get offers; Rating? get rating; String? get whatsappLink; List<OtherBranch>? get otherBranches;
/// Create a copy of Data
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DataCopyWith<Data> get copyWith => _$DataCopyWithImpl<Data>(this as Data, _$identity);

  /// Serializes this Data to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Data&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&const DeepCollectionEquality().equals(other.photos, photos)&&(identical(other.logo, logo) || other.logo == logo)&&(identical(other.location, location) || other.location == location)&&(identical(other.genderType, genderType) || other.genderType == genderType)&&(identical(other.provider, provider) || other.provider == provider)&&const DeepCollectionEquality().equals(other.amenities, amenities)&&(identical(other.contact, contact) || other.contact == contact)&&const DeepCollectionEquality().equals(other.subscriptionPlans, subscriptionPlans)&&const DeepCollectionEquality().equals(other.classes, classes)&&const DeepCollectionEquality().equals(other.offers, offers)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.whatsappLink, whatsappLink) || other.whatsappLink == whatsappLink)&&const DeepCollectionEquality().equals(other.otherBranches, otherBranches));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,description,const DeepCollectionEquality().hash(photos),logo,location,genderType,provider,const DeepCollectionEquality().hash(amenities),contact,const DeepCollectionEquality().hash(subscriptionPlans),const DeepCollectionEquality().hash(classes),const DeepCollectionEquality().hash(offers),rating,whatsappLink,const DeepCollectionEquality().hash(otherBranches));

@override
String toString() {
  return 'Data(id: $id, name: $name, description: $description, photos: $photos, logo: $logo, location: $location, genderType: $genderType, provider: $provider, amenities: $amenities, contact: $contact, subscriptionPlans: $subscriptionPlans, classes: $classes, offers: $offers, rating: $rating, whatsappLink: $whatsappLink, otherBranches: $otherBranches)';
}


}

/// @nodoc
abstract mixin class $DataCopyWith<$Res>  {
  factory $DataCopyWith(Data value, $Res Function(Data) _then) = _$DataCopyWithImpl;
@useResult
$Res call({
 String? id, String? name, String? description, List<String>? photos, String? logo, Location? location, String? genderType, Provider? provider, List<Amenity>? amenities, Contact? contact, List<SubscriptionPlan>? subscriptionPlans, List<dynamic>? classes, List<Offer>? offers, Rating? rating, String? whatsappLink, List<OtherBranch>? otherBranches
});


$LocationCopyWith<$Res>? get location;$ProviderCopyWith<$Res>? get provider;$ContactCopyWith<$Res>? get contact;$RatingCopyWith<$Res>? get rating;

}
/// @nodoc
class _$DataCopyWithImpl<$Res>
    implements $DataCopyWith<$Res> {
  _$DataCopyWithImpl(this._self, this._then);

  final Data _self;
  final $Res Function(Data) _then;

/// Create a copy of Data
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = freezed,Object? description = freezed,Object? photos = freezed,Object? logo = freezed,Object? location = freezed,Object? genderType = freezed,Object? provider = freezed,Object? amenities = freezed,Object? contact = freezed,Object? subscriptionPlans = freezed,Object? classes = freezed,Object? offers = freezed,Object? rating = freezed,Object? whatsappLink = freezed,Object? otherBranches = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,photos: freezed == photos ? _self.photos : photos // ignore: cast_nullable_to_non_nullable
as List<String>?,logo: freezed == logo ? _self.logo : logo // ignore: cast_nullable_to_non_nullable
as String?,location: freezed == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as Location?,genderType: freezed == genderType ? _self.genderType : genderType // ignore: cast_nullable_to_non_nullable
as String?,provider: freezed == provider ? _self.provider : provider // ignore: cast_nullable_to_non_nullable
as Provider?,amenities: freezed == amenities ? _self.amenities : amenities // ignore: cast_nullable_to_non_nullable
as List<Amenity>?,contact: freezed == contact ? _self.contact : contact // ignore: cast_nullable_to_non_nullable
as Contact?,subscriptionPlans: freezed == subscriptionPlans ? _self.subscriptionPlans : subscriptionPlans // ignore: cast_nullable_to_non_nullable
as List<SubscriptionPlan>?,classes: freezed == classes ? _self.classes : classes // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,offers: freezed == offers ? _self.offers : offers // ignore: cast_nullable_to_non_nullable
as List<Offer>?,rating: freezed == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as Rating?,whatsappLink: freezed == whatsappLink ? _self.whatsappLink : whatsappLink // ignore: cast_nullable_to_non_nullable
as String?,otherBranches: freezed == otherBranches ? _self.otherBranches : otherBranches // ignore: cast_nullable_to_non_nullable
as List<OtherBranch>?,
  ));
}
/// Create a copy of Data
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
}/// Create a copy of Data
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
}/// Create a copy of Data
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ContactCopyWith<$Res>? get contact {
    if (_self.contact == null) {
    return null;
  }

  return $ContactCopyWith<$Res>(_self.contact!, (value) {
    return _then(_self.copyWith(contact: value));
  });
}/// Create a copy of Data
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RatingCopyWith<$Res>? get rating {
    if (_self.rating == null) {
    return null;
  }

  return $RatingCopyWith<$Res>(_self.rating!, (value) {
    return _then(_self.copyWith(rating: value));
  });
}
}


/// Adds pattern-matching-related methods to [Data].
extension DataPatterns on Data {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Data value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Data() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Data value)  $default,){
final _that = this;
switch (_that) {
case _Data():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Data value)?  $default,){
final _that = this;
switch (_that) {
case _Data() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? id,  String? name,  String? description,  List<String>? photos,  String? logo,  Location? location,  String? genderType,  Provider? provider,  List<Amenity>? amenities,  Contact? contact,  List<SubscriptionPlan>? subscriptionPlans,  List<dynamic>? classes,  List<Offer>? offers,  Rating? rating,  String? whatsappLink,  List<OtherBranch>? otherBranches)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Data() when $default != null:
return $default(_that.id,_that.name,_that.description,_that.photos,_that.logo,_that.location,_that.genderType,_that.provider,_that.amenities,_that.contact,_that.subscriptionPlans,_that.classes,_that.offers,_that.rating,_that.whatsappLink,_that.otherBranches);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? id,  String? name,  String? description,  List<String>? photos,  String? logo,  Location? location,  String? genderType,  Provider? provider,  List<Amenity>? amenities,  Contact? contact,  List<SubscriptionPlan>? subscriptionPlans,  List<dynamic>? classes,  List<Offer>? offers,  Rating? rating,  String? whatsappLink,  List<OtherBranch>? otherBranches)  $default,) {final _that = this;
switch (_that) {
case _Data():
return $default(_that.id,_that.name,_that.description,_that.photos,_that.logo,_that.location,_that.genderType,_that.provider,_that.amenities,_that.contact,_that.subscriptionPlans,_that.classes,_that.offers,_that.rating,_that.whatsappLink,_that.otherBranches);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? id,  String? name,  String? description,  List<String>? photos,  String? logo,  Location? location,  String? genderType,  Provider? provider,  List<Amenity>? amenities,  Contact? contact,  List<SubscriptionPlan>? subscriptionPlans,  List<dynamic>? classes,  List<Offer>? offers,  Rating? rating,  String? whatsappLink,  List<OtherBranch>? otherBranches)?  $default,) {final _that = this;
switch (_that) {
case _Data() when $default != null:
return $default(_that.id,_that.name,_that.description,_that.photos,_that.logo,_that.location,_that.genderType,_that.provider,_that.amenities,_that.contact,_that.subscriptionPlans,_that.classes,_that.offers,_that.rating,_that.whatsappLink,_that.otherBranches);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Data implements Data {
   _Data({this.id, this.name, this.description, final  List<String>? photos, this.logo, this.location, this.genderType, this.provider, final  List<Amenity>? amenities, this.contact, final  List<SubscriptionPlan>? subscriptionPlans, final  List<dynamic>? classes, final  List<Offer>? offers, this.rating, this.whatsappLink, final  List<OtherBranch>? otherBranches}): _photos = photos,_amenities = amenities,_subscriptionPlans = subscriptionPlans,_classes = classes,_offers = offers,_otherBranches = otherBranches;
  factory _Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

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
@override final  Provider? provider;
 final  List<Amenity>? _amenities;
@override List<Amenity>? get amenities {
  final value = _amenities;
  if (value == null) return null;
  if (_amenities is EqualUnmodifiableListView) return _amenities;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  Contact? contact;
 final  List<SubscriptionPlan>? _subscriptionPlans;
@override List<SubscriptionPlan>? get subscriptionPlans {
  final value = _subscriptionPlans;
  if (value == null) return null;
  if (_subscriptionPlans is EqualUnmodifiableListView) return _subscriptionPlans;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<dynamic>? _classes;
@override List<dynamic>? get classes {
  final value = _classes;
  if (value == null) return null;
  if (_classes is EqualUnmodifiableListView) return _classes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<Offer>? _offers;
@override List<Offer>? get offers {
  final value = _offers;
  if (value == null) return null;
  if (_offers is EqualUnmodifiableListView) return _offers;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  Rating? rating;
@override final  String? whatsappLink;
 final  List<OtherBranch>? _otherBranches;
@override List<OtherBranch>? get otherBranches {
  final value = _otherBranches;
  if (value == null) return null;
  if (_otherBranches is EqualUnmodifiableListView) return _otherBranches;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of Data
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DataCopyWith<_Data> get copyWith => __$DataCopyWithImpl<_Data>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Data&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&const DeepCollectionEquality().equals(other._photos, _photos)&&(identical(other.logo, logo) || other.logo == logo)&&(identical(other.location, location) || other.location == location)&&(identical(other.genderType, genderType) || other.genderType == genderType)&&(identical(other.provider, provider) || other.provider == provider)&&const DeepCollectionEquality().equals(other._amenities, _amenities)&&(identical(other.contact, contact) || other.contact == contact)&&const DeepCollectionEquality().equals(other._subscriptionPlans, _subscriptionPlans)&&const DeepCollectionEquality().equals(other._classes, _classes)&&const DeepCollectionEquality().equals(other._offers, _offers)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.whatsappLink, whatsappLink) || other.whatsappLink == whatsappLink)&&const DeepCollectionEquality().equals(other._otherBranches, _otherBranches));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,description,const DeepCollectionEquality().hash(_photos),logo,location,genderType,provider,const DeepCollectionEquality().hash(_amenities),contact,const DeepCollectionEquality().hash(_subscriptionPlans),const DeepCollectionEquality().hash(_classes),const DeepCollectionEquality().hash(_offers),rating,whatsappLink,const DeepCollectionEquality().hash(_otherBranches));

@override
String toString() {
  return 'Data(id: $id, name: $name, description: $description, photos: $photos, logo: $logo, location: $location, genderType: $genderType, provider: $provider, amenities: $amenities, contact: $contact, subscriptionPlans: $subscriptionPlans, classes: $classes, offers: $offers, rating: $rating, whatsappLink: $whatsappLink, otherBranches: $otherBranches)';
}


}

/// @nodoc
abstract mixin class _$DataCopyWith<$Res> implements $DataCopyWith<$Res> {
  factory _$DataCopyWith(_Data value, $Res Function(_Data) _then) = __$DataCopyWithImpl;
@override @useResult
$Res call({
 String? id, String? name, String? description, List<String>? photos, String? logo, Location? location, String? genderType, Provider? provider, List<Amenity>? amenities, Contact? contact, List<SubscriptionPlan>? subscriptionPlans, List<dynamic>? classes, List<Offer>? offers, Rating? rating, String? whatsappLink, List<OtherBranch>? otherBranches
});


@override $LocationCopyWith<$Res>? get location;@override $ProviderCopyWith<$Res>? get provider;@override $ContactCopyWith<$Res>? get contact;@override $RatingCopyWith<$Res>? get rating;

}
/// @nodoc
class __$DataCopyWithImpl<$Res>
    implements _$DataCopyWith<$Res> {
  __$DataCopyWithImpl(this._self, this._then);

  final _Data _self;
  final $Res Function(_Data) _then;

/// Create a copy of Data
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = freezed,Object? description = freezed,Object? photos = freezed,Object? logo = freezed,Object? location = freezed,Object? genderType = freezed,Object? provider = freezed,Object? amenities = freezed,Object? contact = freezed,Object? subscriptionPlans = freezed,Object? classes = freezed,Object? offers = freezed,Object? rating = freezed,Object? whatsappLink = freezed,Object? otherBranches = freezed,}) {
  return _then(_Data(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,photos: freezed == photos ? _self._photos : photos // ignore: cast_nullable_to_non_nullable
as List<String>?,logo: freezed == logo ? _self.logo : logo // ignore: cast_nullable_to_non_nullable
as String?,location: freezed == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as Location?,genderType: freezed == genderType ? _self.genderType : genderType // ignore: cast_nullable_to_non_nullable
as String?,provider: freezed == provider ? _self.provider : provider // ignore: cast_nullable_to_non_nullable
as Provider?,amenities: freezed == amenities ? _self._amenities : amenities // ignore: cast_nullable_to_non_nullable
as List<Amenity>?,contact: freezed == contact ? _self.contact : contact // ignore: cast_nullable_to_non_nullable
as Contact?,subscriptionPlans: freezed == subscriptionPlans ? _self._subscriptionPlans : subscriptionPlans // ignore: cast_nullable_to_non_nullable
as List<SubscriptionPlan>?,classes: freezed == classes ? _self._classes : classes // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,offers: freezed == offers ? _self._offers : offers // ignore: cast_nullable_to_non_nullable
as List<Offer>?,rating: freezed == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as Rating?,whatsappLink: freezed == whatsappLink ? _self.whatsappLink : whatsappLink // ignore: cast_nullable_to_non_nullable
as String?,otherBranches: freezed == otherBranches ? _self._otherBranches : otherBranches // ignore: cast_nullable_to_non_nullable
as List<OtherBranch>?,
  ));
}

/// Create a copy of Data
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
}/// Create a copy of Data
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
}/// Create a copy of Data
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ContactCopyWith<$Res>? get contact {
    if (_self.contact == null) {
    return null;
  }

  return $ContactCopyWith<$Res>(_self.contact!, (value) {
    return _then(_self.copyWith(contact: value));
  });
}/// Create a copy of Data
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RatingCopyWith<$Res>? get rating {
    if (_self.rating == null) {
    return null;
  }

  return $RatingCopyWith<$Res>(_self.rating!, (value) {
    return _then(_self.copyWith(rating: value));
  });
}
}

// dart format on
