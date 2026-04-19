// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Review _$ReviewFromJson(Map<String, dynamic> json) => _Review(
  id: json['id'] as String?,
  rating: json['rating'] as num?,
  comment: json['comment'] as String?,
  user: json['user'] == null
      ? null
      : User.fromJson(json['user'] as Map<String, dynamic>),
  branch: json['branch'] == null
      ? null
      : Branch.fromJson(json['branch'] as Map<String, dynamic>),
  replies: (json['replies'] as List<dynamic>?)
      ?.map((e) => Reply.fromJson(e as Map<String, dynamic>))
      .toList(),
  createdAt: json['createdAt'] == null
      ? null
      : DateTime.parse(json['createdAt'] as String),
  updatedAt: json['updatedAt'] == null
      ? null
      : DateTime.parse(json['updatedAt'] as String),
  canEdit: json['canEdit'] as bool?,
);

Map<String, dynamic> _$ReviewToJson(_Review instance) => <String, dynamic>{
  'id': instance.id,
  'rating': instance.rating,
  'comment': instance.comment,
  'user': instance.user,
  'branch': instance.branch,
  'replies': instance.replies,
  'createdAt': instance.createdAt?.toIso8601String(),
  'updatedAt': instance.updatedAt?.toIso8601String(),
  'canEdit': instance.canEdit,
};
