import 'package:freezed_annotation/freezed_annotation.dart';

import 'amenity_id.dart';
import 'branch_type.dart';
import 'location.dart';
import 'offer.dart';
import 'secondary_type_id.dart';

part 'datum.freezed.dart';
part 'datum.g.dart';

@freezed
class Datum with _$Datum {
  factory Datum({
    String? name,
    String? providerId,
    List<String>? photos,
    String? logo,
    String? description,
    String? genderType,
    bool? isFeatured,
    bool? active,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? branchTypeId,
    List<SecondaryTypeId>? secondaryTypeIds,
    List<AmenityId>? amenityIds,
    Location? location,
    num? distance,
    num? minPlanPrice,
    BranchType? branchType,
    List<Offer>? offers,
    String? id,
  }) = _Datum;

  factory Datum.fromJson(Map<String, dynamic> json) => _$DatumFromJson(json);
  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}
