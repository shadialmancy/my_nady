import 'package:freezed_annotation/freezed_annotation.dart';

import 'amenity.dart';
import 'contact.dart';
import 'location.dart';
import 'offer.dart';
import 'other_branch.dart';
import 'provider.dart';
import 'rating.dart';
import '../club_dto/subscription_plan.dart';

part 'data.freezed.dart';
part 'data.g.dart';

@freezed
class Data with _$Data {
  factory Data({
    String? id,
    String? name,
    String? description,
    List<String>? photos,
    String? logo,
    Location? location,
    String? genderType,
    Provider? provider,
    List<Amenity>? amenities,
    Contact? contact,
    List<SubscriptionPlan>? subscriptionPlans,
    List<dynamic>? classes,
    List<Offer>? offers,
    Rating? rating,
    String? whatsappLink,
    List<OtherBranch>? otherBranches,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}
