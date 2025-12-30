// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$User {

@HiveField(0) String? get id;@HiveField(1) String? get name;@HiveField(2) String? get email;@HiveField(3) String? get phone;@HiveField(4) dynamic get emailVerified;@HiveField(5) dynamic get image;@HiveField(6) dynamic get birthDate;@HiveField(7) dynamic get gender;@HiveField(8) String? get role;@HiveField(9) String? get status;@HiveField(10) DateTime? get lastLoginAt;@HiveField(11) DateTime? get lastActivityAt;@HiveField(12) num? get loginCount;@HiveField(13) DateTime? get createdAt;@HiveField(14) DateTime? get updatedAt;
/// Create a copy of User
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserCopyWith<User> get copyWith => _$UserCopyWithImpl<User>(this as User, _$identity);

  /// Serializes this User to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is User&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.email, email) || other.email == email)&&(identical(other.phone, phone) || other.phone == phone)&&const DeepCollectionEquality().equals(other.emailVerified, emailVerified)&&const DeepCollectionEquality().equals(other.image, image)&&const DeepCollectionEquality().equals(other.birthDate, birthDate)&&const DeepCollectionEquality().equals(other.gender, gender)&&(identical(other.role, role) || other.role == role)&&(identical(other.status, status) || other.status == status)&&(identical(other.lastLoginAt, lastLoginAt) || other.lastLoginAt == lastLoginAt)&&(identical(other.lastActivityAt, lastActivityAt) || other.lastActivityAt == lastActivityAt)&&(identical(other.loginCount, loginCount) || other.loginCount == loginCount)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,email,phone,const DeepCollectionEquality().hash(emailVerified),const DeepCollectionEquality().hash(image),const DeepCollectionEquality().hash(birthDate),const DeepCollectionEquality().hash(gender),role,status,lastLoginAt,lastActivityAt,loginCount,createdAt,updatedAt);

@override
String toString() {
  return 'User(id: $id, name: $name, email: $email, phone: $phone, emailVerified: $emailVerified, image: $image, birthDate: $birthDate, gender: $gender, role: $role, status: $status, lastLoginAt: $lastLoginAt, lastActivityAt: $lastActivityAt, loginCount: $loginCount, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $UserCopyWith<$Res>  {
  factory $UserCopyWith(User value, $Res Function(User) _then) = _$UserCopyWithImpl;
@useResult
$Res call({
@HiveField(0) String? id,@HiveField(1) String? name,@HiveField(2) String? email,@HiveField(3) String? phone,@HiveField(4) dynamic emailVerified,@HiveField(5) dynamic image,@HiveField(6) dynamic birthDate,@HiveField(7) dynamic gender,@HiveField(8) String? role,@HiveField(9) String? status,@HiveField(10) DateTime? lastLoginAt,@HiveField(11) DateTime? lastActivityAt,@HiveField(12) num? loginCount,@HiveField(13) DateTime? createdAt,@HiveField(14) DateTime? updatedAt
});




}
/// @nodoc
class _$UserCopyWithImpl<$Res>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._self, this._then);

  final User _self;
  final $Res Function(User) _then;

/// Create a copy of User
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = freezed,Object? email = freezed,Object? phone = freezed,Object? emailVerified = freezed,Object? image = freezed,Object? birthDate = freezed,Object? gender = freezed,Object? role = freezed,Object? status = freezed,Object? lastLoginAt = freezed,Object? lastActivityAt = freezed,Object? loginCount = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,emailVerified: freezed == emailVerified ? _self.emailVerified : emailVerified // ignore: cast_nullable_to_non_nullable
as dynamic,image: freezed == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as dynamic,birthDate: freezed == birthDate ? _self.birthDate : birthDate // ignore: cast_nullable_to_non_nullable
as dynamic,gender: freezed == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as dynamic,role: freezed == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,lastLoginAt: freezed == lastLoginAt ? _self.lastLoginAt : lastLoginAt // ignore: cast_nullable_to_non_nullable
as DateTime?,lastActivityAt: freezed == lastActivityAt ? _self.lastActivityAt : lastActivityAt // ignore: cast_nullable_to_non_nullable
as DateTime?,loginCount: freezed == loginCount ? _self.loginCount : loginCount // ignore: cast_nullable_to_non_nullable
as num?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [User].
extension UserPatterns on User {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _User value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _User() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _User value)  $default,){
final _that = this;
switch (_that) {
case _User():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _User value)?  $default,){
final _that = this;
switch (_that) {
case _User() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@HiveField(0)  String? id, @HiveField(1)  String? name, @HiveField(2)  String? email, @HiveField(3)  String? phone, @HiveField(4)  dynamic emailVerified, @HiveField(5)  dynamic image, @HiveField(6)  dynamic birthDate, @HiveField(7)  dynamic gender, @HiveField(8)  String? role, @HiveField(9)  String? status, @HiveField(10)  DateTime? lastLoginAt, @HiveField(11)  DateTime? lastActivityAt, @HiveField(12)  num? loginCount, @HiveField(13)  DateTime? createdAt, @HiveField(14)  DateTime? updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _User() when $default != null:
return $default(_that.id,_that.name,_that.email,_that.phone,_that.emailVerified,_that.image,_that.birthDate,_that.gender,_that.role,_that.status,_that.lastLoginAt,_that.lastActivityAt,_that.loginCount,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@HiveField(0)  String? id, @HiveField(1)  String? name, @HiveField(2)  String? email, @HiveField(3)  String? phone, @HiveField(4)  dynamic emailVerified, @HiveField(5)  dynamic image, @HiveField(6)  dynamic birthDate, @HiveField(7)  dynamic gender, @HiveField(8)  String? role, @HiveField(9)  String? status, @HiveField(10)  DateTime? lastLoginAt, @HiveField(11)  DateTime? lastActivityAt, @HiveField(12)  num? loginCount, @HiveField(13)  DateTime? createdAt, @HiveField(14)  DateTime? updatedAt)  $default,) {final _that = this;
switch (_that) {
case _User():
return $default(_that.id,_that.name,_that.email,_that.phone,_that.emailVerified,_that.image,_that.birthDate,_that.gender,_that.role,_that.status,_that.lastLoginAt,_that.lastActivityAt,_that.loginCount,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@HiveField(0)  String? id, @HiveField(1)  String? name, @HiveField(2)  String? email, @HiveField(3)  String? phone, @HiveField(4)  dynamic emailVerified, @HiveField(5)  dynamic image, @HiveField(6)  dynamic birthDate, @HiveField(7)  dynamic gender, @HiveField(8)  String? role, @HiveField(9)  String? status, @HiveField(10)  DateTime? lastLoginAt, @HiveField(11)  DateTime? lastActivityAt, @HiveField(12)  num? loginCount, @HiveField(13)  DateTime? createdAt, @HiveField(14)  DateTime? updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _User() when $default != null:
return $default(_that.id,_that.name,_that.email,_that.phone,_that.emailVerified,_that.image,_that.birthDate,_that.gender,_that.role,_that.status,_that.lastLoginAt,_that.lastActivityAt,_that.loginCount,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _User implements User {
   _User({@HiveField(0) this.id, @HiveField(1) this.name, @HiveField(2) this.email, @HiveField(3) this.phone, @HiveField(4) this.emailVerified, @HiveField(5) this.image, @HiveField(6) this.birthDate, @HiveField(7) this.gender, @HiveField(8) this.role, @HiveField(9) this.status, @HiveField(10) this.lastLoginAt, @HiveField(11) this.lastActivityAt, @HiveField(12) this.loginCount, @HiveField(13) this.createdAt, @HiveField(14) this.updatedAt});
  factory _User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

@override@HiveField(0) final  String? id;
@override@HiveField(1) final  String? name;
@override@HiveField(2) final  String? email;
@override@HiveField(3) final  String? phone;
@override@HiveField(4) final  dynamic emailVerified;
@override@HiveField(5) final  dynamic image;
@override@HiveField(6) final  dynamic birthDate;
@override@HiveField(7) final  dynamic gender;
@override@HiveField(8) final  String? role;
@override@HiveField(9) final  String? status;
@override@HiveField(10) final  DateTime? lastLoginAt;
@override@HiveField(11) final  DateTime? lastActivityAt;
@override@HiveField(12) final  num? loginCount;
@override@HiveField(13) final  DateTime? createdAt;
@override@HiveField(14) final  DateTime? updatedAt;

/// Create a copy of User
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserCopyWith<_User> get copyWith => __$UserCopyWithImpl<_User>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _User&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.email, email) || other.email == email)&&(identical(other.phone, phone) || other.phone == phone)&&const DeepCollectionEquality().equals(other.emailVerified, emailVerified)&&const DeepCollectionEquality().equals(other.image, image)&&const DeepCollectionEquality().equals(other.birthDate, birthDate)&&const DeepCollectionEquality().equals(other.gender, gender)&&(identical(other.role, role) || other.role == role)&&(identical(other.status, status) || other.status == status)&&(identical(other.lastLoginAt, lastLoginAt) || other.lastLoginAt == lastLoginAt)&&(identical(other.lastActivityAt, lastActivityAt) || other.lastActivityAt == lastActivityAt)&&(identical(other.loginCount, loginCount) || other.loginCount == loginCount)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,email,phone,const DeepCollectionEquality().hash(emailVerified),const DeepCollectionEquality().hash(image),const DeepCollectionEquality().hash(birthDate),const DeepCollectionEquality().hash(gender),role,status,lastLoginAt,lastActivityAt,loginCount,createdAt,updatedAt);

@override
String toString() {
  return 'User(id: $id, name: $name, email: $email, phone: $phone, emailVerified: $emailVerified, image: $image, birthDate: $birthDate, gender: $gender, role: $role, status: $status, lastLoginAt: $lastLoginAt, lastActivityAt: $lastActivityAt, loginCount: $loginCount, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$UserCopyWith(_User value, $Res Function(_User) _then) = __$UserCopyWithImpl;
@override @useResult
$Res call({
@HiveField(0) String? id,@HiveField(1) String? name,@HiveField(2) String? email,@HiveField(3) String? phone,@HiveField(4) dynamic emailVerified,@HiveField(5) dynamic image,@HiveField(6) dynamic birthDate,@HiveField(7) dynamic gender,@HiveField(8) String? role,@HiveField(9) String? status,@HiveField(10) DateTime? lastLoginAt,@HiveField(11) DateTime? lastActivityAt,@HiveField(12) num? loginCount,@HiveField(13) DateTime? createdAt,@HiveField(14) DateTime? updatedAt
});




}
/// @nodoc
class __$UserCopyWithImpl<$Res>
    implements _$UserCopyWith<$Res> {
  __$UserCopyWithImpl(this._self, this._then);

  final _User _self;
  final $Res Function(_User) _then;

/// Create a copy of User
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = freezed,Object? email = freezed,Object? phone = freezed,Object? emailVerified = freezed,Object? image = freezed,Object? birthDate = freezed,Object? gender = freezed,Object? role = freezed,Object? status = freezed,Object? lastLoginAt = freezed,Object? lastActivityAt = freezed,Object? loginCount = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_User(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,emailVerified: freezed == emailVerified ? _self.emailVerified : emailVerified // ignore: cast_nullable_to_non_nullable
as dynamic,image: freezed == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as dynamic,birthDate: freezed == birthDate ? _self.birthDate : birthDate // ignore: cast_nullable_to_non_nullable
as dynamic,gender: freezed == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as dynamic,role: freezed == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,lastLoginAt: freezed == lastLoginAt ? _self.lastLoginAt : lastLoginAt // ignore: cast_nullable_to_non_nullable
as DateTime?,lastActivityAt: freezed == lastActivityAt ? _self.lastActivityAt : lastActivityAt // ignore: cast_nullable_to_non_nullable
as DateTime?,loginCount: freezed == loginCount ? _self.loginCount : loginCount // ignore: cast_nullable_to_non_nullable
as num?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
