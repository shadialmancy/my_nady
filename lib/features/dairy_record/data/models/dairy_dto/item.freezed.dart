// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DairyItem {

 String? get id; String? get title; String? get description; bool? get isCompleted; num? get order;
/// Create a copy of DairyItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DairyItemCopyWith<DairyItem> get copyWith => _$DairyItemCopyWithImpl<DairyItem>(this as DairyItem, _$identity);

  /// Serializes this DairyItem to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DairyItem&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.isCompleted, isCompleted) || other.isCompleted == isCompleted)&&(identical(other.order, order) || other.order == order));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,description,isCompleted,order);

@override
String toString() {
  return 'DairyItem(id: $id, title: $title, description: $description, isCompleted: $isCompleted, order: $order)';
}


}

/// @nodoc
abstract mixin class $DairyItemCopyWith<$Res>  {
  factory $DairyItemCopyWith(DairyItem value, $Res Function(DairyItem) _then) = _$DairyItemCopyWithImpl;
@useResult
$Res call({
 String? id, String? title, String? description, bool? isCompleted, num? order
});




}
/// @nodoc
class _$DairyItemCopyWithImpl<$Res>
    implements $DairyItemCopyWith<$Res> {
  _$DairyItemCopyWithImpl(this._self, this._then);

  final DairyItem _self;
  final $Res Function(DairyItem) _then;

/// Create a copy of DairyItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? title = freezed,Object? description = freezed,Object? isCompleted = freezed,Object? order = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,isCompleted: freezed == isCompleted ? _self.isCompleted : isCompleted // ignore: cast_nullable_to_non_nullable
as bool?,order: freezed == order ? _self.order : order // ignore: cast_nullable_to_non_nullable
as num?,
  ));
}

}


/// Adds pattern-matching-related methods to [DairyItem].
extension DairyItemPatterns on DairyItem {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DairyItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DairyItem() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DairyItem value)  $default,){
final _that = this;
switch (_that) {
case _DairyItem():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DairyItem value)?  $default,){
final _that = this;
switch (_that) {
case _DairyItem() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? id,  String? title,  String? description,  bool? isCompleted,  num? order)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DairyItem() when $default != null:
return $default(_that.id,_that.title,_that.description,_that.isCompleted,_that.order);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? id,  String? title,  String? description,  bool? isCompleted,  num? order)  $default,) {final _that = this;
switch (_that) {
case _DairyItem():
return $default(_that.id,_that.title,_that.description,_that.isCompleted,_that.order);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? id,  String? title,  String? description,  bool? isCompleted,  num? order)?  $default,) {final _that = this;
switch (_that) {
case _DairyItem() when $default != null:
return $default(_that.id,_that.title,_that.description,_that.isCompleted,_that.order);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DairyItem implements DairyItem {
   _DairyItem({this.id, this.title, this.description, this.isCompleted, this.order});
  factory _DairyItem.fromJson(Map<String, dynamic> json) => _$DairyItemFromJson(json);

@override final  String? id;
@override final  String? title;
@override final  String? description;
@override final  bool? isCompleted;
@override final  num? order;

/// Create a copy of DairyItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DairyItemCopyWith<_DairyItem> get copyWith => __$DairyItemCopyWithImpl<_DairyItem>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DairyItemToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DairyItem&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.isCompleted, isCompleted) || other.isCompleted == isCompleted)&&(identical(other.order, order) || other.order == order));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,description,isCompleted,order);

@override
String toString() {
  return 'DairyItem(id: $id, title: $title, description: $description, isCompleted: $isCompleted, order: $order)';
}


}

/// @nodoc
abstract mixin class _$DairyItemCopyWith<$Res> implements $DairyItemCopyWith<$Res> {
  factory _$DairyItemCopyWith(_DairyItem value, $Res Function(_DairyItem) _then) = __$DairyItemCopyWithImpl;
@override @useResult
$Res call({
 String? id, String? title, String? description, bool? isCompleted, num? order
});




}
/// @nodoc
class __$DairyItemCopyWithImpl<$Res>
    implements _$DairyItemCopyWith<$Res> {
  __$DairyItemCopyWithImpl(this._self, this._then);

  final _DairyItem _self;
  final $Res Function(_DairyItem) _then;

/// Create a copy of DairyItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? title = freezed,Object? description = freezed,Object? isCompleted = freezed,Object? order = freezed,}) {
  return _then(_DairyItem(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,isCompleted: freezed == isCompleted ? _self.isCompleted : isCompleted // ignore: cast_nullable_to_non_nullable
as bool?,order: freezed == order ? _self.order : order // ignore: cast_nullable_to_non_nullable
as num?,
  ));
}


}

// dart format on
