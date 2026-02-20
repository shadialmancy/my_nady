// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'branch_meta_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BranchMetaItem {

 String? get id; String? get name; String? get icon;
/// Create a copy of BranchMetaItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BranchMetaItemCopyWith<BranchMetaItem> get copyWith => _$BranchMetaItemCopyWithImpl<BranchMetaItem>(this as BranchMetaItem, _$identity);

  /// Serializes this BranchMetaItem to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BranchMetaItem&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.icon, icon) || other.icon == icon));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,icon);

@override
String toString() {
  return 'BranchMetaItem(id: $id, name: $name, icon: $icon)';
}


}

/// @nodoc
abstract mixin class $BranchMetaItemCopyWith<$Res>  {
  factory $BranchMetaItemCopyWith(BranchMetaItem value, $Res Function(BranchMetaItem) _then) = _$BranchMetaItemCopyWithImpl;
@useResult
$Res call({
 String? id, String? name, String? icon
});




}
/// @nodoc
class _$BranchMetaItemCopyWithImpl<$Res>
    implements $BranchMetaItemCopyWith<$Res> {
  _$BranchMetaItemCopyWithImpl(this._self, this._then);

  final BranchMetaItem _self;
  final $Res Function(BranchMetaItem) _then;

/// Create a copy of BranchMetaItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = freezed,Object? icon = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,icon: freezed == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [BranchMetaItem].
extension BranchMetaItemPatterns on BranchMetaItem {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BranchMetaItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BranchMetaItem() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BranchMetaItem value)  $default,){
final _that = this;
switch (_that) {
case _BranchMetaItem():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BranchMetaItem value)?  $default,){
final _that = this;
switch (_that) {
case _BranchMetaItem() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? id,  String? name,  String? icon)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BranchMetaItem() when $default != null:
return $default(_that.id,_that.name,_that.icon);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? id,  String? name,  String? icon)  $default,) {final _that = this;
switch (_that) {
case _BranchMetaItem():
return $default(_that.id,_that.name,_that.icon);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? id,  String? name,  String? icon)?  $default,) {final _that = this;
switch (_that) {
case _BranchMetaItem() when $default != null:
return $default(_that.id,_that.name,_that.icon);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BranchMetaItem implements BranchMetaItem {
  const _BranchMetaItem({this.id, this.name, this.icon});
  factory _BranchMetaItem.fromJson(Map<String, dynamic> json) => _$BranchMetaItemFromJson(json);

@override final  String? id;
@override final  String? name;
@override final  String? icon;

/// Create a copy of BranchMetaItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BranchMetaItemCopyWith<_BranchMetaItem> get copyWith => __$BranchMetaItemCopyWithImpl<_BranchMetaItem>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BranchMetaItemToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BranchMetaItem&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.icon, icon) || other.icon == icon));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,icon);

@override
String toString() {
  return 'BranchMetaItem(id: $id, name: $name, icon: $icon)';
}


}

/// @nodoc
abstract mixin class _$BranchMetaItemCopyWith<$Res> implements $BranchMetaItemCopyWith<$Res> {
  factory _$BranchMetaItemCopyWith(_BranchMetaItem value, $Res Function(_BranchMetaItem) _then) = __$BranchMetaItemCopyWithImpl;
@override @useResult
$Res call({
 String? id, String? name, String? icon
});




}
/// @nodoc
class __$BranchMetaItemCopyWithImpl<$Res>
    implements _$BranchMetaItemCopyWith<$Res> {
  __$BranchMetaItemCopyWithImpl(this._self, this._then);

  final _BranchMetaItem _self;
  final $Res Function(_BranchMetaItem) _then;

/// Create a copy of BranchMetaItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = freezed,Object? icon = freezed,}) {
  return _then(_BranchMetaItem(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,icon: freezed == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
