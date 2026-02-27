// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'review_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ReviewDto {

 List<ReviewData>? get data; ReviewMeta? get meta;
/// Create a copy of ReviewDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReviewDtoCopyWith<ReviewDto> get copyWith => _$ReviewDtoCopyWithImpl<ReviewDto>(this as ReviewDto, _$identity);

  /// Serializes this ReviewDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReviewDto&&const DeepCollectionEquality().equals(other.data, data)&&(identical(other.meta, meta) || other.meta == meta));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data),meta);

@override
String toString() {
  return 'ReviewDto(data: $data, meta: $meta)';
}


}

/// @nodoc
abstract mixin class $ReviewDtoCopyWith<$Res>  {
  factory $ReviewDtoCopyWith(ReviewDto value, $Res Function(ReviewDto) _then) = _$ReviewDtoCopyWithImpl;
@useResult
$Res call({
 List<ReviewData>? data, ReviewMeta? meta
});


$ReviewMetaCopyWith<$Res>? get meta;

}
/// @nodoc
class _$ReviewDtoCopyWithImpl<$Res>
    implements $ReviewDtoCopyWith<$Res> {
  _$ReviewDtoCopyWithImpl(this._self, this._then);

  final ReviewDto _self;
  final $Res Function(ReviewDto) _then;

/// Create a copy of ReviewDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = freezed,Object? meta = freezed,}) {
  return _then(_self.copyWith(
data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<ReviewData>?,meta: freezed == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as ReviewMeta?,
  ));
}
/// Create a copy of ReviewDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReviewMetaCopyWith<$Res>? get meta {
    if (_self.meta == null) {
    return null;
  }

  return $ReviewMetaCopyWith<$Res>(_self.meta!, (value) {
    return _then(_self.copyWith(meta: value));
  });
}
}


/// Adds pattern-matching-related methods to [ReviewDto].
extension ReviewDtoPatterns on ReviewDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReviewDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReviewDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReviewDto value)  $default,){
final _that = this;
switch (_that) {
case _ReviewDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReviewDto value)?  $default,){
final _that = this;
switch (_that) {
case _ReviewDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<ReviewData>? data,  ReviewMeta? meta)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ReviewDto() when $default != null:
return $default(_that.data,_that.meta);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<ReviewData>? data,  ReviewMeta? meta)  $default,) {final _that = this;
switch (_that) {
case _ReviewDto():
return $default(_that.data,_that.meta);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<ReviewData>? data,  ReviewMeta? meta)?  $default,) {final _that = this;
switch (_that) {
case _ReviewDto() when $default != null:
return $default(_that.data,_that.meta);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ReviewDto implements ReviewDto {
   _ReviewDto({final  List<ReviewData>? data, this.meta}): _data = data;
  factory _ReviewDto.fromJson(Map<String, dynamic> json) => _$ReviewDtoFromJson(json);

 final  List<ReviewData>? _data;
@override List<ReviewData>? get data {
  final value = _data;
  if (value == null) return null;
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  ReviewMeta? meta;

/// Create a copy of ReviewDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReviewDtoCopyWith<_ReviewDto> get copyWith => __$ReviewDtoCopyWithImpl<_ReviewDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ReviewDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReviewDto&&const DeepCollectionEquality().equals(other._data, _data)&&(identical(other.meta, meta) || other.meta == meta));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_data),meta);

@override
String toString() {
  return 'ReviewDto(data: $data, meta: $meta)';
}


}

/// @nodoc
abstract mixin class _$ReviewDtoCopyWith<$Res> implements $ReviewDtoCopyWith<$Res> {
  factory _$ReviewDtoCopyWith(_ReviewDto value, $Res Function(_ReviewDto) _then) = __$ReviewDtoCopyWithImpl;
@override @useResult
$Res call({
 List<ReviewData>? data, ReviewMeta? meta
});


@override $ReviewMetaCopyWith<$Res>? get meta;

}
/// @nodoc
class __$ReviewDtoCopyWithImpl<$Res>
    implements _$ReviewDtoCopyWith<$Res> {
  __$ReviewDtoCopyWithImpl(this._self, this._then);

  final _ReviewDto _self;
  final $Res Function(_ReviewDto) _then;

/// Create a copy of ReviewDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = freezed,Object? meta = freezed,}) {
  return _then(_ReviewDto(
data: freezed == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<ReviewData>?,meta: freezed == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as ReviewMeta?,
  ));
}

/// Create a copy of ReviewDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReviewMetaCopyWith<$Res>? get meta {
    if (_self.meta == null) {
    return null;
  }

  return $ReviewMetaCopyWith<$Res>(_self.meta!, (value) {
    return _then(_self.copyWith(meta: value));
  });
}
}


/// @nodoc
mixin _$ReviewData {

 String? get id; int? get rating; String? get comment; ReviewUser? get user; ReviewBranch? get branch; List<ReviewReply>? get replies; String? get createdAt; String? get updatedAt; bool? get canEdit;
/// Create a copy of ReviewData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReviewDataCopyWith<ReviewData> get copyWith => _$ReviewDataCopyWithImpl<ReviewData>(this as ReviewData, _$identity);

  /// Serializes this ReviewData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReviewData&&(identical(other.id, id) || other.id == id)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.comment, comment) || other.comment == comment)&&(identical(other.user, user) || other.user == user)&&(identical(other.branch, branch) || other.branch == branch)&&const DeepCollectionEquality().equals(other.replies, replies)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.canEdit, canEdit) || other.canEdit == canEdit));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,rating,comment,user,branch,const DeepCollectionEquality().hash(replies),createdAt,updatedAt,canEdit);

@override
String toString() {
  return 'ReviewData(id: $id, rating: $rating, comment: $comment, user: $user, branch: $branch, replies: $replies, createdAt: $createdAt, updatedAt: $updatedAt, canEdit: $canEdit)';
}


}

/// @nodoc
abstract mixin class $ReviewDataCopyWith<$Res>  {
  factory $ReviewDataCopyWith(ReviewData value, $Res Function(ReviewData) _then) = _$ReviewDataCopyWithImpl;
@useResult
$Res call({
 String? id, int? rating, String? comment, ReviewUser? user, ReviewBranch? branch, List<ReviewReply>? replies, String? createdAt, String? updatedAt, bool? canEdit
});


$ReviewUserCopyWith<$Res>? get user;$ReviewBranchCopyWith<$Res>? get branch;

}
/// @nodoc
class _$ReviewDataCopyWithImpl<$Res>
    implements $ReviewDataCopyWith<$Res> {
  _$ReviewDataCopyWithImpl(this._self, this._then);

  final ReviewData _self;
  final $Res Function(ReviewData) _then;

/// Create a copy of ReviewData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? rating = freezed,Object? comment = freezed,Object? user = freezed,Object? branch = freezed,Object? replies = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? canEdit = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,rating: freezed == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as int?,comment: freezed == comment ? _self.comment : comment // ignore: cast_nullable_to_non_nullable
as String?,user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as ReviewUser?,branch: freezed == branch ? _self.branch : branch // ignore: cast_nullable_to_non_nullable
as ReviewBranch?,replies: freezed == replies ? _self.replies : replies // ignore: cast_nullable_to_non_nullable
as List<ReviewReply>?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,canEdit: freezed == canEdit ? _self.canEdit : canEdit // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}
/// Create a copy of ReviewData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReviewUserCopyWith<$Res>? get user {
    if (_self.user == null) {
    return null;
  }

  return $ReviewUserCopyWith<$Res>(_self.user!, (value) {
    return _then(_self.copyWith(user: value));
  });
}/// Create a copy of ReviewData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReviewBranchCopyWith<$Res>? get branch {
    if (_self.branch == null) {
    return null;
  }

  return $ReviewBranchCopyWith<$Res>(_self.branch!, (value) {
    return _then(_self.copyWith(branch: value));
  });
}
}


/// Adds pattern-matching-related methods to [ReviewData].
extension ReviewDataPatterns on ReviewData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReviewData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReviewData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReviewData value)  $default,){
final _that = this;
switch (_that) {
case _ReviewData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReviewData value)?  $default,){
final _that = this;
switch (_that) {
case _ReviewData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? id,  int? rating,  String? comment,  ReviewUser? user,  ReviewBranch? branch,  List<ReviewReply>? replies,  String? createdAt,  String? updatedAt,  bool? canEdit)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ReviewData() when $default != null:
return $default(_that.id,_that.rating,_that.comment,_that.user,_that.branch,_that.replies,_that.createdAt,_that.updatedAt,_that.canEdit);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? id,  int? rating,  String? comment,  ReviewUser? user,  ReviewBranch? branch,  List<ReviewReply>? replies,  String? createdAt,  String? updatedAt,  bool? canEdit)  $default,) {final _that = this;
switch (_that) {
case _ReviewData():
return $default(_that.id,_that.rating,_that.comment,_that.user,_that.branch,_that.replies,_that.createdAt,_that.updatedAt,_that.canEdit);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? id,  int? rating,  String? comment,  ReviewUser? user,  ReviewBranch? branch,  List<ReviewReply>? replies,  String? createdAt,  String? updatedAt,  bool? canEdit)?  $default,) {final _that = this;
switch (_that) {
case _ReviewData() when $default != null:
return $default(_that.id,_that.rating,_that.comment,_that.user,_that.branch,_that.replies,_that.createdAt,_that.updatedAt,_that.canEdit);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ReviewData implements ReviewData {
   _ReviewData({this.id, this.rating, this.comment, this.user, this.branch, final  List<ReviewReply>? replies, this.createdAt, this.updatedAt, this.canEdit}): _replies = replies;
  factory _ReviewData.fromJson(Map<String, dynamic> json) => _$ReviewDataFromJson(json);

@override final  String? id;
@override final  int? rating;
@override final  String? comment;
@override final  ReviewUser? user;
@override final  ReviewBranch? branch;
 final  List<ReviewReply>? _replies;
@override List<ReviewReply>? get replies {
  final value = _replies;
  if (value == null) return null;
  if (_replies is EqualUnmodifiableListView) return _replies;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  String? createdAt;
@override final  String? updatedAt;
@override final  bool? canEdit;

/// Create a copy of ReviewData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReviewDataCopyWith<_ReviewData> get copyWith => __$ReviewDataCopyWithImpl<_ReviewData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ReviewDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReviewData&&(identical(other.id, id) || other.id == id)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.comment, comment) || other.comment == comment)&&(identical(other.user, user) || other.user == user)&&(identical(other.branch, branch) || other.branch == branch)&&const DeepCollectionEquality().equals(other._replies, _replies)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.canEdit, canEdit) || other.canEdit == canEdit));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,rating,comment,user,branch,const DeepCollectionEquality().hash(_replies),createdAt,updatedAt,canEdit);

@override
String toString() {
  return 'ReviewData(id: $id, rating: $rating, comment: $comment, user: $user, branch: $branch, replies: $replies, createdAt: $createdAt, updatedAt: $updatedAt, canEdit: $canEdit)';
}


}

/// @nodoc
abstract mixin class _$ReviewDataCopyWith<$Res> implements $ReviewDataCopyWith<$Res> {
  factory _$ReviewDataCopyWith(_ReviewData value, $Res Function(_ReviewData) _then) = __$ReviewDataCopyWithImpl;
@override @useResult
$Res call({
 String? id, int? rating, String? comment, ReviewUser? user, ReviewBranch? branch, List<ReviewReply>? replies, String? createdAt, String? updatedAt, bool? canEdit
});


@override $ReviewUserCopyWith<$Res>? get user;@override $ReviewBranchCopyWith<$Res>? get branch;

}
/// @nodoc
class __$ReviewDataCopyWithImpl<$Res>
    implements _$ReviewDataCopyWith<$Res> {
  __$ReviewDataCopyWithImpl(this._self, this._then);

  final _ReviewData _self;
  final $Res Function(_ReviewData) _then;

/// Create a copy of ReviewData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? rating = freezed,Object? comment = freezed,Object? user = freezed,Object? branch = freezed,Object? replies = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? canEdit = freezed,}) {
  return _then(_ReviewData(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,rating: freezed == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as int?,comment: freezed == comment ? _self.comment : comment // ignore: cast_nullable_to_non_nullable
as String?,user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as ReviewUser?,branch: freezed == branch ? _self.branch : branch // ignore: cast_nullable_to_non_nullable
as ReviewBranch?,replies: freezed == replies ? _self._replies : replies // ignore: cast_nullable_to_non_nullable
as List<ReviewReply>?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,canEdit: freezed == canEdit ? _self.canEdit : canEdit // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

/// Create a copy of ReviewData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReviewUserCopyWith<$Res>? get user {
    if (_self.user == null) {
    return null;
  }

  return $ReviewUserCopyWith<$Res>(_self.user!, (value) {
    return _then(_self.copyWith(user: value));
  });
}/// Create a copy of ReviewData
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReviewBranchCopyWith<$Res>? get branch {
    if (_self.branch == null) {
    return null;
  }

  return $ReviewBranchCopyWith<$Res>(_self.branch!, (value) {
    return _then(_self.copyWith(branch: value));
  });
}
}


/// @nodoc
mixin _$ReviewUser {

 String? get id; String? get name; String? get image;
/// Create a copy of ReviewUser
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReviewUserCopyWith<ReviewUser> get copyWith => _$ReviewUserCopyWithImpl<ReviewUser>(this as ReviewUser, _$identity);

  /// Serializes this ReviewUser to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReviewUser&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.image, image) || other.image == image));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,image);

@override
String toString() {
  return 'ReviewUser(id: $id, name: $name, image: $image)';
}


}

/// @nodoc
abstract mixin class $ReviewUserCopyWith<$Res>  {
  factory $ReviewUserCopyWith(ReviewUser value, $Res Function(ReviewUser) _then) = _$ReviewUserCopyWithImpl;
@useResult
$Res call({
 String? id, String? name, String? image
});




}
/// @nodoc
class _$ReviewUserCopyWithImpl<$Res>
    implements $ReviewUserCopyWith<$Res> {
  _$ReviewUserCopyWithImpl(this._self, this._then);

  final ReviewUser _self;
  final $Res Function(ReviewUser) _then;

/// Create a copy of ReviewUser
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = freezed,Object? image = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,image: freezed == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ReviewUser].
extension ReviewUserPatterns on ReviewUser {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReviewUser value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReviewUser() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReviewUser value)  $default,){
final _that = this;
switch (_that) {
case _ReviewUser():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReviewUser value)?  $default,){
final _that = this;
switch (_that) {
case _ReviewUser() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? id,  String? name,  String? image)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ReviewUser() when $default != null:
return $default(_that.id,_that.name,_that.image);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? id,  String? name,  String? image)  $default,) {final _that = this;
switch (_that) {
case _ReviewUser():
return $default(_that.id,_that.name,_that.image);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? id,  String? name,  String? image)?  $default,) {final _that = this;
switch (_that) {
case _ReviewUser() when $default != null:
return $default(_that.id,_that.name,_that.image);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ReviewUser implements ReviewUser {
   _ReviewUser({this.id, this.name, this.image});
  factory _ReviewUser.fromJson(Map<String, dynamic> json) => _$ReviewUserFromJson(json);

@override final  String? id;
@override final  String? name;
@override final  String? image;

/// Create a copy of ReviewUser
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReviewUserCopyWith<_ReviewUser> get copyWith => __$ReviewUserCopyWithImpl<_ReviewUser>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ReviewUserToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReviewUser&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.image, image) || other.image == image));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,image);

@override
String toString() {
  return 'ReviewUser(id: $id, name: $name, image: $image)';
}


}

/// @nodoc
abstract mixin class _$ReviewUserCopyWith<$Res> implements $ReviewUserCopyWith<$Res> {
  factory _$ReviewUserCopyWith(_ReviewUser value, $Res Function(_ReviewUser) _then) = __$ReviewUserCopyWithImpl;
@override @useResult
$Res call({
 String? id, String? name, String? image
});




}
/// @nodoc
class __$ReviewUserCopyWithImpl<$Res>
    implements _$ReviewUserCopyWith<$Res> {
  __$ReviewUserCopyWithImpl(this._self, this._then);

  final _ReviewUser _self;
  final $Res Function(_ReviewUser) _then;

/// Create a copy of ReviewUser
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = freezed,Object? image = freezed,}) {
  return _then(_ReviewUser(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,image: freezed == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$ReviewBranch {

 String? get id; String? get name;
/// Create a copy of ReviewBranch
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReviewBranchCopyWith<ReviewBranch> get copyWith => _$ReviewBranchCopyWithImpl<ReviewBranch>(this as ReviewBranch, _$identity);

  /// Serializes this ReviewBranch to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReviewBranch&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name);

@override
String toString() {
  return 'ReviewBranch(id: $id, name: $name)';
}


}

/// @nodoc
abstract mixin class $ReviewBranchCopyWith<$Res>  {
  factory $ReviewBranchCopyWith(ReviewBranch value, $Res Function(ReviewBranch) _then) = _$ReviewBranchCopyWithImpl;
@useResult
$Res call({
 String? id, String? name
});




}
/// @nodoc
class _$ReviewBranchCopyWithImpl<$Res>
    implements $ReviewBranchCopyWith<$Res> {
  _$ReviewBranchCopyWithImpl(this._self, this._then);

  final ReviewBranch _self;
  final $Res Function(ReviewBranch) _then;

/// Create a copy of ReviewBranch
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ReviewBranch].
extension ReviewBranchPatterns on ReviewBranch {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReviewBranch value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReviewBranch() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReviewBranch value)  $default,){
final _that = this;
switch (_that) {
case _ReviewBranch():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReviewBranch value)?  $default,){
final _that = this;
switch (_that) {
case _ReviewBranch() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? id,  String? name)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ReviewBranch() when $default != null:
return $default(_that.id,_that.name);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? id,  String? name)  $default,) {final _that = this;
switch (_that) {
case _ReviewBranch():
return $default(_that.id,_that.name);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? id,  String? name)?  $default,) {final _that = this;
switch (_that) {
case _ReviewBranch() when $default != null:
return $default(_that.id,_that.name);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ReviewBranch implements ReviewBranch {
   _ReviewBranch({this.id, this.name});
  factory _ReviewBranch.fromJson(Map<String, dynamic> json) => _$ReviewBranchFromJson(json);

@override final  String? id;
@override final  String? name;

/// Create a copy of ReviewBranch
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReviewBranchCopyWith<_ReviewBranch> get copyWith => __$ReviewBranchCopyWithImpl<_ReviewBranch>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ReviewBranchToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReviewBranch&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name);

@override
String toString() {
  return 'ReviewBranch(id: $id, name: $name)';
}


}

/// @nodoc
abstract mixin class _$ReviewBranchCopyWith<$Res> implements $ReviewBranchCopyWith<$Res> {
  factory _$ReviewBranchCopyWith(_ReviewBranch value, $Res Function(_ReviewBranch) _then) = __$ReviewBranchCopyWithImpl;
@override @useResult
$Res call({
 String? id, String? name
});




}
/// @nodoc
class __$ReviewBranchCopyWithImpl<$Res>
    implements _$ReviewBranchCopyWith<$Res> {
  __$ReviewBranchCopyWithImpl(this._self, this._then);

  final _ReviewBranch _self;
  final $Res Function(_ReviewBranch) _then;

/// Create a copy of ReviewBranch
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = freezed,}) {
  return _then(_ReviewBranch(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$ReviewReply {

 String? get id; String? get comment; bool? get isStaffReply; ReviewUser? get user; String? get createdAt;
/// Create a copy of ReviewReply
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReviewReplyCopyWith<ReviewReply> get copyWith => _$ReviewReplyCopyWithImpl<ReviewReply>(this as ReviewReply, _$identity);

  /// Serializes this ReviewReply to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReviewReply&&(identical(other.id, id) || other.id == id)&&(identical(other.comment, comment) || other.comment == comment)&&(identical(other.isStaffReply, isStaffReply) || other.isStaffReply == isStaffReply)&&(identical(other.user, user) || other.user == user)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,comment,isStaffReply,user,createdAt);

@override
String toString() {
  return 'ReviewReply(id: $id, comment: $comment, isStaffReply: $isStaffReply, user: $user, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $ReviewReplyCopyWith<$Res>  {
  factory $ReviewReplyCopyWith(ReviewReply value, $Res Function(ReviewReply) _then) = _$ReviewReplyCopyWithImpl;
@useResult
$Res call({
 String? id, String? comment, bool? isStaffReply, ReviewUser? user, String? createdAt
});


$ReviewUserCopyWith<$Res>? get user;

}
/// @nodoc
class _$ReviewReplyCopyWithImpl<$Res>
    implements $ReviewReplyCopyWith<$Res> {
  _$ReviewReplyCopyWithImpl(this._self, this._then);

  final ReviewReply _self;
  final $Res Function(ReviewReply) _then;

/// Create a copy of ReviewReply
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? comment = freezed,Object? isStaffReply = freezed,Object? user = freezed,Object? createdAt = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,comment: freezed == comment ? _self.comment : comment // ignore: cast_nullable_to_non_nullable
as String?,isStaffReply: freezed == isStaffReply ? _self.isStaffReply : isStaffReply // ignore: cast_nullable_to_non_nullable
as bool?,user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as ReviewUser?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of ReviewReply
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReviewUserCopyWith<$Res>? get user {
    if (_self.user == null) {
    return null;
  }

  return $ReviewUserCopyWith<$Res>(_self.user!, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}


/// Adds pattern-matching-related methods to [ReviewReply].
extension ReviewReplyPatterns on ReviewReply {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReviewReply value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReviewReply() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReviewReply value)  $default,){
final _that = this;
switch (_that) {
case _ReviewReply():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReviewReply value)?  $default,){
final _that = this;
switch (_that) {
case _ReviewReply() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? id,  String? comment,  bool? isStaffReply,  ReviewUser? user,  String? createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ReviewReply() when $default != null:
return $default(_that.id,_that.comment,_that.isStaffReply,_that.user,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? id,  String? comment,  bool? isStaffReply,  ReviewUser? user,  String? createdAt)  $default,) {final _that = this;
switch (_that) {
case _ReviewReply():
return $default(_that.id,_that.comment,_that.isStaffReply,_that.user,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? id,  String? comment,  bool? isStaffReply,  ReviewUser? user,  String? createdAt)?  $default,) {final _that = this;
switch (_that) {
case _ReviewReply() when $default != null:
return $default(_that.id,_that.comment,_that.isStaffReply,_that.user,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ReviewReply implements ReviewReply {
   _ReviewReply({this.id, this.comment, this.isStaffReply, this.user, this.createdAt});
  factory _ReviewReply.fromJson(Map<String, dynamic> json) => _$ReviewReplyFromJson(json);

@override final  String? id;
@override final  String? comment;
@override final  bool? isStaffReply;
@override final  ReviewUser? user;
@override final  String? createdAt;

/// Create a copy of ReviewReply
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReviewReplyCopyWith<_ReviewReply> get copyWith => __$ReviewReplyCopyWithImpl<_ReviewReply>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ReviewReplyToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReviewReply&&(identical(other.id, id) || other.id == id)&&(identical(other.comment, comment) || other.comment == comment)&&(identical(other.isStaffReply, isStaffReply) || other.isStaffReply == isStaffReply)&&(identical(other.user, user) || other.user == user)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,comment,isStaffReply,user,createdAt);

@override
String toString() {
  return 'ReviewReply(id: $id, comment: $comment, isStaffReply: $isStaffReply, user: $user, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$ReviewReplyCopyWith<$Res> implements $ReviewReplyCopyWith<$Res> {
  factory _$ReviewReplyCopyWith(_ReviewReply value, $Res Function(_ReviewReply) _then) = __$ReviewReplyCopyWithImpl;
@override @useResult
$Res call({
 String? id, String? comment, bool? isStaffReply, ReviewUser? user, String? createdAt
});


@override $ReviewUserCopyWith<$Res>? get user;

}
/// @nodoc
class __$ReviewReplyCopyWithImpl<$Res>
    implements _$ReviewReplyCopyWith<$Res> {
  __$ReviewReplyCopyWithImpl(this._self, this._then);

  final _ReviewReply _self;
  final $Res Function(_ReviewReply) _then;

/// Create a copy of ReviewReply
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? comment = freezed,Object? isStaffReply = freezed,Object? user = freezed,Object? createdAt = freezed,}) {
  return _then(_ReviewReply(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,comment: freezed == comment ? _self.comment : comment // ignore: cast_nullable_to_non_nullable
as String?,isStaffReply: freezed == isStaffReply ? _self.isStaffReply : isStaffReply // ignore: cast_nullable_to_non_nullable
as bool?,user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as ReviewUser?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of ReviewReply
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReviewUserCopyWith<$Res>? get user {
    if (_self.user == null) {
    return null;
  }

  return $ReviewUserCopyWith<$Res>(_self.user!, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}


/// @nodoc
mixin _$ReviewMeta {

 int? get total; int? get page; int? get limit; int? get totalPages;
/// Create a copy of ReviewMeta
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReviewMetaCopyWith<ReviewMeta> get copyWith => _$ReviewMetaCopyWithImpl<ReviewMeta>(this as ReviewMeta, _$identity);

  /// Serializes this ReviewMeta to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReviewMeta&&(identical(other.total, total) || other.total == total)&&(identical(other.page, page) || other.page == page)&&(identical(other.limit, limit) || other.limit == limit)&&(identical(other.totalPages, totalPages) || other.totalPages == totalPages));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,total,page,limit,totalPages);

@override
String toString() {
  return 'ReviewMeta(total: $total, page: $page, limit: $limit, totalPages: $totalPages)';
}


}

/// @nodoc
abstract mixin class $ReviewMetaCopyWith<$Res>  {
  factory $ReviewMetaCopyWith(ReviewMeta value, $Res Function(ReviewMeta) _then) = _$ReviewMetaCopyWithImpl;
@useResult
$Res call({
 int? total, int? page, int? limit, int? totalPages
});




}
/// @nodoc
class _$ReviewMetaCopyWithImpl<$Res>
    implements $ReviewMetaCopyWith<$Res> {
  _$ReviewMetaCopyWithImpl(this._self, this._then);

  final ReviewMeta _self;
  final $Res Function(ReviewMeta) _then;

/// Create a copy of ReviewMeta
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? total = freezed,Object? page = freezed,Object? limit = freezed,Object? totalPages = freezed,}) {
  return _then(_self.copyWith(
total: freezed == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int?,page: freezed == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int?,limit: freezed == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int?,totalPages: freezed == totalPages ? _self.totalPages : totalPages // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [ReviewMeta].
extension ReviewMetaPatterns on ReviewMeta {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReviewMeta value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReviewMeta() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReviewMeta value)  $default,){
final _that = this;
switch (_that) {
case _ReviewMeta():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReviewMeta value)?  $default,){
final _that = this;
switch (_that) {
case _ReviewMeta() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? total,  int? page,  int? limit,  int? totalPages)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ReviewMeta() when $default != null:
return $default(_that.total,_that.page,_that.limit,_that.totalPages);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? total,  int? page,  int? limit,  int? totalPages)  $default,) {final _that = this;
switch (_that) {
case _ReviewMeta():
return $default(_that.total,_that.page,_that.limit,_that.totalPages);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? total,  int? page,  int? limit,  int? totalPages)?  $default,) {final _that = this;
switch (_that) {
case _ReviewMeta() when $default != null:
return $default(_that.total,_that.page,_that.limit,_that.totalPages);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ReviewMeta implements ReviewMeta {
   _ReviewMeta({this.total, this.page, this.limit, this.totalPages});
  factory _ReviewMeta.fromJson(Map<String, dynamic> json) => _$ReviewMetaFromJson(json);

@override final  int? total;
@override final  int? page;
@override final  int? limit;
@override final  int? totalPages;

/// Create a copy of ReviewMeta
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReviewMetaCopyWith<_ReviewMeta> get copyWith => __$ReviewMetaCopyWithImpl<_ReviewMeta>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ReviewMetaToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReviewMeta&&(identical(other.total, total) || other.total == total)&&(identical(other.page, page) || other.page == page)&&(identical(other.limit, limit) || other.limit == limit)&&(identical(other.totalPages, totalPages) || other.totalPages == totalPages));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,total,page,limit,totalPages);

@override
String toString() {
  return 'ReviewMeta(total: $total, page: $page, limit: $limit, totalPages: $totalPages)';
}


}

/// @nodoc
abstract mixin class _$ReviewMetaCopyWith<$Res> implements $ReviewMetaCopyWith<$Res> {
  factory _$ReviewMetaCopyWith(_ReviewMeta value, $Res Function(_ReviewMeta) _then) = __$ReviewMetaCopyWithImpl;
@override @useResult
$Res call({
 int? total, int? page, int? limit, int? totalPages
});




}
/// @nodoc
class __$ReviewMetaCopyWithImpl<$Res>
    implements _$ReviewMetaCopyWith<$Res> {
  __$ReviewMetaCopyWithImpl(this._self, this._then);

  final _ReviewMeta _self;
  final $Res Function(_ReviewMeta) _then;

/// Create a copy of ReviewMeta
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? total = freezed,Object? page = freezed,Object? limit = freezed,Object? totalPages = freezed,}) {
  return _then(_ReviewMeta(
total: freezed == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int?,page: freezed == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int?,limit: freezed == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int?,totalPages: freezed == totalPages ? _self.totalPages : totalPages // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
