import 'package:freezed_annotation/freezed_annotation.dart';

import 'coordinates.dart';

part 'location.freezed.dart';
part 'location.g.dart';

@freezed
class Location with _$Location {
  factory Location({
    String? address,
    String? city,
    String? country,
    String? area,
    Coordinates? coordinates,
  }) = _Location;

  factory Location.fromJson(Map<String, dynamic> json) =>
      _$LocationFromJson(json);

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}
