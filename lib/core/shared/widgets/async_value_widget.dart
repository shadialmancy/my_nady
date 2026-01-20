import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_nady_project/core/constants/app_sizes.dart';

class AsyncValueWidget<T> extends StatelessWidget {
  const AsyncValueWidget({
    super.key,
    required this.value,
    required this.builder,
    this.loading,
    this.errorWidget,
  });
  final AsyncValue<T> value;
  final Widget Function(T) builder;
  final Widget Function()? loading;
  final Widget Function(Object, StackTrace)? errorWidget;

  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);
    return value.when(
      data: builder,
      error:
          errorWidget ??
          (e, st) {
            log('AsyncValueWidget Error: $e', stackTrace: st);
            return Center(
              child: Text(e.toString(), style: TextStyle(color: Colors.red)),
            );
          },
      loading:
          loading ??
          () => Center(child: CircularProgressIndicator(color: theme.primary)),
    );
  }
}
