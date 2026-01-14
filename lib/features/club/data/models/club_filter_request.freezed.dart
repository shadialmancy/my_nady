// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'club_filter_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ClubFilterRequest {

 String? get search; num? get lat; num? get lng; num? get radius; String? get gender; String? get typeId; List<String>? get amenityIds; String? get area; num? get minPrice; num? get maxPrice; String? get sortBy; num? get page; num? get limit; bool? get hasOffers;
/// Create a copy of ClubFilterRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ClubFilterRequestCopyWith<ClubFilterRequest> get copyWith => _$ClubFilterRequestCopyWithImpl<ClubFilterRequest>(this as ClubFilterRequest, _$identity);

  /// Serializes this ClubFilterRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ClubFilterRequest&&(identical(other.search, search) || other.search == search)&&(identical(other.lat, lat) || other.lat == lat)&&(identical(other.lng, lng) || other.lng == lng)&&(identical(other.radius, radius) || other.radius == radius)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.typeId, typeId) || other.typeId == typeId)&&const DeepCollectionEquality().equals(other.amenityIds, amenityIds)&&(identical(other.area, area) || other.area == area)&&(identical(other.minPrice, minPrice) || other.minPrice == minPrice)&&(identical(other.maxPrice, maxPrice) || other.maxPrice == maxPrice)&&(identical(other.sortBy, sortBy) || other.sortBy == sortBy)&&(identical(other.page, page) || other.page == page)&&(identical(other.limit, limit) || other.limit == limit)&&(identical(other.hasOffers, hasOffers) || other.hasOffers == hasOffers));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,search,lat,lng,radius,gender,typeId,const DeepCollectionEquality().hash(amenityIds),area,minPrice,maxPrice,sortBy,page,limit,hasOffers);

@override
String toString() {
  return 'ClubFilterRequest(search: $search, lat: $lat, lng: $lng, radius: $radius, gender: $gender, typeId: $typeId, amenityIds: $amenityIds, area: $area, minPrice: $minPrice, maxPrice: $maxPrice, sortBy: $sortBy, page: $page, limit: $limit, hasOffers: $hasOffers)';
}


}

/// @nodoc
abstract mixin class $ClubFilterRequestCopyWith<$Res>  {
  factory $ClubFilterRequestCopyWith(ClubFilterRequest value, $Res Function(ClubFilterRequest) _then) = _$ClubFilterRequestCopyWithImpl;
@useResult
$Res call({
 String? search, num? lat, num? lng, num? radius, String? gender, String? typeId, List<String>? amenityIds, String? area, num? minPrice, num? maxPrice, String? sortBy, num? page, num? limit, bool? hasOffers
});




}
/// @nodoc
class _$ClubFilterRequestCopyWithImpl<$Res>
    implements $ClubFilterRequestCopyWith<$Res> {
  _$ClubFilterRequestCopyWithImpl(this._self, this._then);

  final ClubFilterRequest _self;
  final $Res Function(ClubFilterRequest) _then;

/// Create a copy of ClubFilterRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? search = freezed,Object? lat = freezed,Object? lng = freezed,Object? radius = freezed,Object? gender = freezed,Object? typeId = freezed,Object? amenityIds = freezed,Object? area = freezed,Object? minPrice = freezed,Object? maxPrice = freezed,Object? sortBy = freezed,Object? page = freezed,Object? limit = freezed,Object? hasOffers = freezed,}) {
  return _then(_self.copyWith(
search: freezed == search ? _self.search : search // ignore: cast_nullable_to_non_nullable
as String?,lat: freezed == lat ? _self.lat : lat // ignore: cast_nullable_to_non_nullable
as num?,lng: freezed == lng ? _self.lng : lng // ignore: cast_nullable_to_non_nullable
as num?,radius: freezed == radius ? _self.radius : radius // ignore: cast_nullable_to_non_nullable
as num?,gender: freezed == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String?,typeId: freezed == typeId ? _self.typeId : typeId // ignore: cast_nullable_to_non_nullable
as String?,amenityIds: freezed == amenityIds ? _self.amenityIds : amenityIds // ignore: cast_nullable_to_non_nullable
as List<String>?,area: freezed == area ? _self.area : area // ignore: cast_nullable_to_non_nullable
as String?,minPrice: freezed == minPrice ? _self.minPrice : minPrice // ignore: cast_nullable_to_non_nullable
as num?,maxPrice: freezed == maxPrice ? _self.maxPrice : maxPrice // ignore: cast_nullable_to_non_nullable
as num?,sortBy: freezed == sortBy ? _self.sortBy : sortBy // ignore: cast_nullable_to_non_nullable
as String?,page: freezed == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as num?,limit: freezed == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as num?,hasOffers: freezed == hasOffers ? _self.hasOffers : hasOffers // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// Adds pattern-matching-related methods to [ClubFilterRequest].
extension ClubFilterRequestPatterns on ClubFilterRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ClubFilterRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ClubFilterRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ClubFilterRequest value)  $default,){
final _that = this;
switch (_that) {
case _ClubFilterRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ClubFilterRequest value)?  $default,){
final _that = this;
switch (_that) {
case _ClubFilterRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? search,  num? lat,  num? lng,  num? radius,  String? gender,  String? typeId,  List<String>? amenityIds,  String? area,  num? minPrice,  num? maxPrice,  String? sortBy,  num? page,  num? limit,  bool? hasOffers)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ClubFilterRequest() when $default != null:
return $default(_that.search,_that.lat,_that.lng,_that.radius,_that.gender,_that.typeId,_that.amenityIds,_that.area,_that.minPrice,_that.maxPrice,_that.sortBy,_that.page,_that.limit,_that.hasOffers);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? search,  num? lat,  num? lng,  num? radius,  String? gender,  String? typeId,  List<String>? amenityIds,  String? area,  num? minPrice,  num? maxPrice,  String? sortBy,  num? page,  num? limit,  bool? hasOffers)  $default,) {final _that = this;
switch (_that) {
case _ClubFilterRequest():
return $default(_that.search,_that.lat,_that.lng,_that.radius,_that.gender,_that.typeId,_that.amenityIds,_that.area,_that.minPrice,_that.maxPrice,_that.sortBy,_that.page,_that.limit,_that.hasOffers);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? search,  num? lat,  num? lng,  num? radius,  String? gender,  String? typeId,  List<String>? amenityIds,  String? area,  num? minPrice,  num? maxPrice,  String? sortBy,  num? page,  num? limit,  bool? hasOffers)?  $default,) {final _that = this;
switch (_that) {
case _ClubFilterRequest() when $default != null:
return $default(_that.search,_that.lat,_that.lng,_that.radius,_that.gender,_that.typeId,_that.amenityIds,_that.area,_that.minPrice,_that.maxPrice,_that.sortBy,_that.page,_that.limit,_that.hasOffers);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ClubFilterRequest implements ClubFilterRequest {
   _ClubFilterRequest({this.search, this.lat, this.lng, this.radius, this.gender, this.typeId, final  List<String>? amenityIds, this.area, this.minPrice, this.maxPrice, this.sortBy, this.page, this.limit, this.hasOffers}): _amenityIds = amenityIds;
  factory _ClubFilterRequest.fromJson(Map<String, dynamic> json) => _$ClubFilterRequestFromJson(json);

@override final  String? search;
@override final  num? lat;
@override final  num? lng;
@override final  num? radius;
@override final  String? gender;
@override final  String? typeId;
 final  List<String>? _amenityIds;
@override List<String>? get amenityIds {
  final value = _amenityIds;
  if (value == null) return null;
  if (_amenityIds is EqualUnmodifiableListView) return _amenityIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  String? area;
@override final  num? minPrice;
@override final  num? maxPrice;
@override final  String? sortBy;
@override final  num? page;
@override final  num? limit;
@override final  bool? hasOffers;

/// Create a copy of ClubFilterRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ClubFilterRequestCopyWith<_ClubFilterRequest> get copyWith => __$ClubFilterRequestCopyWithImpl<_ClubFilterRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ClubFilterRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ClubFilterRequest&&(identical(other.search, search) || other.search == search)&&(identical(other.lat, lat) || other.lat == lat)&&(identical(other.lng, lng) || other.lng == lng)&&(identical(other.radius, radius) || other.radius == radius)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.typeId, typeId) || other.typeId == typeId)&&const DeepCollectionEquality().equals(other._amenityIds, _amenityIds)&&(identical(other.area, area) || other.area == area)&&(identical(other.minPrice, minPrice) || other.minPrice == minPrice)&&(identical(other.maxPrice, maxPrice) || other.maxPrice == maxPrice)&&(identical(other.sortBy, sortBy) || other.sortBy == sortBy)&&(identical(other.page, page) || other.page == page)&&(identical(other.limit, limit) || other.limit == limit)&&(identical(other.hasOffers, hasOffers) || other.hasOffers == hasOffers));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,search,lat,lng,radius,gender,typeId,const DeepCollectionEquality().hash(_amenityIds),area,minPrice,maxPrice,sortBy,page,limit,hasOffers);

@override
String toString() {
  return 'ClubFilterRequest(search: $search, lat: $lat, lng: $lng, radius: $radius, gender: $gender, typeId: $typeId, amenityIds: $amenityIds, area: $area, minPrice: $minPrice, maxPrice: $maxPrice, sortBy: $sortBy, page: $page, limit: $limit, hasOffers: $hasOffers)';
}


}

/// @nodoc
abstract mixin class _$ClubFilterRequestCopyWith<$Res> implements $ClubFilterRequestCopyWith<$Res> {
  factory _$ClubFilterRequestCopyWith(_ClubFilterRequest value, $Res Function(_ClubFilterRequest) _then) = __$ClubFilterRequestCopyWithImpl;
@override @useResult
$Res call({
 String? search, num? lat, num? lng, num? radius, String? gender, String? typeId, List<String>? amenityIds, String? area, num? minPrice, num? maxPrice, String? sortBy, num? page, num? limit, bool? hasOffers
});




}
/// @nodoc
class __$ClubFilterRequestCopyWithImpl<$Res>
    implements _$ClubFilterRequestCopyWith<$Res> {
  __$ClubFilterRequestCopyWithImpl(this._self, this._then);

  final _ClubFilterRequest _self;
  final $Res Function(_ClubFilterRequest) _then;

/// Create a copy of ClubFilterRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? search = freezed,Object? lat = freezed,Object? lng = freezed,Object? radius = freezed,Object? gender = freezed,Object? typeId = freezed,Object? amenityIds = freezed,Object? area = freezed,Object? minPrice = freezed,Object? maxPrice = freezed,Object? sortBy = freezed,Object? page = freezed,Object? limit = freezed,Object? hasOffers = freezed,}) {
  return _then(_ClubFilterRequest(
search: freezed == search ? _self.search : search // ignore: cast_nullable_to_non_nullable
as String?,lat: freezed == lat ? _self.lat : lat // ignore: cast_nullable_to_non_nullable
as num?,lng: freezed == lng ? _self.lng : lng // ignore: cast_nullable_to_non_nullable
as num?,radius: freezed == radius ? _self.radius : radius // ignore: cast_nullable_to_non_nullable
as num?,gender: freezed == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String?,typeId: freezed == typeId ? _self.typeId : typeId // ignore: cast_nullable_to_non_nullable
as String?,amenityIds: freezed == amenityIds ? _self._amenityIds : amenityIds // ignore: cast_nullable_to_non_nullable
as List<String>?,area: freezed == area ? _self.area : area // ignore: cast_nullable_to_non_nullable
as String?,minPrice: freezed == minPrice ? _self.minPrice : minPrice // ignore: cast_nullable_to_non_nullable
as num?,maxPrice: freezed == maxPrice ? _self.maxPrice : maxPrice // ignore: cast_nullable_to_non_nullable
as num?,sortBy: freezed == sortBy ? _self.sortBy : sortBy // ignore: cast_nullable_to_non_nullable
as String?,page: freezed == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as num?,limit: freezed == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as num?,hasOffers: freezed == hasOffers ? _self.hasOffers : hasOffers // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}

// dart format on
