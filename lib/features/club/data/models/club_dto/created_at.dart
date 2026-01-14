import 'package:freezed_annotation/freezed_annotation.dart';

part 'created_at.freezed.dart';
part 'created_at.g.dart';

@freezed
class CreatedAt with _$CreatedAt {
  factory CreatedAt({@JsonKey(name: '\$date') DateTime? date}) = _CreatedAt;

  factory CreatedAt.fromJson(Map<String, dynamic> json) =>
      _$CreatedAtFromJson(json);
  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}
