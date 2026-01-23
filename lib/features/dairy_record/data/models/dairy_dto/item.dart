import 'package:freezed_annotation/freezed_annotation.dart';

part 'item.freezed.dart';
part 'item.g.dart';

@freezed
class DairyItem with _$DairyItem {
  factory DairyItem({
    String? id,
    String? title,
    String? description,
    bool? isCompleted,
    num? order,
  }) = _DairyItem;

  factory DairyItem.fromJson(Map<String, dynamic> json) =>
      _$DairyItemFromJson(json);

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}
