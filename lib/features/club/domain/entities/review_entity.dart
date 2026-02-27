import 'package:freezed_annotation/freezed_annotation.dart';
import '../../data/models/review_dto/review_dto.dart';

part 'review_entity.freezed.dart';
part 'review_entity.g.dart';

@freezed
class ReviewEntity with _$ReviewEntity {
  factory ReviewEntity({List<ReviewData>? data, ReviewMeta? meta}) =
      _ReviewEntity;

  factory ReviewEntity.fromJson(Map<String, dynamic> json) =>
      _$ReviewEntityFromJson(json);

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}
