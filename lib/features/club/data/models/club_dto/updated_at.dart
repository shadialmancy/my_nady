import 'package:freezed_annotation/freezed_annotation.dart';

part 'updated_at.freezed.dart';
part 'updated_at.g.dart';

@freezed
class UpdatedAt with _$UpdatedAt {
  factory UpdatedAt({@JsonKey(name: '\$date') DateTime? date}) = _UpdatedAt;

  factory UpdatedAt.fromJson(Map<String, dynamic> json) =>
      _$UpdatedAtFromJson(json);
  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}
