// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ReviewDto _$ReviewDtoFromJson(Map<String, dynamic> json) => _ReviewDto(
  data: (json['data'] as List<dynamic>?)
      ?.map((e) => ReviewData.fromJson(e as Map<String, dynamic>))
      .toList(),
  meta: json['meta'] == null
      ? null
      : ReviewMeta.fromJson(json['meta'] as Map<String, dynamic>),
);

Map<String, dynamic> _$ReviewDtoToJson(_ReviewDto instance) =>
    <String, dynamic>{'data': instance.data, 'meta': instance.meta};

_ReviewData _$ReviewDataFromJson(Map<String, dynamic> json) => _ReviewData(
  id: json['id'] as String?,
  rating: (json['rating'] as num?)?.toInt(),
  comment: json['comment'] as String?,
  user: json['user'] == null
      ? null
      : ReviewUser.fromJson(json['user'] as Map<String, dynamic>),
  branch: json['branch'] == null
      ? null
      : ReviewBranch.fromJson(json['branch'] as Map<String, dynamic>),
  replies: (json['replies'] as List<dynamic>?)
      ?.map((e) => ReviewReply.fromJson(e as Map<String, dynamic>))
      .toList(),
  createdAt: json['createdAt'] as String?,
  updatedAt: json['updatedAt'] as String?,
  canEdit: json['canEdit'] as bool?,
);

Map<String, dynamic> _$ReviewDataToJson(_ReviewData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'rating': instance.rating,
      'comment': instance.comment,
      'user': instance.user,
      'branch': instance.branch,
      'replies': instance.replies,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'canEdit': instance.canEdit,
    };

_ReviewUser _$ReviewUserFromJson(Map<String, dynamic> json) => _ReviewUser(
  id: json['id'] as String?,
  name: json['name'] as String?,
  image: json['image'] as String?,
);

Map<String, dynamic> _$ReviewUserToJson(_ReviewUser instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image': instance.image,
    };

_ReviewBranch _$ReviewBranchFromJson(Map<String, dynamic> json) =>
    _ReviewBranch(id: json['id'] as String?, name: json['name'] as String?);

Map<String, dynamic> _$ReviewBranchToJson(_ReviewBranch instance) =>
    <String, dynamic>{'id': instance.id, 'name': instance.name};

_ReviewReply _$ReviewReplyFromJson(Map<String, dynamic> json) => _ReviewReply(
  id: json['id'] as String?,
  comment: json['comment'] as String?,
  isStaffReply: json['isStaffReply'] as bool?,
  user: json['user'] == null
      ? null
      : ReviewUser.fromJson(json['user'] as Map<String, dynamic>),
  createdAt: json['createdAt'] as String?,
);

Map<String, dynamic> _$ReviewReplyToJson(_ReviewReply instance) =>
    <String, dynamic>{
      'id': instance.id,
      'comment': instance.comment,
      'isStaffReply': instance.isStaffReply,
      'user': instance.user,
      'createdAt': instance.createdAt,
    };

_ReviewMeta _$ReviewMetaFromJson(Map<String, dynamic> json) => _ReviewMeta(
  total: (json['total'] as num?)?.toInt(),
  page: (json['page'] as num?)?.toInt(),
  limit: (json['limit'] as num?)?.toInt(),
  totalPages: (json['totalPages'] as num?)?.toInt(),
);

Map<String, dynamic> _$ReviewMetaToJson(_ReviewMeta instance) =>
    <String, dynamic>{
      'total': instance.total,
      'page': instance.page,
      'limit': instance.limit,
      'totalPages': instance.totalPages,
    };
