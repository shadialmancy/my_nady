// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'class.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Class {

 String? get id; String? get name; String? get description; List<Schedule>? get schedule;
/// Create a copy of Class
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ClassCopyWith<Class> get copyWith => _$ClassCopyWithImpl<Class>(this as Class, _$identity);

  /// Serializes this Class to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Class&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&const DeepCollectionEquality().equals(other.schedule, schedule));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,description,const DeepCollectionEquality().hash(schedule));

@override
String toString() {
  return 'Class(id: $id, name: $name, description: $description, schedule: $schedule)';
}


}

/// @nodoc
abstract mixin class $ClassCopyWith<$Res>  {
  factory $ClassCopyWith(Class value, $Res Function(Class) _then) = _$ClassCopyWithImpl;
@useResult
$Res call({
 String? id, String? name, String? description, List<Schedule>? schedule
});




}
/// @nodoc
class _$ClassCopyWithImpl<$Res>
    implements $ClassCopyWith<$Res> {
  _$ClassCopyWithImpl(this._self, this._then);

  final Class _self;
  final $Res Function(Class) _then;

/// Create a copy of Class
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = freezed,Object? description = freezed,Object? schedule = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,schedule: freezed == schedule ? _self.schedule : schedule // ignore: cast_nullable_to_non_nullable
as List<Schedule>?,
  ));
}

}


/// Adds pattern-matching-related methods to [Class].
extension ClassPatterns on Class {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Class value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Class() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Class value)  $default,){
final _that = this;
switch (_that) {
case _Class():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Class value)?  $default,){
final _that = this;
switch (_that) {
case _Class() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? id,  String? name,  String? description,  List<Schedule>? schedule)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Class() when $default != null:
return $default(_that.id,_that.name,_that.description,_that.schedule);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? id,  String? name,  String? description,  List<Schedule>? schedule)  $default,) {final _that = this;
switch (_that) {
case _Class():
return $default(_that.id,_that.name,_that.description,_that.schedule);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? id,  String? name,  String? description,  List<Schedule>? schedule)?  $default,) {final _that = this;
switch (_that) {
case _Class() when $default != null:
return $default(_that.id,_that.name,_that.description,_that.schedule);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Class implements Class {
   _Class({this.id, this.name, this.description, final  List<Schedule>? schedule}): _schedule = schedule;
  factory _Class.fromJson(Map<String, dynamic> json) => _$ClassFromJson(json);

@override final  String? id;
@override final  String? name;
@override final  String? description;
 final  List<Schedule>? _schedule;
@override List<Schedule>? get schedule {
  final value = _schedule;
  if (value == null) return null;
  if (_schedule is EqualUnmodifiableListView) return _schedule;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of Class
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ClassCopyWith<_Class> get copyWith => __$ClassCopyWithImpl<_Class>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ClassToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Class&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&const DeepCollectionEquality().equals(other._schedule, _schedule));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,description,const DeepCollectionEquality().hash(_schedule));

@override
String toString() {
  return 'Class(id: $id, name: $name, description: $description, schedule: $schedule)';
}


}

/// @nodoc
abstract mixin class _$ClassCopyWith<$Res> implements $ClassCopyWith<$Res> {
  factory _$ClassCopyWith(_Class value, $Res Function(_Class) _then) = __$ClassCopyWithImpl;
@override @useResult
$Res call({
 String? id, String? name, String? description, List<Schedule>? schedule
});




}
/// @nodoc
class __$ClassCopyWithImpl<$Res>
    implements _$ClassCopyWith<$Res> {
  __$ClassCopyWithImpl(this._self, this._then);

  final _Class _self;
  final $Res Function(_Class) _then;

/// Create a copy of Class
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = freezed,Object? description = freezed,Object? schedule = freezed,}) {
  return _then(_Class(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,schedule: freezed == schedule ? _self._schedule : schedule // ignore: cast_nullable_to_non_nullable
as List<Schedule>?,
  ));
}


}

// dart format on
