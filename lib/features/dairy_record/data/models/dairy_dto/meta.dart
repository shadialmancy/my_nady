import 'package:freezed_annotation/freezed_annotation.dart';

part 'meta.freezed.dart';
part 'meta.g.dart';

@freezed
class DairyMeta with _$DairyMeta {
  factory DairyMeta({DateTime? timestamp}) = _DairyMeta;

  factory DairyMeta.fromJson(Map<String, dynamic> json) =>
      _$DairyMetaFromJson(json);

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}
