// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tokens.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Tokens {

@HiveField(0) String? get accessToken;@HiveField(1) String? get refreshToken;@HiveField(2) DateTime? get accessTokenExpiresAt;@HiveField(3) DateTime? get refreshTokenExpiresAt;
/// Create a copy of Tokens
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TokensCopyWith<Tokens> get copyWith => _$TokensCopyWithImpl<Tokens>(this as Tokens, _$identity);

  /// Serializes this Tokens to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Tokens&&(identical(other.accessToken, accessToken) || other.accessToken == accessToken)&&(identical(other.refreshToken, refreshToken) || other.refreshToken == refreshToken)&&(identical(other.accessTokenExpiresAt, accessTokenExpiresAt) || other.accessTokenExpiresAt == accessTokenExpiresAt)&&(identical(other.refreshTokenExpiresAt, refreshTokenExpiresAt) || other.refreshTokenExpiresAt == refreshTokenExpiresAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,accessToken,refreshToken,accessTokenExpiresAt,refreshTokenExpiresAt);

@override
String toString() {
  return 'Tokens(accessToken: $accessToken, refreshToken: $refreshToken, accessTokenExpiresAt: $accessTokenExpiresAt, refreshTokenExpiresAt: $refreshTokenExpiresAt)';
}


}

/// @nodoc
abstract mixin class $TokensCopyWith<$Res>  {
  factory $TokensCopyWith(Tokens value, $Res Function(Tokens) _then) = _$TokensCopyWithImpl;
@useResult
$Res call({
@HiveField(0) String? accessToken,@HiveField(1) String? refreshToken,@HiveField(2) DateTime? accessTokenExpiresAt,@HiveField(3) DateTime? refreshTokenExpiresAt
});




}
/// @nodoc
class _$TokensCopyWithImpl<$Res>
    implements $TokensCopyWith<$Res> {
  _$TokensCopyWithImpl(this._self, this._then);

  final Tokens _self;
  final $Res Function(Tokens) _then;

/// Create a copy of Tokens
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? accessToken = freezed,Object? refreshToken = freezed,Object? accessTokenExpiresAt = freezed,Object? refreshTokenExpiresAt = freezed,}) {
  return _then(_self.copyWith(
accessToken: freezed == accessToken ? _self.accessToken : accessToken // ignore: cast_nullable_to_non_nullable
as String?,refreshToken: freezed == refreshToken ? _self.refreshToken : refreshToken // ignore: cast_nullable_to_non_nullable
as String?,accessTokenExpiresAt: freezed == accessTokenExpiresAt ? _self.accessTokenExpiresAt : accessTokenExpiresAt // ignore: cast_nullable_to_non_nullable
as DateTime?,refreshTokenExpiresAt: freezed == refreshTokenExpiresAt ? _self.refreshTokenExpiresAt : refreshTokenExpiresAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [Tokens].
extension TokensPatterns on Tokens {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Tokens value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Tokens() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Tokens value)  $default,){
final _that = this;
switch (_that) {
case _Tokens():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Tokens value)?  $default,){
final _that = this;
switch (_that) {
case _Tokens() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@HiveField(0)  String? accessToken, @HiveField(1)  String? refreshToken, @HiveField(2)  DateTime? accessTokenExpiresAt, @HiveField(3)  DateTime? refreshTokenExpiresAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Tokens() when $default != null:
return $default(_that.accessToken,_that.refreshToken,_that.accessTokenExpiresAt,_that.refreshTokenExpiresAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@HiveField(0)  String? accessToken, @HiveField(1)  String? refreshToken, @HiveField(2)  DateTime? accessTokenExpiresAt, @HiveField(3)  DateTime? refreshTokenExpiresAt)  $default,) {final _that = this;
switch (_that) {
case _Tokens():
return $default(_that.accessToken,_that.refreshToken,_that.accessTokenExpiresAt,_that.refreshTokenExpiresAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@HiveField(0)  String? accessToken, @HiveField(1)  String? refreshToken, @HiveField(2)  DateTime? accessTokenExpiresAt, @HiveField(3)  DateTime? refreshTokenExpiresAt)?  $default,) {final _that = this;
switch (_that) {
case _Tokens() when $default != null:
return $default(_that.accessToken,_that.refreshToken,_that.accessTokenExpiresAt,_that.refreshTokenExpiresAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Tokens implements Tokens {
   _Tokens({@HiveField(0) this.accessToken, @HiveField(1) this.refreshToken, @HiveField(2) this.accessTokenExpiresAt, @HiveField(3) this.refreshTokenExpiresAt});
  factory _Tokens.fromJson(Map<String, dynamic> json) => _$TokensFromJson(json);

@override@HiveField(0) final  String? accessToken;
@override@HiveField(1) final  String? refreshToken;
@override@HiveField(2) final  DateTime? accessTokenExpiresAt;
@override@HiveField(3) final  DateTime? refreshTokenExpiresAt;

/// Create a copy of Tokens
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TokensCopyWith<_Tokens> get copyWith => __$TokensCopyWithImpl<_Tokens>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TokensToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Tokens&&(identical(other.accessToken, accessToken) || other.accessToken == accessToken)&&(identical(other.refreshToken, refreshToken) || other.refreshToken == refreshToken)&&(identical(other.accessTokenExpiresAt, accessTokenExpiresAt) || other.accessTokenExpiresAt == accessTokenExpiresAt)&&(identical(other.refreshTokenExpiresAt, refreshTokenExpiresAt) || other.refreshTokenExpiresAt == refreshTokenExpiresAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,accessToken,refreshToken,accessTokenExpiresAt,refreshTokenExpiresAt);

@override
String toString() {
  return 'Tokens(accessToken: $accessToken, refreshToken: $refreshToken, accessTokenExpiresAt: $accessTokenExpiresAt, refreshTokenExpiresAt: $refreshTokenExpiresAt)';
}


}

/// @nodoc
abstract mixin class _$TokensCopyWith<$Res> implements $TokensCopyWith<$Res> {
  factory _$TokensCopyWith(_Tokens value, $Res Function(_Tokens) _then) = __$TokensCopyWithImpl;
@override @useResult
$Res call({
@HiveField(0) String? accessToken,@HiveField(1) String? refreshToken,@HiveField(2) DateTime? accessTokenExpiresAt,@HiveField(3) DateTime? refreshTokenExpiresAt
});




}
/// @nodoc
class __$TokensCopyWithImpl<$Res>
    implements _$TokensCopyWith<$Res> {
  __$TokensCopyWithImpl(this._self, this._then);

  final _Tokens _self;
  final $Res Function(_Tokens) _then;

/// Create a copy of Tokens
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? accessToken = freezed,Object? refreshToken = freezed,Object? accessTokenExpiresAt = freezed,Object? refreshTokenExpiresAt = freezed,}) {
  return _then(_Tokens(
accessToken: freezed == accessToken ? _self.accessToken : accessToken // ignore: cast_nullable_to_non_nullable
as String?,refreshToken: freezed == refreshToken ? _self.refreshToken : refreshToken // ignore: cast_nullable_to_non_nullable
as String?,accessTokenExpiresAt: freezed == accessTokenExpiresAt ? _self.accessTokenExpiresAt : accessTokenExpiresAt // ignore: cast_nullable_to_non_nullable
as DateTime?,refreshTokenExpiresAt: freezed == refreshTokenExpiresAt ? _self.refreshTokenExpiresAt : refreshTokenExpiresAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
