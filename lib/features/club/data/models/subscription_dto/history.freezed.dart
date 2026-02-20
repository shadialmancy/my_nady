// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'history.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$History {

 String? get id; DateTime? get changeDate; String? get changeType; String? get previousStatus; String? get newStatus; String? get notes;
/// Create a copy of History
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HistoryCopyWith<History> get copyWith => _$HistoryCopyWithImpl<History>(this as History, _$identity);

  /// Serializes this History to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is History&&(identical(other.id, id) || other.id == id)&&(identical(other.changeDate, changeDate) || other.changeDate == changeDate)&&(identical(other.changeType, changeType) || other.changeType == changeType)&&(identical(other.previousStatus, previousStatus) || other.previousStatus == previousStatus)&&(identical(other.newStatus, newStatus) || other.newStatus == newStatus)&&(identical(other.notes, notes) || other.notes == notes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,changeDate,changeType,previousStatus,newStatus,notes);

@override
String toString() {
  return 'History(id: $id, changeDate: $changeDate, changeType: $changeType, previousStatus: $previousStatus, newStatus: $newStatus, notes: $notes)';
}


}

/// @nodoc
abstract mixin class $HistoryCopyWith<$Res>  {
  factory $HistoryCopyWith(History value, $Res Function(History) _then) = _$HistoryCopyWithImpl;
@useResult
$Res call({
 String? id, DateTime? changeDate, String? changeType, String? previousStatus, String? newStatus, String? notes
});




}
/// @nodoc
class _$HistoryCopyWithImpl<$Res>
    implements $HistoryCopyWith<$Res> {
  _$HistoryCopyWithImpl(this._self, this._then);

  final History _self;
  final $Res Function(History) _then;

/// Create a copy of History
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? changeDate = freezed,Object? changeType = freezed,Object? previousStatus = freezed,Object? newStatus = freezed,Object? notes = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,changeDate: freezed == changeDate ? _self.changeDate : changeDate // ignore: cast_nullable_to_non_nullable
as DateTime?,changeType: freezed == changeType ? _self.changeType : changeType // ignore: cast_nullable_to_non_nullable
as String?,previousStatus: freezed == previousStatus ? _self.previousStatus : previousStatus // ignore: cast_nullable_to_non_nullable
as String?,newStatus: freezed == newStatus ? _self.newStatus : newStatus // ignore: cast_nullable_to_non_nullable
as String?,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [History].
extension HistoryPatterns on History {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _History value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _History() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _History value)  $default,){
final _that = this;
switch (_that) {
case _History():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _History value)?  $default,){
final _that = this;
switch (_that) {
case _History() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? id,  DateTime? changeDate,  String? changeType,  String? previousStatus,  String? newStatus,  String? notes)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _History() when $default != null:
return $default(_that.id,_that.changeDate,_that.changeType,_that.previousStatus,_that.newStatus,_that.notes);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? id,  DateTime? changeDate,  String? changeType,  String? previousStatus,  String? newStatus,  String? notes)  $default,) {final _that = this;
switch (_that) {
case _History():
return $default(_that.id,_that.changeDate,_that.changeType,_that.previousStatus,_that.newStatus,_that.notes);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? id,  DateTime? changeDate,  String? changeType,  String? previousStatus,  String? newStatus,  String? notes)?  $default,) {final _that = this;
switch (_that) {
case _History() when $default != null:
return $default(_that.id,_that.changeDate,_that.changeType,_that.previousStatus,_that.newStatus,_that.notes);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _History implements History {
   _History({this.id, this.changeDate, this.changeType, this.previousStatus, this.newStatus, this.notes});
  factory _History.fromJson(Map<String, dynamic> json) => _$HistoryFromJson(json);

@override final  String? id;
@override final  DateTime? changeDate;
@override final  String? changeType;
@override final  String? previousStatus;
@override final  String? newStatus;
@override final  String? notes;

/// Create a copy of History
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HistoryCopyWith<_History> get copyWith => __$HistoryCopyWithImpl<_History>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$HistoryToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _History&&(identical(other.id, id) || other.id == id)&&(identical(other.changeDate, changeDate) || other.changeDate == changeDate)&&(identical(other.changeType, changeType) || other.changeType == changeType)&&(identical(other.previousStatus, previousStatus) || other.previousStatus == previousStatus)&&(identical(other.newStatus, newStatus) || other.newStatus == newStatus)&&(identical(other.notes, notes) || other.notes == notes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,changeDate,changeType,previousStatus,newStatus,notes);

@override
String toString() {
  return 'History(id: $id, changeDate: $changeDate, changeType: $changeType, previousStatus: $previousStatus, newStatus: $newStatus, notes: $notes)';
}


}

/// @nodoc
abstract mixin class _$HistoryCopyWith<$Res> implements $HistoryCopyWith<$Res> {
  factory _$HistoryCopyWith(_History value, $Res Function(_History) _then) = __$HistoryCopyWithImpl;
@override @useResult
$Res call({
 String? id, DateTime? changeDate, String? changeType, String? previousStatus, String? newStatus, String? notes
});




}
/// @nodoc
class __$HistoryCopyWithImpl<$Res>
    implements _$HistoryCopyWith<$Res> {
  __$HistoryCopyWithImpl(this._self, this._then);

  final _History _self;
  final $Res Function(_History) _then;

/// Create a copy of History
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? changeDate = freezed,Object? changeType = freezed,Object? previousStatus = freezed,Object? newStatus = freezed,Object? notes = freezed,}) {
  return _then(_History(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,changeDate: freezed == changeDate ? _self.changeDate : changeDate // ignore: cast_nullable_to_non_nullable
as DateTime?,changeType: freezed == changeType ? _self.changeType : changeType // ignore: cast_nullable_to_non_nullable
as String?,previousStatus: freezed == previousStatus ? _self.previousStatus : previousStatus // ignore: cast_nullable_to_non_nullable
as String?,newStatus: freezed == newStatus ? _self.newStatus : newStatus // ignore: cast_nullable_to_non_nullable
as String?,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
