import 'package:freezed_annotation/freezed_annotation.dart';

part 'end_date.freezed.dart';
part 'end_date.g.dart';

@freezed
class EndDate with _$EndDate {
  factory EndDate({@JsonKey(name: '\$date') DateTime? date}) = _EndDate;

  factory EndDate.fromJson(Map<String, dynamic> json) =>
      _$EndDateFromJson(json);
  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}
