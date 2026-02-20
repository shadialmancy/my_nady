import 'package:freezed_annotation/freezed_annotation.dart';

part 'branch_meta_item.freezed.dart';
part 'branch_meta_item.g.dart';

@freezed
class BranchMetaItem with _$BranchMetaItem {
  const factory BranchMetaItem({String? id, String? name, String? icon}) =
      _BranchMetaItem;

  factory BranchMetaItem.fromJson(Map<String, dynamic> json) =>
      _$BranchMetaItemFromJson(json);

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}
