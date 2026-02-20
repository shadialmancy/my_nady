import 'package:freezed_annotation/freezed_annotation.dart';

import 'amenity.dart';
import 'branch_type.dart';
import 'location.dart';
import 'offer.dart';
import 'provider.dart';

part 'datum.freezed.dart';
part 'datum.g.dart';

@freezed
class Datum with _$Datum {
  factory Datum({
    String? id,
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
    dynamic deletedAt,
    String? branchTypeId,
    List<String>? secondaryTypeIds,
    List<String>? amenityIds,
    Location? location,
    num? distance,
    num? minPlanPrice,
    num? maxPlanPrice,
    BranchType? branchType,
    Provider? provider,
    List<Amenity>? amenities,
    num? rating,
    num? reviewCount,
    List<Offer>? offers,
    bool? isFavorite,
  }) = _Datum;

  factory Datum.fromJson(Map<String, dynamic> json) => _$DatumFromJson(json);

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}
