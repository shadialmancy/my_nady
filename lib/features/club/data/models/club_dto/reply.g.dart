// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reply.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Reply _$ReplyFromJson(Map<String, dynamic> json) => _Reply(
  id: json['id'] as String?,
  comment: json['comment'] as String?,
  isStaffReply: json['isStaffReply'] as bool?,
  user: json['user'] == null
      ? null
      : User.fromJson(json['user'] as Map<String, dynamic>),
  createdAt: json['createdAt'] == null
      ? null
      : DateTime.parse(json['createdAt'] as String),
);

Map<String, dynamic> _$ReplyToJson(_Reply instance) => <String, dynamic>{
  'id': instance.id,
  'comment': instance.comment,
  'isStaffReply': instance.isStaffReply,
  'user': instance.user,
  'createdAt': instance.createdAt?.toIso8601String(),
};
