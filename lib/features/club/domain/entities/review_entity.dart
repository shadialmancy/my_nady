import 'package:freezed_annotation/freezed_annotation.dart';
import '../../data/models/club_dto/meta.dart';
import '../../data/models/club_dto/review.dart';

part 'review_entity.freezed.dart';
part 'review_entity.g.dart';

@freezed
class ReviewEntity with _$ReviewEntity {
  factory ReviewEntity({List<Review>? data, Meta? meta}) = _ReviewEntity;

  factory ReviewEntity.fromJson(Map<String, dynamic> json) =>
      _$ReviewEntityFromJson(json);

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}
