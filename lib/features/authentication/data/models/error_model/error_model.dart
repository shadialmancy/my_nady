// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

class ErrorModel {
  @JsonKey(name: 'status_code')
  int? statusCode;
  @JsonKey(name: 'message')
  String? message;
  @JsonKey(name: 'error')
  String? error;
  @JsonKey(name: 'timestamp')
  String? timestamp;
  @JsonKey(name: 'path')
  String? path;
  @JsonKey(name: 'trace_id')
  String? traceId;

  ErrorModel({
    this.statusCode,
    this.message,
    this.error,
    this.timestamp,
    this.path,
    this.traceId,
  });

  factory ErrorModel.fromJson(Map<String, dynamic> json) => ErrorModel(
    statusCode: json['status_code'] as int?,
    message: json['message'] as String?,
    error: json['error'] as String?,
    timestamp: json['timestamp'] as String?,
    path: json['path'] as String?,
    traceId: json['trace_id'] as String?,
  );
}
