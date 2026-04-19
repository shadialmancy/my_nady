// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reply.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Reply {

 String? get id; String? get comment; bool? get isStaffReply; User? get user; DateTime? get createdAt;
/// Create a copy of Reply
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReplyCopyWith<Reply> get copyWith => _$ReplyCopyWithImpl<Reply>(this as Reply, _$identity);

  /// Serializes this Reply to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Reply&&(identical(other.id, id) || other.id == id)&&(identical(other.comment, comment) || other.comment == comment)&&(identical(other.isStaffReply, isStaffReply) || other.isStaffReply == isStaffReply)&&(identical(other.user, user) || other.user == user)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,comment,isStaffReply,user,createdAt);

@override
String toString() {
  return 'Reply(id: $id, comment: $comment, isStaffReply: $isStaffReply, user: $user, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $ReplyCopyWith<$Res>  {
  factory $ReplyCopyWith(Reply value, $Res Function(Reply) _then) = _$ReplyCopyWithImpl;
@useResult
$Res call({
 String? id, String? comment, bool? isStaffReply, User? user, DateTime? createdAt
});


$UserCopyWith<$Res>? get user;

}
/// @nodoc
class _$ReplyCopyWithImpl<$Res>
    implements $ReplyCopyWith<$Res> {
  _$ReplyCopyWithImpl(this._self, this._then);

  final Reply _self;
  final $Res Function(Reply) _then;

/// Create a copy of Reply
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? comment = freezed,Object? isStaffReply = freezed,Object? user = freezed,Object? createdAt = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,comment: freezed == comment ? _self.comment : comment // ignore: cast_nullable_to_non_nullable
as String?,isStaffReply: freezed == isStaffReply ? _self.isStaffReply : isStaffReply // ignore: cast_nullable_to_non_nullable
as bool?,user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as User?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}
/// Create a copy of Reply
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
}
}


/// Adds pattern-matching-related methods to [Reply].
extension ReplyPatterns on Reply {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Reply value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Reply() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Reply value)  $default,){
final _that = this;
switch (_that) {
case _Reply():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Reply value)?  $default,){
final _that = this;
switch (_that) {
case _Reply() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? id,  String? comment,  bool? isStaffReply,  User? user,  DateTime? createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Reply() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? id,  String? comment,  bool? isStaffReply,  User? user,  DateTime? createdAt)  $default,) {final _that = this;
switch (_that) {
case _Reply():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? id,  String? comment,  bool? isStaffReply,  User? user,  DateTime? createdAt)?  $default,) {final _that = this;
switch (_that) {
case _Reply() when $default != null:
return $default(_that.id,_that.comment,_that.isStaffReply,_that.user,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Reply implements Reply {
   _Reply({this.id, this.comment, this.isStaffReply, this.user, this.createdAt});
  factory _Reply.fromJson(Map<String, dynamic> json) => _$ReplyFromJson(json);

@override final  String? id;
@override final  String? comment;
@override final  bool? isStaffReply;
@override final  User? user;
@override final  DateTime? createdAt;

/// Create a copy of Reply
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReplyCopyWith<_Reply> get copyWith => __$ReplyCopyWithImpl<_Reply>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ReplyToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Reply&&(identical(other.id, id) || other.id == id)&&(identical(other.comment, comment) || other.comment == comment)&&(identical(other.isStaffReply, isStaffReply) || other.isStaffReply == isStaffReply)&&(identical(other.user, user) || other.user == user)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,comment,isStaffReply,user,createdAt);

@override
String toString() {
  return 'Reply(id: $id, comment: $comment, isStaffReply: $isStaffReply, user: $user, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$ReplyCopyWith<$Res> implements $ReplyCopyWith<$Res> {
  factory _$ReplyCopyWith(_Reply value, $Res Function(_Reply) _then) = __$ReplyCopyWithImpl;
@override @useResult
$Res call({
 String? id, String? comment, bool? isStaffReply, User? user, DateTime? createdAt
});


@override $UserCopyWith<$Res>? get user;

}
/// @nodoc
class __$ReplyCopyWithImpl<$Res>
    implements _$ReplyCopyWith<$Res> {
  __$ReplyCopyWithImpl(this._self, this._then);

  final _Reply _self;
  final $Res Function(_Reply) _then;

/// Create a copy of Reply
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? comment = freezed,Object? isStaffReply = freezed,Object? user = freezed,Object? createdAt = freezed,}) {
  return _then(_Reply(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,comment: freezed == comment ? _self.comment : comment // ignore: cast_nullable_to_non_nullable
as String?,isStaffReply: freezed == isStaffReply ? _self.isStaffReply : isStaffReply // ignore: cast_nullable_to_non_nullable
as bool?,user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as User?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

/// Create a copy of Reply
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
}
}

// dart format on
