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

 String? get id; String? get userId; String? get subscriptionPlanId; String? get branchId; DateTime? get startDate; DateTime? get endDate; String? get status; dynamic get invoiceUrl; bool? get isRenewal; dynamic get previousSubscriptionId; dynamic get cancelledAt; dynamic get cancellationReason; dynamic get cancelledBy; bool? get autoRenew; DateTime? get createdAt; DateTime? get updatedAt; dynamic get offerId; Branch? get branch; SubscriptionPlan? get subscriptionPlan;
/// Create a copy of Datum
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DatumCopyWith<Datum> get copyWith => _$DatumCopyWithImpl<Datum>(this as Datum, _$identity);

  /// Serializes this Datum to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Datum&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.subscriptionPlanId, subscriptionPlanId) || other.subscriptionPlanId == subscriptionPlanId)&&(identical(other.branchId, branchId) || other.branchId == branchId)&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.endDate, endDate) || other.endDate == endDate)&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other.invoiceUrl, invoiceUrl)&&(identical(other.isRenewal, isRenewal) || other.isRenewal == isRenewal)&&const DeepCollectionEquality().equals(other.previousSubscriptionId, previousSubscriptionId)&&const DeepCollectionEquality().equals(other.cancelledAt, cancelledAt)&&const DeepCollectionEquality().equals(other.cancellationReason, cancellationReason)&&const DeepCollectionEquality().equals(other.cancelledBy, cancelledBy)&&(identical(other.autoRenew, autoRenew) || other.autoRenew == autoRenew)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&const DeepCollectionEquality().equals(other.offerId, offerId)&&(identical(other.branch, branch) || other.branch == branch)&&(identical(other.subscriptionPlan, subscriptionPlan) || other.subscriptionPlan == subscriptionPlan));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,userId,subscriptionPlanId,branchId,startDate,endDate,status,const DeepCollectionEquality().hash(invoiceUrl),isRenewal,const DeepCollectionEquality().hash(previousSubscriptionId),const DeepCollectionEquality().hash(cancelledAt),const DeepCollectionEquality().hash(cancellationReason),const DeepCollectionEquality().hash(cancelledBy),autoRenew,createdAt,updatedAt,const DeepCollectionEquality().hash(offerId),branch,subscriptionPlan]);

@override
String toString() {
  return 'Datum(id: $id, userId: $userId, subscriptionPlanId: $subscriptionPlanId, branchId: $branchId, startDate: $startDate, endDate: $endDate, status: $status, invoiceUrl: $invoiceUrl, isRenewal: $isRenewal, previousSubscriptionId: $previousSubscriptionId, cancelledAt: $cancelledAt, cancellationReason: $cancellationReason, cancelledBy: $cancelledBy, autoRenew: $autoRenew, createdAt: $createdAt, updatedAt: $updatedAt, offerId: $offerId, branch: $branch, subscriptionPlan: $subscriptionPlan)';
}


}

/// @nodoc
abstract mixin class $DatumCopyWith<$Res>  {
  factory $DatumCopyWith(Datum value, $Res Function(Datum) _then) = _$DatumCopyWithImpl;
@useResult
$Res call({
 String? id, String? userId, String? subscriptionPlanId, String? branchId, DateTime? startDate, DateTime? endDate, String? status, dynamic invoiceUrl, bool? isRenewal, dynamic previousSubscriptionId, dynamic cancelledAt, dynamic cancellationReason, dynamic cancelledBy, bool? autoRenew, DateTime? createdAt, DateTime? updatedAt, dynamic offerId, Branch? branch, SubscriptionPlan? subscriptionPlan
});


$BranchCopyWith<$Res>? get branch;$SubscriptionPlanCopyWith<$Res>? get subscriptionPlan;

}
/// @nodoc
class _$DatumCopyWithImpl<$Res>
    implements $DatumCopyWith<$Res> {
  _$DatumCopyWithImpl(this._self, this._then);

  final Datum _self;
  final $Res Function(Datum) _then;

/// Create a copy of Datum
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? userId = freezed,Object? subscriptionPlanId = freezed,Object? branchId = freezed,Object? startDate = freezed,Object? endDate = freezed,Object? status = freezed,Object? invoiceUrl = freezed,Object? isRenewal = freezed,Object? previousSubscriptionId = freezed,Object? cancelledAt = freezed,Object? cancellationReason = freezed,Object? cancelledBy = freezed,Object? autoRenew = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? offerId = freezed,Object? branch = freezed,Object? subscriptionPlan = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String?,subscriptionPlanId: freezed == subscriptionPlanId ? _self.subscriptionPlanId : subscriptionPlanId // ignore: cast_nullable_to_non_nullable
as String?,branchId: freezed == branchId ? _self.branchId : branchId // ignore: cast_nullable_to_non_nullable
as String?,startDate: freezed == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as DateTime?,endDate: freezed == endDate ? _self.endDate : endDate // ignore: cast_nullable_to_non_nullable
as DateTime?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,invoiceUrl: freezed == invoiceUrl ? _self.invoiceUrl : invoiceUrl // ignore: cast_nullable_to_non_nullable
as dynamic,isRenewal: freezed == isRenewal ? _self.isRenewal : isRenewal // ignore: cast_nullable_to_non_nullable
as bool?,previousSubscriptionId: freezed == previousSubscriptionId ? _self.previousSubscriptionId : previousSubscriptionId // ignore: cast_nullable_to_non_nullable
as dynamic,cancelledAt: freezed == cancelledAt ? _self.cancelledAt : cancelledAt // ignore: cast_nullable_to_non_nullable
as dynamic,cancellationReason: freezed == cancellationReason ? _self.cancellationReason : cancellationReason // ignore: cast_nullable_to_non_nullable
as dynamic,cancelledBy: freezed == cancelledBy ? _self.cancelledBy : cancelledBy // ignore: cast_nullable_to_non_nullable
as dynamic,autoRenew: freezed == autoRenew ? _self.autoRenew : autoRenew // ignore: cast_nullable_to_non_nullable
as bool?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,offerId: freezed == offerId ? _self.offerId : offerId // ignore: cast_nullable_to_non_nullable
as dynamic,branch: freezed == branch ? _self.branch : branch // ignore: cast_nullable_to_non_nullable
as Branch?,subscriptionPlan: freezed == subscriptionPlan ? _self.subscriptionPlan : subscriptionPlan // ignore: cast_nullable_to_non_nullable
as SubscriptionPlan?,
  ));
}
/// Create a copy of Datum
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
}/// Create a copy of Datum
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SubscriptionPlanCopyWith<$Res>? get subscriptionPlan {
    if (_self.subscriptionPlan == null) {
    return null;
  }

  return $SubscriptionPlanCopyWith<$Res>(_self.subscriptionPlan!, (value) {
    return _then(_self.copyWith(subscriptionPlan: value));
  });
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? id,  String? userId,  String? subscriptionPlanId,  String? branchId,  DateTime? startDate,  DateTime? endDate,  String? status,  dynamic invoiceUrl,  bool? isRenewal,  dynamic previousSubscriptionId,  dynamic cancelledAt,  dynamic cancellationReason,  dynamic cancelledBy,  bool? autoRenew,  DateTime? createdAt,  DateTime? updatedAt,  dynamic offerId,  Branch? branch,  SubscriptionPlan? subscriptionPlan)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Datum() when $default != null:
return $default(_that.id,_that.userId,_that.subscriptionPlanId,_that.branchId,_that.startDate,_that.endDate,_that.status,_that.invoiceUrl,_that.isRenewal,_that.previousSubscriptionId,_that.cancelledAt,_that.cancellationReason,_that.cancelledBy,_that.autoRenew,_that.createdAt,_that.updatedAt,_that.offerId,_that.branch,_that.subscriptionPlan);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? id,  String? userId,  String? subscriptionPlanId,  String? branchId,  DateTime? startDate,  DateTime? endDate,  String? status,  dynamic invoiceUrl,  bool? isRenewal,  dynamic previousSubscriptionId,  dynamic cancelledAt,  dynamic cancellationReason,  dynamic cancelledBy,  bool? autoRenew,  DateTime? createdAt,  DateTime? updatedAt,  dynamic offerId,  Branch? branch,  SubscriptionPlan? subscriptionPlan)  $default,) {final _that = this;
switch (_that) {
case _Datum():
return $default(_that.id,_that.userId,_that.subscriptionPlanId,_that.branchId,_that.startDate,_that.endDate,_that.status,_that.invoiceUrl,_that.isRenewal,_that.previousSubscriptionId,_that.cancelledAt,_that.cancellationReason,_that.cancelledBy,_that.autoRenew,_that.createdAt,_that.updatedAt,_that.offerId,_that.branch,_that.subscriptionPlan);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? id,  String? userId,  String? subscriptionPlanId,  String? branchId,  DateTime? startDate,  DateTime? endDate,  String? status,  dynamic invoiceUrl,  bool? isRenewal,  dynamic previousSubscriptionId,  dynamic cancelledAt,  dynamic cancellationReason,  dynamic cancelledBy,  bool? autoRenew,  DateTime? createdAt,  DateTime? updatedAt,  dynamic offerId,  Branch? branch,  SubscriptionPlan? subscriptionPlan)?  $default,) {final _that = this;
switch (_that) {
case _Datum() when $default != null:
return $default(_that.id,_that.userId,_that.subscriptionPlanId,_that.branchId,_that.startDate,_that.endDate,_that.status,_that.invoiceUrl,_that.isRenewal,_that.previousSubscriptionId,_that.cancelledAt,_that.cancellationReason,_that.cancelledBy,_that.autoRenew,_that.createdAt,_that.updatedAt,_that.offerId,_that.branch,_that.subscriptionPlan);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Datum implements Datum {
   _Datum({this.id, this.userId, this.subscriptionPlanId, this.branchId, this.startDate, this.endDate, this.status, this.invoiceUrl, this.isRenewal, this.previousSubscriptionId, this.cancelledAt, this.cancellationReason, this.cancelledBy, this.autoRenew, this.createdAt, this.updatedAt, this.offerId, this.branch, this.subscriptionPlan});
  factory _Datum.fromJson(Map<String, dynamic> json) => _$DatumFromJson(json);

@override final  String? id;
@override final  String? userId;
@override final  String? subscriptionPlanId;
@override final  String? branchId;
@override final  DateTime? startDate;
@override final  DateTime? endDate;
@override final  String? status;
@override final  dynamic invoiceUrl;
@override final  bool? isRenewal;
@override final  dynamic previousSubscriptionId;
@override final  dynamic cancelledAt;
@override final  dynamic cancellationReason;
@override final  dynamic cancelledBy;
@override final  bool? autoRenew;
@override final  DateTime? createdAt;
@override final  DateTime? updatedAt;
@override final  dynamic offerId;
@override final  Branch? branch;
@override final  SubscriptionPlan? subscriptionPlan;

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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Datum&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.subscriptionPlanId, subscriptionPlanId) || other.subscriptionPlanId == subscriptionPlanId)&&(identical(other.branchId, branchId) || other.branchId == branchId)&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.endDate, endDate) || other.endDate == endDate)&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other.invoiceUrl, invoiceUrl)&&(identical(other.isRenewal, isRenewal) || other.isRenewal == isRenewal)&&const DeepCollectionEquality().equals(other.previousSubscriptionId, previousSubscriptionId)&&const DeepCollectionEquality().equals(other.cancelledAt, cancelledAt)&&const DeepCollectionEquality().equals(other.cancellationReason, cancellationReason)&&const DeepCollectionEquality().equals(other.cancelledBy, cancelledBy)&&(identical(other.autoRenew, autoRenew) || other.autoRenew == autoRenew)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&const DeepCollectionEquality().equals(other.offerId, offerId)&&(identical(other.branch, branch) || other.branch == branch)&&(identical(other.subscriptionPlan, subscriptionPlan) || other.subscriptionPlan == subscriptionPlan));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,userId,subscriptionPlanId,branchId,startDate,endDate,status,const DeepCollectionEquality().hash(invoiceUrl),isRenewal,const DeepCollectionEquality().hash(previousSubscriptionId),const DeepCollectionEquality().hash(cancelledAt),const DeepCollectionEquality().hash(cancellationReason),const DeepCollectionEquality().hash(cancelledBy),autoRenew,createdAt,updatedAt,const DeepCollectionEquality().hash(offerId),branch,subscriptionPlan]);

@override
String toString() {
  return 'Datum(id: $id, userId: $userId, subscriptionPlanId: $subscriptionPlanId, branchId: $branchId, startDate: $startDate, endDate: $endDate, status: $status, invoiceUrl: $invoiceUrl, isRenewal: $isRenewal, previousSubscriptionId: $previousSubscriptionId, cancelledAt: $cancelledAt, cancellationReason: $cancellationReason, cancelledBy: $cancelledBy, autoRenew: $autoRenew, createdAt: $createdAt, updatedAt: $updatedAt, offerId: $offerId, branch: $branch, subscriptionPlan: $subscriptionPlan)';
}


}

/// @nodoc
abstract mixin class _$DatumCopyWith<$Res> implements $DatumCopyWith<$Res> {
  factory _$DatumCopyWith(_Datum value, $Res Function(_Datum) _then) = __$DatumCopyWithImpl;
@override @useResult
$Res call({
 String? id, String? userId, String? subscriptionPlanId, String? branchId, DateTime? startDate, DateTime? endDate, String? status, dynamic invoiceUrl, bool? isRenewal, dynamic previousSubscriptionId, dynamic cancelledAt, dynamic cancellationReason, dynamic cancelledBy, bool? autoRenew, DateTime? createdAt, DateTime? updatedAt, dynamic offerId, Branch? branch, SubscriptionPlan? subscriptionPlan
});


@override $BranchCopyWith<$Res>? get branch;@override $SubscriptionPlanCopyWith<$Res>? get subscriptionPlan;

}
/// @nodoc
class __$DatumCopyWithImpl<$Res>
    implements _$DatumCopyWith<$Res> {
  __$DatumCopyWithImpl(this._self, this._then);

  final _Datum _self;
  final $Res Function(_Datum) _then;

/// Create a copy of Datum
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? userId = freezed,Object? subscriptionPlanId = freezed,Object? branchId = freezed,Object? startDate = freezed,Object? endDate = freezed,Object? status = freezed,Object? invoiceUrl = freezed,Object? isRenewal = freezed,Object? previousSubscriptionId = freezed,Object? cancelledAt = freezed,Object? cancellationReason = freezed,Object? cancelledBy = freezed,Object? autoRenew = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? offerId = freezed,Object? branch = freezed,Object? subscriptionPlan = freezed,}) {
  return _then(_Datum(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String?,subscriptionPlanId: freezed == subscriptionPlanId ? _self.subscriptionPlanId : subscriptionPlanId // ignore: cast_nullable_to_non_nullable
as String?,branchId: freezed == branchId ? _self.branchId : branchId // ignore: cast_nullable_to_non_nullable
as String?,startDate: freezed == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as DateTime?,endDate: freezed == endDate ? _self.endDate : endDate // ignore: cast_nullable_to_non_nullable
as DateTime?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,invoiceUrl: freezed == invoiceUrl ? _self.invoiceUrl : invoiceUrl // ignore: cast_nullable_to_non_nullable
as dynamic,isRenewal: freezed == isRenewal ? _self.isRenewal : isRenewal // ignore: cast_nullable_to_non_nullable
as bool?,previousSubscriptionId: freezed == previousSubscriptionId ? _self.previousSubscriptionId : previousSubscriptionId // ignore: cast_nullable_to_non_nullable
as dynamic,cancelledAt: freezed == cancelledAt ? _self.cancelledAt : cancelledAt // ignore: cast_nullable_to_non_nullable
as dynamic,cancellationReason: freezed == cancellationReason ? _self.cancellationReason : cancellationReason // ignore: cast_nullable_to_non_nullable
as dynamic,cancelledBy: freezed == cancelledBy ? _self.cancelledBy : cancelledBy // ignore: cast_nullable_to_non_nullable
as dynamic,autoRenew: freezed == autoRenew ? _self.autoRenew : autoRenew // ignore: cast_nullable_to_non_nullable
as bool?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,offerId: freezed == offerId ? _self.offerId : offerId // ignore: cast_nullable_to_non_nullable
as dynamic,branch: freezed == branch ? _self.branch : branch // ignore: cast_nullable_to_non_nullable
as Branch?,subscriptionPlan: freezed == subscriptionPlan ? _self.subscriptionPlan : subscriptionPlan // ignore: cast_nullable_to_non_nullable
as SubscriptionPlan?,
  ));
}

/// Create a copy of Datum
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
}/// Create a copy of Datum
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SubscriptionPlanCopyWith<$Res>? get subscriptionPlan {
    if (_self.subscriptionPlan == null) {
    return null;
  }

  return $SubscriptionPlanCopyWith<$Res>(_self.subscriptionPlan!, (value) {
    return _then(_self.copyWith(subscriptionPlan: value));
  });
}
}

// dart format on
