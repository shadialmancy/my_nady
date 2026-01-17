// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contact.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Contact _$ContactFromJson(Map<String, dynamic> json) => _Contact(
  socialLinks: (json['socialLinks'] as List<dynamic>?)
      ?.map((e) => SocialLink.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$ContactToJson(_Contact instance) => <String, dynamic>{
  'socialLinks': instance.socialLinks,
};
