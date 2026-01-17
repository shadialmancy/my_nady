import 'package:freezed_annotation/freezed_annotation.dart';

part 'amenity.freezed.dart';
part 'amenity.g.dart';

@freezed
class Amenity with _$Amenity {
  factory Amenity({String? id, String? name, String? icon}) = _Amenity;

  factory Amenity.fromJson(Map<String, dynamic> json) =>
      _$AmenityFromJson(json);

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}
