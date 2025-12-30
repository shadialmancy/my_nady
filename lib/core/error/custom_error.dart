import 'dart:math';
import '../constants/app_constants.dart';

class CustomError implements Exception {
  final String errMassage;
  final Object? err;
  StackTrace? stackTrace;

  CustomError(this.errMassage, {this.err, this.stackTrace}) {
    final String message = errMassage.toString().substring(
      0,
      min(40, errMassage.toString().length),
    );

    stackTrace ??= StackTrace.current; // suspect

    logger.e(message, error: err, stackTrace: stackTrace, time: DateTime.now());
  }

  @override
  String toString() {
    return '$err\n$stackTrace';
  }
}
