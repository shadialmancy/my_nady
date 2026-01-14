import 'package:freezed_annotation/freezed_annotation.dart';

import 'datum.dart';
import 'meta.dart';

part 'data.freezed.dart';
part 'data.g.dart';

@freezed
class Data with _$Data {
  factory Data({List<Datum>? data, Meta? meta}) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}
