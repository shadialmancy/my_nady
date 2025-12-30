import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

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
    return value.when(
      data: builder,
      error:
          errorWidget ??
          (e, st) {
            return Center(
              child: Text(e.toString(), style: TextStyle(color: Colors.white)),
            );
          },
      loading:
          loading ?? () => const Center(child: CircularProgressIndicator()),
    );
  }
}
