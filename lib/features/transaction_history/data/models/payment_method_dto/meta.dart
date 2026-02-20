import 'package:freezed_annotation/freezed_annotation.dart';

part 'meta.freezed.dart';
part 'meta.g.dart';

@freezed
class Meta with _$Meta {
  factory Meta({
    int? currentPage,
    int? perPage,
    int? total,
    int? lastPage,
  }) = _Meta;

  factory Meta.fromJson(Map<String, dynamic> json) => _$MetaFromJson(json);

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}
