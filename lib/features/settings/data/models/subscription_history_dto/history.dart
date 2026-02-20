import 'package:freezed_annotation/freezed_annotation.dart';

part 'history.freezed.dart';
part 'history.g.dart';

@freezed
class History with _$History {
  factory History({
    String? id,
    DateTime? changeDate,
    String? changeType,
    String? previousStatus,
    String? newStatus,
    String? notes,
  }) = _History;

  factory History.fromJson(Map<String, dynamic> json) =>
      _$HistoryFromJson(json);

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}
