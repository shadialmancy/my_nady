import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:auto_route/auto_route.dart';
import 'package:my_nady_project/core/constants/app_sizes.dart';
import 'package:my_nady_project/core/shared/widgets/widgets.dart';
import 'package:my_nady_project/features/authentication/presentation/provider/auth_ui_service.dart';
// import 'package:responsive_builder/responsive_builder.dart';
import '../../../../core/router/app_router.dart';

class VerifyEmailUi extends ConsumerStatefulWidget {
  final String token;
  const VerifyEmailUi({super.key, required this.token});

  @override
  ConsumerState<VerifyEmailUi> createState() => _VerifyEmailUiState();
}

class _VerifyEmailUiState extends ConsumerState<VerifyEmailUi> {
  late Future<void> _verifyFuture;
  int _start = 60;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _verifyFuture = ref
        .read(authUiServiceProvider.notifier)
        .verifyEmail(token: widget.token);
  }

  void startTimer() {
    _start = 60;
    _timer?.cancel();
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (_start == 0) {
        setState(() {
          timer.cancel();
        });
      } else {
        setState(() {
          _start--;
        });
      }
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // final (theme, l10n) = appSettingsRecord(context);

    return FutureBuilder(
      future: _verifyFuture,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        }

        if (snapshot.hasError) {
          return _buildErrorState(snapshot.error.toString());
        }

        return _buildSuccessState();
      },
    );
  }

  Widget _buildSuccessState() {
    final (theme, l10n) = appSettingsRecord(context);

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(Icons.check_circle_outline, color: Colors.green, size: 100),
        gapH24,
        Text(
          'Verification Successful!',
          style: theme.titleLarge.copyWith(fontWeight: FontWeight.bold),
        ),
        gapH12,
        Text(
          'Your email has been verified. You can now proceed to login.',
          textAlign: TextAlign.center,
          style: theme.bodyMedium,
        ),
        gapH32,
        CustomButton(
          title: 'Go to Login',
          onPressed: () => context.router.replaceAll([const LoginRoute()]),
        ),
      ],
    );
  }

  Widget _buildErrorState(String error) {
    final (theme, l10n) = appSettingsRecord(context);

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(Icons.error_outline, color: Colors.red, size: 100),
        gapH24,
        Text(
          'Verification Failed',
          style: theme.titleLarge.copyWith(fontWeight: FontWeight.bold),
        ),
        gapH12,
        Text(
          error,
          textAlign: TextAlign.center,
          style: theme.bodyMedium.copyWith(color: Colors.red),
        ),
        gapH32,
        Text(
          "If the link expired, you can request a new one:",
          style: theme.bodySmall,
        ),
        gapH12,
        TextButton(
          onPressed: _start == 0
              ? () {
                  ref.read(authUiServiceProvider.notifier).resendVerification();
                  startTimer();
                }
              : null,
          child: Text(
            _start == 0
                ? "Resend Verification Email"
                : "Resend in $_start seconds",
            style: theme.labelLarge.copyWith(
              color: _start == 0 ? theme.primary : theme.grey90,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        gapH24,
        CustomButton(
          title: 'Back to Login',
          onPressed: () => context.router.replaceAll([const LoginRoute()]),
        ),
      ],
    );
  }
}
