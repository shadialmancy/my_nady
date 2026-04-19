import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:my_nady_project/core/constants/app_sizes.dart';
import 'package:my_nady_project/core/helpers/assets_helper.dart';
import 'package:my_nady_project/core/shared/widgets/widgets.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_nady_project/features/authentication/presentation/provider/auth_ui_service.dart';

import '../../../../core/router/app_router.dart';

class ForgetPasswordUi extends ConsumerStatefulWidget {
  const ForgetPasswordUi({super.key});

  @override
  ConsumerState<ForgetPasswordUi> createState() => _ForgetPasswordUiState();
}

class _ForgetPasswordUiState extends ConsumerState<ForgetPasswordUi> {
  final emailController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);
    final authState = ref.watch(authUiServiceProvider);

    return Center(
      child: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 3.sw),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Image.asset(
                AssetsHelper.forgotPasswordBanner,
                width: 300,
                fit: BoxFit.contain,
              ),
              gapH32,
              Text(
                "${l10n.forgotPassword}?",
                style: theme.headlineLarge.copyWith(
                  color: theme.primary,
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),
              gapH8,
              Text(
                l10n.dontWorryItOccursPleaseEnterEmailAddressLinkedWithYourAccount,
                textAlign: .center,
                style: theme.bodyMedium.copyWith(
                  color: theme.grey87,
                  fontSize: 12,
                  fontWeight: FontWeight.normal,
                ),
              ),
              gapH20,
              CustomTextField(
                label: l10n.email,
                hint: l10n.enterYourEmail,
                controller: emailController,
                keyboardType: TextInputType.emailAddress,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return l10n.fieldRequired;
                  }
                  return null;
                },
              ),
              gapH20,
              AsyncValueWidget(
                value: authState,
                builder: (data) => CustomButton(
                  width: double.infinity,
                  title: l10n.send,
                  titleStyle: theme.bodyMedium.copyWith(
                    color: theme.whiteColor,
                  ),
                  backgroundColor: theme.primary,
                  onPressed: () async {
                    if (_formKey.currentState!.validate()) {
                      await ref
                          .read(authUiServiceProvider.notifier)
                          .forgotPassword(emailController.text);
                      context.mounted
                          ? context.router.push(VerificationCodeRoute())
                          : null;
                    }
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
