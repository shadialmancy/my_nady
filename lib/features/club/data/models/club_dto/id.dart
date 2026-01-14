import 'package:freezed_annotation/freezed_annotation.dart';

part 'id.freezed.dart';
part 'id.g.dart';

@freezed
class Id with _$Id {
  factory Id({@JsonKey(name: '\$oid') String? oid}) = _Id;

  factory Id.fromJson(Map<String, dynamic> json) => _$IdFromJson(json);
  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}
