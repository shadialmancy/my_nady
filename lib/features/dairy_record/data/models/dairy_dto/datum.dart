import 'package:freezed_annotation/freezed_annotation.dart';

import 'item.dart';

part 'datum.freezed.dart';
part 'datum.g.dart';

@freezed
class DairyDatum with _$DairyDatum {
  factory DairyDatum({
    String? id,
    String? title,
    String? content,
    DateTime? date,
    List<String>? images,
    List<DairyItem>? items,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _DairyDatum;

  factory DairyDatum.fromJson(Map<String, dynamic> json) =>
      _$DairyDatumFromJson(json);

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}
