import 'package:freezed_annotation/freezed_annotation.dart';

import 'history.dart';

part 'datum.freezed.dart';
part 'datum.g.dart';

@freezed
class Datum with _$Datum {
  factory Datum({
    String? subscriptionId,
    String? branchName,
    String? planName,
    String? currentStatus,
    List<History>? history,
  }) = _Datum;

  factory Datum.fromJson(Map<String, dynamic> json) => _$DatumFromJson(json);

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}
