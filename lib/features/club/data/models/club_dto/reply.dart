import 'package:freezed_annotation/freezed_annotation.dart';

import 'user.dart';

part 'reply.freezed.dart';
part 'reply.g.dart';

@freezed
class Reply with _$Reply {
  factory Reply({
    String? id,
    String? comment,
    bool? isStaffReply,
    User? user,
    DateTime? createdAt,
  }) = _Reply;

  factory Reply.fromJson(Map<String, dynamic> json) => _$ReplyFromJson(json);

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}
