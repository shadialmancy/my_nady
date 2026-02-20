import 'package:freezed_annotation/freezed_annotation.dart';

part 'branch_type.freezed.dart';
part 'branch_type.g.dart';

@freezed
class BranchType with _$BranchType {
  factory BranchType({String? id, String? name, String? icon}) = _BranchType;

  factory BranchType.fromJson(Map<String, dynamic> json) =>
      _$BranchTypeFromJson(json);

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}
