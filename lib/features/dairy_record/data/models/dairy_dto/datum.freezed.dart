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
mixin _$DairyDatum {

 String? get id; String? get title; String? get content; DateTime? get date; List<String>? get images; List<DairyItem>? get items; DateTime? get createdAt; DateTime? get updatedAt;
/// Create a copy of DairyDatum
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DairyDatumCopyWith<DairyDatum> get copyWith => _$DairyDatumCopyWithImpl<DairyDatum>(this as DairyDatum, _$identity);

  /// Serializes this DairyDatum to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DairyDatum&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.content, content) || other.content == content)&&(identical(other.date, date) || other.date == date)&&const DeepCollectionEquality().equals(other.images, images)&&const DeepCollectionEquality().equals(other.items, items)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,content,date,const DeepCollectionEquality().hash(images),const DeepCollectionEquality().hash(items),createdAt,updatedAt);

@override
String toString() {
  return 'DairyDatum(id: $id, title: $title, content: $content, date: $date, images: $images, items: $items, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $DairyDatumCopyWith<$Res>  {
  factory $DairyDatumCopyWith(DairyDatum value, $Res Function(DairyDatum) _then) = _$DairyDatumCopyWithImpl;
@useResult
$Res call({
 String? id, String? title, String? content, DateTime? date, List<String>? images, List<DairyItem>? items, DateTime? createdAt, DateTime? updatedAt
});




}
/// @nodoc
class _$DairyDatumCopyWithImpl<$Res>
    implements $DairyDatumCopyWith<$Res> {
  _$DairyDatumCopyWithImpl(this._self, this._then);

  final DairyDatum _self;
  final $Res Function(DairyDatum) _then;

/// Create a copy of DairyDatum
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? title = freezed,Object? content = freezed,Object? date = freezed,Object? images = freezed,Object? items = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,content: freezed == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String?,date: freezed == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime?,images: freezed == images ? _self.images : images // ignore: cast_nullable_to_non_nullable
as List<String>?,items: freezed == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<DairyItem>?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [DairyDatum].
extension DairyDatumPatterns on DairyDatum {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DairyDatum value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DairyDatum() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DairyDatum value)  $default,){
final _that = this;
switch (_that) {
case _DairyDatum():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DairyDatum value)?  $default,){
final _that = this;
switch (_that) {
case _DairyDatum() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? id,  String? title,  String? content,  DateTime? date,  List<String>? images,  List<DairyItem>? items,  DateTime? createdAt,  DateTime? updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DairyDatum() when $default != null:
return $default(_that.id,_that.title,_that.content,_that.date,_that.images,_that.items,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? id,  String? title,  String? content,  DateTime? date,  List<String>? images,  List<DairyItem>? items,  DateTime? createdAt,  DateTime? updatedAt)  $default,) {final _that = this;
switch (_that) {
case _DairyDatum():
return $default(_that.id,_that.title,_that.content,_that.date,_that.images,_that.items,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? id,  String? title,  String? content,  DateTime? date,  List<String>? images,  List<DairyItem>? items,  DateTime? createdAt,  DateTime? updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _DairyDatum() when $default != null:
return $default(_that.id,_that.title,_that.content,_that.date,_that.images,_that.items,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DairyDatum implements DairyDatum {
   _DairyDatum({this.id, this.title, this.content, this.date, final  List<String>? images, final  List<DairyItem>? items, this.createdAt, this.updatedAt}): _images = images,_items = items;
  factory _DairyDatum.fromJson(Map<String, dynamic> json) => _$DairyDatumFromJson(json);

@override final  String? id;
@override final  String? title;
@override final  String? content;
@override final  DateTime? date;
 final  List<String>? _images;
@override List<String>? get images {
  final value = _images;
  if (value == null) return null;
  if (_images is EqualUnmodifiableListView) return _images;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<DairyItem>? _items;
@override List<DairyItem>? get items {
  final value = _items;
  if (value == null) return null;
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  DateTime? createdAt;
@override final  DateTime? updatedAt;

/// Create a copy of DairyDatum
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DairyDatumCopyWith<_DairyDatum> get copyWith => __$DairyDatumCopyWithImpl<_DairyDatum>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DairyDatumToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DairyDatum&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.content, content) || other.content == content)&&(identical(other.date, date) || other.date == date)&&const DeepCollectionEquality().equals(other._images, _images)&&const DeepCollectionEquality().equals(other._items, _items)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,content,date,const DeepCollectionEquality().hash(_images),const DeepCollectionEquality().hash(_items),createdAt,updatedAt);

@override
String toString() {
  return 'DairyDatum(id: $id, title: $title, content: $content, date: $date, images: $images, items: $items, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$DairyDatumCopyWith<$Res> implements $DairyDatumCopyWith<$Res> {
  factory _$DairyDatumCopyWith(_DairyDatum value, $Res Function(_DairyDatum) _then) = __$DairyDatumCopyWithImpl;
@override @useResult
$Res call({
 String? id, String? title, String? content, DateTime? date, List<String>? images, List<DairyItem>? items, DateTime? createdAt, DateTime? updatedAt
});




}
/// @nodoc
class __$DairyDatumCopyWithImpl<$Res>
    implements _$DairyDatumCopyWith<$Res> {
  __$DairyDatumCopyWithImpl(this._self, this._then);

  final _DairyDatum _self;
  final $Res Function(_DairyDatum) _then;

/// Create a copy of DairyDatum
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? title = freezed,Object? content = freezed,Object? date = freezed,Object? images = freezed,Object? items = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_DairyDatum(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,content: freezed == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String?,date: freezed == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime?,images: freezed == images ? _self._images : images // ignore: cast_nullable_to_non_nullable
as List<String>?,items: freezed == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<DairyItem>?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
