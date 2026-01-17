import 'package:freezed_annotation/freezed_annotation.dart';

part 'provider.freezed.dart';
part 'provider.g.dart';

@freezed
class Provider with _$Provider {
  factory Provider({
    String? id,
    String? name,
    String? description,
    String? logo,
  }) = _Provider;

  factory Provider.fromJson(Map<String, dynamic> json) =>
      _$ProviderFromJson(json);

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}
