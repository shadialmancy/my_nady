import 'package:freezed_annotation/freezed_annotation.dart';

part 'branch.freezed.dart';
part 'branch.g.dart';

@freezed
class Branch with _$Branch {
  factory Branch({String? id, String? name}) = _Branch;

  factory Branch.fromJson(Map<String, dynamic> json) => _$BranchFromJson(json);

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}
