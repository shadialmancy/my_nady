import 'package:freezed_annotation/freezed_annotation.dart';

part 'social_link.freezed.dart';
part 'social_link.g.dart';

@freezed
class SocialLink with _$SocialLink {
  factory SocialLink({String? platform, String? url}) = _SocialLink;

  factory SocialLink.fromJson(Map<String, dynamic> json) =>
      _$SocialLinkFromJson(json);

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}
