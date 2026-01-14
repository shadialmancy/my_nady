import 'package:freezed_annotation/freezed_annotation.dart';

part 'club_filter_request.freezed.dart';
part 'club_filter_request.g.dart';

@freezed
class ClubFilterRequest with _$ClubFilterRequest {
  factory ClubFilterRequest({
    String? search,
    num? lat,
    num? lng,
    num? radius,
    String? gender,
    String? typeId,
    List<String>? amenityIds,
    String? area,
    num? minPrice,
    num? maxPrice,
    String? sortBy,
    num? page,
    num? limit,
    bool? hasOffers,
  }) = _ClubFilterRequest;

  factory ClubFilterRequest.fromJson(Map<String, dynamic> json) =>
      _$ClubFilterRequestFromJson(json);

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}
