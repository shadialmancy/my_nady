// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meta.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Meta _$MetaFromJson(Map<String, dynamic> json) => _Meta(
  currentPage: (json['currentPage'] as num?)?.toInt(),
  perPage: (json['perPage'] as num?)?.toInt(),
  total: (json['total'] as num?)?.toInt(),
  lastPage: (json['lastPage'] as num?)?.toInt(),
);

Map<String, dynamic> _$MetaToJson(_Meta instance) => <String, dynamic>{
  'currentPage': instance.currentPage,
  'perPage': instance.perPage,
  'total': instance.total,
  'lastPage': instance.lastPage,
};
