import 'package:freezed_annotation/freezed_annotation.dart';

import 'created_at.dart';
import 'id.dart';
import 'secondary_branch_id.dart';
import 'updated_at.dart';

part 'branch_type.freezed.dart';
part 'branch_type.g.dart';

@freezed
class BranchType with _$BranchType {
  factory BranchType({
    @JsonKey(name: '_id') Id? id,
    String? name,
    String? icon,
    CreatedAt? createdAt,
    UpdatedAt? updatedAt,
    List<SecondaryBranchId>? secondaryBranchIds,
  }) = _BranchType;

  factory BranchType.fromJson(Map<String, dynamic> json) =>
      _$BranchTypeFromJson(json);
       @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}
