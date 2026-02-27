import 'package:freezed_annotation/freezed_annotation.dart';

part 'review_dto.freezed.dart';
part 'review_dto.g.dart';

@freezed
class ReviewDto with _$ReviewDto {
  factory ReviewDto({List<ReviewData>? data, ReviewMeta? meta}) = _ReviewDto;

  factory ReviewDto.fromJson(Map<String, dynamic> json) =>
      _$ReviewDtoFromJson(json);

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}

@freezed
class ReviewData with _$ReviewData {
  factory ReviewData({
    String? id,
    int? rating,
    String? comment,
    ReviewUser? user,
    ReviewBranch? branch,
    List<ReviewReply>? replies,
    String? createdAt,
    String? updatedAt,
    bool? canEdit,
  }) = _ReviewData;

  factory ReviewData.fromJson(Map<String, dynamic> json) =>
      _$ReviewDataFromJson(json);

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}

@freezed
class ReviewUser with _$ReviewUser {
  factory ReviewUser({String? id, String? name, String? image}) = _ReviewUser;

  factory ReviewUser.fromJson(Map<String, dynamic> json) =>
      _$ReviewUserFromJson(json);

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}

@freezed
class ReviewBranch with _$ReviewBranch {
  factory ReviewBranch({String? id, String? name}) = _ReviewBranch;

  factory ReviewBranch.fromJson(Map<String, dynamic> json) =>
      _$ReviewBranchFromJson(json);

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}

@freezed
class ReviewReply with _$ReviewReply {
  factory ReviewReply({
    String? id,
    String? comment,
    bool? isStaffReply,
    ReviewUser? user,
    String? createdAt,
  }) = _ReviewReply;

  factory ReviewReply.fromJson(Map<String, dynamic> json) =>
      _$ReviewReplyFromJson(json);

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}

@freezed
class ReviewMeta with _$ReviewMeta {
  factory ReviewMeta({int? total, int? page, int? limit, int? totalPages}) =
      _ReviewMeta;

  factory ReviewMeta.fromJson(Map<String, dynamic> json) =>
      _$ReviewMetaFromJson(json);

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}
