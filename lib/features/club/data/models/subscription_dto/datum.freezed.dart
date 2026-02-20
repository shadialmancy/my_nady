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

 String? get subscriptionId; String? get branchName; String? get planName; String? get currentStatus; List<History>? get history;
/// Create a copy of Datum
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DatumCopyWith<Datum> get copyWith => _$DatumCopyWithImpl<Datum>(this as Datum, _$identity);

  /// Serializes this Datum to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Datum&&(identical(other.subscriptionId, subscriptionId) || other.subscriptionId == subscriptionId)&&(identical(other.branchName, branchName) || other.branchName == branchName)&&(identical(other.planName, planName) || other.planName == planName)&&(identical(other.currentStatus, currentStatus) || other.currentStatus == currentStatus)&&const DeepCollectionEquality().equals(other.history, history));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,subscriptionId,branchName,planName,currentStatus,const DeepCollectionEquality().hash(history));

@override
String toString() {
  return 'Datum(subscriptionId: $subscriptionId, branchName: $branchName, planName: $planName, currentStatus: $currentStatus, history: $history)';
}


}

/// @nodoc
abstract mixin class $DatumCopyWith<$Res>  {
  factory $DatumCopyWith(Datum value, $Res Function(Datum) _then) = _$DatumCopyWithImpl;
@useResult
$Res call({
 String? subscriptionId, String? branchName, String? planName, String? currentStatus, List<History>? history
});




}
/// @nodoc
class _$DatumCopyWithImpl<$Res>
    implements $DatumCopyWith<$Res> {
  _$DatumCopyWithImpl(this._self, this._then);

  final Datum _self;
  final $Res Function(Datum) _then;

/// Create a copy of Datum
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? subscriptionId = freezed,Object? branchName = freezed,Object? planName = freezed,Object? currentStatus = freezed,Object? history = freezed,}) {
  return _then(_self.copyWith(
subscriptionId: freezed == subscriptionId ? _self.subscriptionId : subscriptionId // ignore: cast_nullable_to_non_nullable
as String?,branchName: freezed == branchName ? _self.branchName : branchName // ignore: cast_nullable_to_non_nullable
as String?,planName: freezed == planName ? _self.planName : planName // ignore: cast_nullable_to_non_nullable
as String?,currentStatus: freezed == currentStatus ? _self.currentStatus : currentStatus // ignore: cast_nullable_to_non_nullable
as String?,history: freezed == history ? _self.history : history // ignore: cast_nullable_to_non_nullable
as List<History>?,
  ));
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? subscriptionId,  String? branchName,  String? planName,  String? currentStatus,  List<History>? history)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Datum() when $default != null:
return $default(_that.subscriptionId,_that.branchName,_that.planName,_that.currentStatus,_that.history);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? subscriptionId,  String? branchName,  String? planName,  String? currentStatus,  List<History>? history)  $default,) {final _that = this;
switch (_that) {
case _Datum():
return $default(_that.subscriptionId,_that.branchName,_that.planName,_that.currentStatus,_that.history);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? subscriptionId,  String? branchName,  String? planName,  String? currentStatus,  List<History>? history)?  $default,) {final _that = this;
switch (_that) {
case _Datum() when $default != null:
return $default(_that.subscriptionId,_that.branchName,_that.planName,_that.currentStatus,_that.history);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Datum implements Datum {
   _Datum({this.subscriptionId, this.branchName, this.planName, this.currentStatus, final  List<History>? history}): _history = history;
  factory _Datum.fromJson(Map<String, dynamic> json) => _$DatumFromJson(json);

@override final  String? subscriptionId;
@override final  String? branchName;
@override final  String? planName;
@override final  String? currentStatus;
 final  List<History>? _history;
@override List<History>? get history {
  final value = _history;
  if (value == null) return null;
  if (_history is EqualUnmodifiableListView) return _history;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Datum&&(identical(other.subscriptionId, subscriptionId) || other.subscriptionId == subscriptionId)&&(identical(other.branchName, branchName) || other.branchName == branchName)&&(identical(other.planName, planName) || other.planName == planName)&&(identical(other.currentStatus, currentStatus) || other.currentStatus == currentStatus)&&const DeepCollectionEquality().equals(other._history, _history));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,subscriptionId,branchName,planName,currentStatus,const DeepCollectionEquality().hash(_history));

@override
String toString() {
  return 'Datum(subscriptionId: $subscriptionId, branchName: $branchName, planName: $planName, currentStatus: $currentStatus, history: $history)';
}


}

/// @nodoc
abstract mixin class _$DatumCopyWith<$Res> implements $DatumCopyWith<$Res> {
  factory _$DatumCopyWith(_Datum value, $Res Function(_Datum) _then) = __$DatumCopyWithImpl;
@override @useResult
$Res call({
 String? subscriptionId, String? branchName, String? planName, String? currentStatus, List<History>? history
});




}
/// @nodoc
class __$DatumCopyWithImpl<$Res>
    implements _$DatumCopyWith<$Res> {
  __$DatumCopyWithImpl(this._self, this._then);

  final _Datum _self;
  final $Res Function(_Datum) _then;

/// Create a copy of Datum
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? subscriptionId = freezed,Object? branchName = freezed,Object? planName = freezed,Object? currentStatus = freezed,Object? history = freezed,}) {
  return _then(_Datum(
subscriptionId: freezed == subscriptionId ? _self.subscriptionId : subscriptionId // ignore: cast_nullable_to_non_nullable
as String?,branchName: freezed == branchName ? _self.branchName : branchName // ignore: cast_nullable_to_non_nullable
as String?,planName: freezed == planName ? _self.planName : planName // ignore: cast_nullable_to_non_nullable
as String?,currentStatus: freezed == currentStatus ? _self.currentStatus : currentStatus // ignore: cast_nullable_to_non_nullable
as String?,history: freezed == history ? _self._history : history // ignore: cast_nullable_to_non_nullable
as List<History>?,
  ));
}


}

// dart format on
