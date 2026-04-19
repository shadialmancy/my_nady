import 'package:freezed_annotation/freezed_annotation.dart';
import 'meta.dart';
import 'review.dart';

part 'review_dto.freezed.dart';
part 'review_dto.g.dart';

@freezed
class ReviewDto with _$ReviewDto {
  factory ReviewDto({List<Review>? data, Meta? meta}) = _ReviewDto;

  factory ReviewDto.fromJson(Map<String, dynamic> json) =>
      _$ReviewDtoFromJson(json);

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}
