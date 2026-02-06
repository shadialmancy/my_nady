import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_nady_project/core/constants/app_sizes.dart';
import 'package:my_nady_project/core/helpers/assets_helper.dart';
import 'package:my_nady_project/core/shared/widgets/widgets.dart';
import 'package:my_nady_project/features/authentication/presentation/provider/auth_ui_service.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ChangePasswordUi extends ConsumerStatefulWidget {
  const ChangePasswordUi({super.key});

  @override
  ConsumerState<ChangePasswordUi> createState() => _ChangePasswordUiState();
}

class _ChangePasswordUiState extends ConsumerState<ChangePasswordUi> {
  final _currentPasswordController = TextEditingController();
  final _newPasswordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    _currentPasswordController.dispose();
    _newPasswordController.dispose();
    _confirmPasswordController.dispose();
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
                AssetsHelper.changePasswordBanner,
                width: 300,
                fit: BoxFit.contain,
              ),
              gapH32,
              Text(
                l10n.changePassword,
                style: theme.headlineLarge.copyWith(
                  color: theme.primary,
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),
              gapH8,
              Text(
                l10n.yourNewPasswordMustUniqueFromThosePreviouslyUsed,
                textAlign: .center,
                style: theme.bodyMedium.copyWith(
                  color: theme.grey87,
                  fontSize: 12,
                  fontWeight: FontWeight.normal,
                ),
              ),
              gapH20,
              CustomTextField(
                label: "Current Password",
                hint: "******",
                keyboardType: TextInputType.visiblePassword,
                isPasswordField: true,
                controller: _currentPasswordController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return l10n.fieldRequired;
                  }
                  return null;
                },
              ),
              gapH20,
              CustomTextField(
                label: "New ${l10n.password}",
                hint: "******",
                keyboardType: TextInputType.visiblePassword,
                isPasswordField: true,
                controller: _newPasswordController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return l10n.fieldRequired;
                  }
                  if (value.length < 6) {
                    return "Password must be at least 6 characters";
                  }
                  return null;
                },
              ),
              gapH20,
              CustomTextField(
                label: l10n.confirmPassword,
                hint: "******",
                keyboardType: TextInputType.visiblePassword,
                isPasswordField: true,
                controller: _confirmPasswordController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return l10n.fieldRequired;
                  }
                  if (value != _newPasswordController.text) {
                    return "Passwords do not match";
                  }
                  return null;
                },
              ),
              gapH20,
              AsyncValueWidget(
                value: authState,
                builder: (user) => CustomButton(
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
                          .changePassword(
                            currentPassword: _currentPasswordController.text,
                            newPassword: _newPasswordController.text,
                          );
                      if (context.mounted) {
                        context.router.maybePop();
                      }
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
