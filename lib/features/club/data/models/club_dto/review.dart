import 'package:freezed_annotation/freezed_annotation.dart';

import 'branch.dart';
import 'reply.dart';
import 'user.dart';

part 'review.freezed.dart';
part 'review.g.dart';

@freezed
class Review with _$Review {
  factory Review({
    String? id,
    num? rating,
    String? comment,
    User? user,
    Branch? branch,
    List<Reply>? replies,
    DateTime? createdAt,
    DateTime? updatedAt,
    bool? canEdit,
  }) = _Review;

  factory Review.fromJson(Map<String, dynamic> json) => _$ReviewFromJson(json);

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}
