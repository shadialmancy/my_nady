import 'package:freezed_annotation/freezed_annotation.dart';

import 'id.dart';

part 'branch_type.freezed.dart';
part 'branch_type.g.dart';

@freezed
class BranchType with _$BranchType {
  factory BranchType({
    @JsonKey(name: '_id') Id? id,
    String? name,
    String? icon,
    String? createdAt,
    String? updatedAt,
    // List<String>? secondaryBranchIds,
  }) = _BranchType;

  factory BranchType.fromJson(Map<String, dynamic> json) =>
      _$BranchTypeFromJson(json);
  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}
