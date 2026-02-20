// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'provider.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Provider {

 String? get id; String? get name; String? get email; String? get phone; String? get description; String? get logo; String? get website; List<String>? get photos; bool? get active; String? get status; DateTime? get lastActivityAt; DateTime? get approvedAt; String? get approvedBy; DateTime? get createdAt; DateTime? get updatedAt;
/// Create a copy of Provider
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProviderCopyWith<Provider> get copyWith => _$ProviderCopyWithImpl<Provider>(this as Provider, _$identity);

  /// Serializes this Provider to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Provider&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.email, email) || other.email == email)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.description, description) || other.description == description)&&(identical(other.logo, logo) || other.logo == logo)&&(identical(other.website, website) || other.website == website)&&const DeepCollectionEquality().equals(other.photos, photos)&&(identical(other.active, active) || other.active == active)&&(identical(other.status, status) || other.status == status)&&(identical(other.lastActivityAt, lastActivityAt) || other.lastActivityAt == lastActivityAt)&&(identical(other.approvedAt, approvedAt) || other.approvedAt == approvedAt)&&(identical(other.approvedBy, approvedBy) || other.approvedBy == approvedBy)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,email,phone,description,logo,website,const DeepCollectionEquality().hash(photos),active,status,lastActivityAt,approvedAt,approvedBy,createdAt,updatedAt);

@override
String toString() {
  return 'Provider(id: $id, name: $name, email: $email, phone: $phone, description: $description, logo: $logo, website: $website, photos: $photos, active: $active, status: $status, lastActivityAt: $lastActivityAt, approvedAt: $approvedAt, approvedBy: $approvedBy, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $ProviderCopyWith<$Res>  {
  factory $ProviderCopyWith(Provider value, $Res Function(Provider) _then) = _$ProviderCopyWithImpl;
@useResult
$Res call({
 String? id, String? name, String? email, String? phone, String? description, String? logo, String? website, List<String>? photos, bool? active, String? status, DateTime? lastActivityAt, DateTime? approvedAt, String? approvedBy, DateTime? createdAt, DateTime? updatedAt
});




}
/// @nodoc
class _$ProviderCopyWithImpl<$Res>
    implements $ProviderCopyWith<$Res> {
  _$ProviderCopyWithImpl(this._self, this._then);

  final Provider _self;
  final $Res Function(Provider) _then;

/// Create a copy of Provider
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = freezed,Object? email = freezed,Object? phone = freezed,Object? description = freezed,Object? logo = freezed,Object? website = freezed,Object? photos = freezed,Object? active = freezed,Object? status = freezed,Object? lastActivityAt = freezed,Object? approvedAt = freezed,Object? approvedBy = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,logo: freezed == logo ? _self.logo : logo // ignore: cast_nullable_to_non_nullable
as String?,website: freezed == website ? _self.website : website // ignore: cast_nullable_to_non_nullable
as String?,photos: freezed == photos ? _self.photos : photos // ignore: cast_nullable_to_non_nullable
as List<String>?,active: freezed == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,lastActivityAt: freezed == lastActivityAt ? _self.lastActivityAt : lastActivityAt // ignore: cast_nullable_to_non_nullable
as DateTime?,approvedAt: freezed == approvedAt ? _self.approvedAt : approvedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,approvedBy: freezed == approvedBy ? _self.approvedBy : approvedBy // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [Provider].
extension ProviderPatterns on Provider {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Provider value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Provider() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Provider value)  $default,){
final _that = this;
switch (_that) {
case _Provider():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Provider value)?  $default,){
final _that = this;
switch (_that) {
case _Provider() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? id,  String? name,  String? email,  String? phone,  String? description,  String? logo,  String? website,  List<String>? photos,  bool? active,  String? status,  DateTime? lastActivityAt,  DateTime? approvedAt,  String? approvedBy,  DateTime? createdAt,  DateTime? updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Provider() when $default != null:
return $default(_that.id,_that.name,_that.email,_that.phone,_that.description,_that.logo,_that.website,_that.photos,_that.active,_that.status,_that.lastActivityAt,_that.approvedAt,_that.approvedBy,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? id,  String? name,  String? email,  String? phone,  String? description,  String? logo,  String? website,  List<String>? photos,  bool? active,  String? status,  DateTime? lastActivityAt,  DateTime? approvedAt,  String? approvedBy,  DateTime? createdAt,  DateTime? updatedAt)  $default,) {final _that = this;
switch (_that) {
case _Provider():
return $default(_that.id,_that.name,_that.email,_that.phone,_that.description,_that.logo,_that.website,_that.photos,_that.active,_that.status,_that.lastActivityAt,_that.approvedAt,_that.approvedBy,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? id,  String? name,  String? email,  String? phone,  String? description,  String? logo,  String? website,  List<String>? photos,  bool? active,  String? status,  DateTime? lastActivityAt,  DateTime? approvedAt,  String? approvedBy,  DateTime? createdAt,  DateTime? updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _Provider() when $default != null:
return $default(_that.id,_that.name,_that.email,_that.phone,_that.description,_that.logo,_that.website,_that.photos,_that.active,_that.status,_that.lastActivityAt,_that.approvedAt,_that.approvedBy,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Provider implements Provider {
   _Provider({this.id, this.name, this.email, this.phone, this.description, this.logo, this.website, final  List<String>? photos, this.active, this.status, this.lastActivityAt, this.approvedAt, this.approvedBy, this.createdAt, this.updatedAt}): _photos = photos;
  factory _Provider.fromJson(Map<String, dynamic> json) => _$ProviderFromJson(json);

@override final  String? id;
@override final  String? name;
@override final  String? email;
@override final  String? phone;
@override final  String? description;
@override final  String? logo;
@override final  String? website;
 final  List<String>? _photos;
@override List<String>? get photos {
  final value = _photos;
  if (value == null) return null;
  if (_photos is EqualUnmodifiableListView) return _photos;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  bool? active;
@override final  String? status;
@override final  DateTime? lastActivityAt;
@override final  DateTime? approvedAt;
@override final  String? approvedBy;
@override final  DateTime? createdAt;
@override final  DateTime? updatedAt;

/// Create a copy of Provider
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProviderCopyWith<_Provider> get copyWith => __$ProviderCopyWithImpl<_Provider>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProviderToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Provider&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.email, email) || other.email == email)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.description, description) || other.description == description)&&(identical(other.logo, logo) || other.logo == logo)&&(identical(other.website, website) || other.website == website)&&const DeepCollectionEquality().equals(other._photos, _photos)&&(identical(other.active, active) || other.active == active)&&(identical(other.status, status) || other.status == status)&&(identical(other.lastActivityAt, lastActivityAt) || other.lastActivityAt == lastActivityAt)&&(identical(other.approvedAt, approvedAt) || other.approvedAt == approvedAt)&&(identical(other.approvedBy, approvedBy) || other.approvedBy == approvedBy)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,email,phone,description,logo,website,const DeepCollectionEquality().hash(_photos),active,status,lastActivityAt,approvedAt,approvedBy,createdAt,updatedAt);

@override
String toString() {
  return 'Provider(id: $id, name: $name, email: $email, phone: $phone, description: $description, logo: $logo, website: $website, photos: $photos, active: $active, status: $status, lastActivityAt: $lastActivityAt, approvedAt: $approvedAt, approvedBy: $approvedBy, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$ProviderCopyWith<$Res> implements $ProviderCopyWith<$Res> {
  factory _$ProviderCopyWith(_Provider value, $Res Function(_Provider) _then) = __$ProviderCopyWithImpl;
@override @useResult
$Res call({
 String? id, String? name, String? email, String? phone, String? description, String? logo, String? website, List<String>? photos, bool? active, String? status, DateTime? lastActivityAt, DateTime? approvedAt, String? approvedBy, DateTime? createdAt, DateTime? updatedAt
});




}
/// @nodoc
class __$ProviderCopyWithImpl<$Res>
    implements _$ProviderCopyWith<$Res> {
  __$ProviderCopyWithImpl(this._self, this._then);

  final _Provider _self;
  final $Res Function(_Provider) _then;

/// Create a copy of Provider
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = freezed,Object? email = freezed,Object? phone = freezed,Object? description = freezed,Object? logo = freezed,Object? website = freezed,Object? photos = freezed,Object? active = freezed,Object? status = freezed,Object? lastActivityAt = freezed,Object? approvedAt = freezed,Object? approvedBy = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_Provider(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,logo: freezed == logo ? _self.logo : logo // ignore: cast_nullable_to_non_nullable
as String?,website: freezed == website ? _self.website : website // ignore: cast_nullable_to_non_nullable
as String?,photos: freezed == photos ? _self._photos : photos // ignore: cast_nullable_to_non_nullable
as List<String>?,active: freezed == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,lastActivityAt: freezed == lastActivityAt ? _self.lastActivityAt : lastActivityAt // ignore: cast_nullable_to_non_nullable
as DateTime?,approvedAt: freezed == approvedAt ? _self.approvedAt : approvedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,approvedBy: freezed == approvedBy ? _self.approvedBy : approvedBy // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
