import 'package:freezed_annotation/freezed_annotation.dart';

import 'amenity.dart';
import 'branch_type.dart';
import 'location.dart';
import 'provider.dart';

part 'datum.freezed.dart';
part 'datum.g.dart';

@freezed
class Datum with _$Datum {
  factory Datum({
    String? id,
    String? name,
    String? description,
    List<String>? photos,
    String? logo,
    Location? location,
    String? genderType,
    bool? active,
    bool? isFeatured,
    String? providerId,
    Provider? provider,
    BranchType? branchType,
    List<Amenity>? amenities,
    List<dynamic>? offers,
    bool? hasOffers,
    num? reviewCount,
    bool? isFavorite,
  }) = _Datum;

  factory Datum.fromJson(Map<String, dynamic> json) => _$DatumFromJson(json);

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}
