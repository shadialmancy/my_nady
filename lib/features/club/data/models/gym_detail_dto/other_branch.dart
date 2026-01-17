import 'package:freezed_annotation/freezed_annotation.dart';

import 'location.dart';

part 'other_branch.freezed.dart';
part 'other_branch.g.dart';

@freezed
class OtherBranch with _$OtherBranch {
  factory OtherBranch({String? id, String? name, Location? location}) =
      _OtherBranch;

  factory OtherBranch.fromJson(Map<String, dynamic> json) =>
      _$OtherBranchFromJson(json);

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}
