import 'package:freezed_annotation/freezed_annotation.dart';

import 'location.dart';

part 'branch.freezed.dart';
part 'branch.g.dart';

@freezed
class Branch with _$Branch {
  factory Branch({String? name, Location? location, List<String>? photos}) =
      _Branch;

  factory Branch.fromJson(Map<String, dynamic> json) => _$BranchFromJson(json);

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}
