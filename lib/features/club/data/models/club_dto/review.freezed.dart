// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'review.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Review {

 String? get id; num? get rating; String? get comment; User? get user; Branch? get branch; List<Reply>? get replies; DateTime? get createdAt; DateTime? get updatedAt; bool? get canEdit;
/// Create a copy of Review
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReviewCopyWith<Review> get copyWith => _$ReviewCopyWithImpl<Review>(this as Review, _$identity);

  /// Serializes this Review to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Review&&(identical(other.id, id) || other.id == id)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.comment, comment) || other.comment == comment)&&(identical(other.user, user) || other.user == user)&&(identical(other.branch, branch) || other.branch == branch)&&const DeepCollectionEquality().equals(other.replies, replies)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.canEdit, canEdit) || other.canEdit == canEdit));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,rating,comment,user,branch,const DeepCollectionEquality().hash(replies),createdAt,updatedAt,canEdit);

@override
String toString() {
  return 'Review(id: $id, rating: $rating, comment: $comment, user: $user, branch: $branch, replies: $replies, createdAt: $createdAt, updatedAt: $updatedAt, canEdit: $canEdit)';
}


}

/// @nodoc
abstract mixin class $ReviewCopyWith<$Res>  {
  factory $ReviewCopyWith(Review value, $Res Function(Review) _then) = _$ReviewCopyWithImpl;
@useResult
$Res call({
 String? id, num? rating, String? comment, User? user, Branch? branch, List<Reply>? replies, DateTime? createdAt, DateTime? updatedAt, bool? canEdit
});


$UserCopyWith<$Res>? get user;$BranchCopyWith<$Res>? get branch;

}
/// @nodoc
class _$ReviewCopyWithImpl<$Res>
    implements $ReviewCopyWith<$Res> {
  _$ReviewCopyWithImpl(this._self, this._then);

  final Review _self;
  final $Res Function(Review) _then;

/// Create a copy of Review
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? rating = freezed,Object? comment = freezed,Object? user = freezed,Object? branch = freezed,Object? replies = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? canEdit = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,rating: freezed == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as num?,comment: freezed == comment ? _self.comment : comment // ignore: cast_nullable_to_non_nullable
as String?,user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as User?,branch: freezed == branch ? _self.branch : branch // ignore: cast_nullable_to_non_nullable
as Branch?,replies: freezed == replies ? _self.replies : replies // ignore: cast_nullable_to_non_nullable
as List<Reply>?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,canEdit: freezed == canEdit ? _self.canEdit : canEdit // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}
/// Create a copy of Review
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserCopyWith<$Res>? get user {
    if (_self.user == null) {
    return null;
  }

  return $UserCopyWith<$Res>(_self.user!, (value) {
    return _then(_self.copyWith(user: value));
  });
}/// Create a copy of Review
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BranchCopyWith<$Res>? get branch {
    if (_self.branch == null) {
    return null;
  }

  return $BranchCopyWith<$Res>(_self.branch!, (value) {
    return _then(_self.copyWith(branch: value));
  });
}
}


/// Adds pattern-matching-related methods to [Review].
extension ReviewPatterns on Review {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Review value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Review() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Review value)  $default,){
final _that = this;
switch (_that) {
case _Review():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Review value)?  $default,){
final _that = this;
switch (_that) {
case _Review() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? id,  num? rating,  String? comment,  User? user,  Branch? branch,  List<Reply>? replies,  DateTime? createdAt,  DateTime? updatedAt,  bool? canEdit)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Review() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? id,  num? rating,  String? comment,  User? user,  Branch? branch,  List<Reply>? replies,  DateTime? createdAt,  DateTime? updatedAt,  bool? canEdit)  $default,) {final _that = this;
switch (_that) {
case _Review():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? id,  num? rating,  String? comment,  User? user,  Branch? branch,  List<Reply>? replies,  DateTime? createdAt,  DateTime? updatedAt,  bool? canEdit)?  $default,) {final _that = this;
switch (_that) {
case _Review() when $default != null:
return $default(_that.id,_that.rating,_that.comment,_that.user,_that.branch,_that.replies,_that.createdAt,_that.updatedAt,_that.canEdit);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Review implements Review {
   _Review({this.id, this.rating, this.comment, this.user, this.branch, final  List<Reply>? replies, this.createdAt, this.updatedAt, this.canEdit}): _replies = replies;
  factory _Review.fromJson(Map<String, dynamic> json) => _$ReviewFromJson(json);

@override final  String? id;
@override final  num? rating;
@override final  String? comment;
@override final  User? user;
@override final  Branch? branch;
 final  List<Reply>? _replies;
@override List<Reply>? get replies {
  final value = _replies;
  if (value == null) return null;
  if (_replies is EqualUnmodifiableListView) return _replies;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  DateTime? createdAt;
@override final  DateTime? updatedAt;
@override final  bool? canEdit;

/// Create a copy of Review
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReviewCopyWith<_Review> get copyWith => __$ReviewCopyWithImpl<_Review>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ReviewToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Review&&(identical(other.id, id) || other.id == id)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.comment, comment) || other.comment == comment)&&(identical(other.user, user) || other.user == user)&&(identical(other.branch, branch) || other.branch == branch)&&const DeepCollectionEquality().equals(other._replies, _replies)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.canEdit, canEdit) || other.canEdit == canEdit));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,rating,comment,user,branch,const DeepCollectionEquality().hash(_replies),createdAt,updatedAt,canEdit);

@override
String toString() {
  return 'Review(id: $id, rating: $rating, comment: $comment, user: $user, branch: $branch, replies: $replies, createdAt: $createdAt, updatedAt: $updatedAt, canEdit: $canEdit)';
}


}

/// @nodoc
abstract mixin class _$ReviewCopyWith<$Res> implements $ReviewCopyWith<$Res> {
  factory _$ReviewCopyWith(_Review value, $Res Function(_Review) _then) = __$ReviewCopyWithImpl;
@override @useResult
$Res call({
 String? id, num? rating, String? comment, User? user, Branch? branch, List<Reply>? replies, DateTime? createdAt, DateTime? updatedAt, bool? canEdit
});


@override $UserCopyWith<$Res>? get user;@override $BranchCopyWith<$Res>? get branch;

}
/// @nodoc
class __$ReviewCopyWithImpl<$Res>
    implements _$ReviewCopyWith<$Res> {
  __$ReviewCopyWithImpl(this._self, this._then);

  final _Review _self;
  final $Res Function(_Review) _then;

/// Create a copy of Review
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? rating = freezed,Object? comment = freezed,Object? user = freezed,Object? branch = freezed,Object? replies = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? canEdit = freezed,}) {
  return _then(_Review(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,rating: freezed == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as num?,comment: freezed == comment ? _self.comment : comment // ignore: cast_nullable_to_non_nullable
as String?,user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as User?,branch: freezed == branch ? _self.branch : branch // ignore: cast_nullable_to_non_nullable
as Branch?,replies: freezed == replies ? _self._replies : replies // ignore: cast_nullable_to_non_nullable
as List<Reply>?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,canEdit: freezed == canEdit ? _self.canEdit : canEdit // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

/// Create a copy of Review
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserCopyWith<$Res>? get user {
    if (_self.user == null) {
    return null;
  }

  return $UserCopyWith<$Res>(_self.user!, (value) {
    return _then(_self.copyWith(user: value));
  });
}/// Create a copy of Review
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BranchCopyWith<$Res>? get branch {
    if (_self.branch == null) {
    return null;
  }

  return $BranchCopyWith<$Res>(_self.branch!, (value) {
    return _then(_self.copyWith(branch: value));
  });
}
}

// dart format on
