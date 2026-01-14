import 'package:freezed_annotation/freezed_annotation.dart';

part 'secondary_branch_id.freezed.dart';
part 'secondary_branch_id.g.dart';

@freezed
class SecondaryBranchId with _$SecondaryBranchId {
  factory SecondaryBranchId({@JsonKey(name: '\$oid') String? oid}) =
      _SecondaryBranchId;

  factory SecondaryBranchId.fromJson(Map<String, dynamic> json) =>
      _$SecondaryBranchIdFromJson(json);
  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}
