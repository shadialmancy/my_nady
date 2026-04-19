import 'package:freezed_annotation/freezed_annotation.dart';

import 'schedule.dart';

part 'class.freezed.dart';
part 'class.g.dart';

@freezed
class Class with _$Class {
  factory Class({
    String? id,
    String? name,
    String? description,
    List<Schedule>? schedule,
  }) = _Class;

  factory Class.fromJson(Map<String, dynamic> json) => _$ClassFromJson(json);

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}
