import 'package:auto_route/auto_route.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_nady_project/core/shared/widgets/widgets.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:intl/intl.dart';

import '../../../../core/constants/app_sizes.dart';
import '../../../../core/helpers/assets_helper.dart';
import '../../../../core/helpers/session_manager.dart';
import '../../../../core/router/app_router.dart';
import '../provider/auth_ui_service.dart';
import '../widgets/widgets.dart';
// import '../widgets/gender_dropdown.dart';

class RegisterUi extends ConsumerStatefulWidget {
  const RegisterUi({super.key});

  @override
  ConsumerState<RegisterUi> createState() => _RegisterUiState();
}

class _RegisterUiState extends ConsumerState<RegisterUi> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();
  final _formKey = GlobalKey<FormState>();

  String? gender;
  DateTime? birthDate;

  Future<void> showBirthdayDialog(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
    );
    if (picked != null && picked != birthDate) {
      setState(() {
        birthDate = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);
    final authRef = ref.watch(authUiServiceProvider.notifier);

    return SafeArea(
      child: Center(
        child: SingleChildScrollView(
          padding: .only(left: 3.sw, right: 3.sw),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: .center,
              crossAxisAlignment: .center,
              children: [
                Text(
                  l10n.signUp,
                  style: theme.titleLarge.copyWith(
                    color: theme.primary,
                    fontSize: 30,
                    fontWeight: .bold,
                  ),
                ),
                gapH8,
                Text(
                  l10n.createNewAccount,
                  style: theme.labelMedium.copyWith(
                    color: theme.primaryText.withValues(alpha: 0.7),
                    fontWeight: .normal,
                  ),
                ),
                gapH16,
                CustomTextField(
                  label: l10n.name,
                  hint: l10n.enterYourName,
                  controller: nameController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return l10n.fieldRequired;
                    }
                    return null;
                  },
                ),
                gapH24,
                CustomTextField(
                  label: l10n.email,
                  hint: l10n.enterYourEmail,
                  controller: emailController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return l10n.fieldRequired;
                    }
                    final emailRegex = RegExp(
                      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+",
                    );
                    if (!emailRegex.hasMatch(value)) {
                      return l10n.validEmail;
                    }
                    return null;
                  },
                ),
                gapH24,
                GenderDropdown(
                  onChanged: (value) {
                    setState(() {
                      gender = value;
                    });
                  },
                  validator: (value) {
                    if (value == null || value.toString().isEmpty) {
                      return l10n.fieldRequired;
                    }
                    return null;
                  },
                ),
                gapH24,
                GestureDetector(
                  onTap: () => showBirthdayDialog(context),
                  child: AbsorbPointer(
                    child: CustomTextField(
                      label: l10n.enterDateofBirth,
                      hint: birthDate == null
                          ? l10n.enterDateofBirth
                          : DateFormat('yyyy-MM-dd').format(birthDate!),
                      controller: TextEditingController(
                        text: birthDate == null
                            ? ''
                            : DateFormat('yyyy-MM-dd').format(birthDate!),
                      ),
                      validator: (value) {
                        if (birthDate == null) {
                          return l10n.fieldRequired;
                        }
                        return null;
                      },
                      readOnly: true,
                      suffix: Icon(
                        Icons.calendar_month,
                        color: theme.primary.withValues(alpha: 0.6),
                      ),
                    ),
                  ),
                ),
                gapH24,
                CustomPhoneNumberTextField(
                  label: l10n.phone,
                  hint: "1087654321",
                  controller: phoneController,
                  validator: (value) {
                    if (value == null || value.number.isEmpty) {
                      return l10n.fieldRequired;
                    }
                    return null;
                  },
                ),
                gapH24,
                CustomTextField(
                  label: l10n.password,
                  hint: "*******",
                  controller: passwordController,
                  isPasswordField: true,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return l10n.fieldRequired;
                    }
                    if (value.length < 6) {
                      return 'Password must be at least 6 characters';
                    }
                    return null;
                  },
                ),
                gapH24,
                CustomTextField(
                  label: l10n.confirmPassword,
                  hint: "*******",
                  controller: confirmPasswordController,
                  isPasswordField: true,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return l10n.fieldRequired;
                    }
                    if (value != passwordController.text) {
                      return 'Passwords do not match';
                    }
                    return null;
                  },
                ),
                gapH24,
                AsyncValueWidget(
                  value: ref.watch(authUiServiceProvider),
                  builder: (userData) => CustomButton(
                    backgroundColor: theme.primary,
                    title: l10n.signUp,
                    shape: RoundedRectangleBorder(borderRadius: .circular(10)),
                    width: .infinity,
                    titleStyle: theme.bodyMedium.copyWith(
                      color: theme.white,
                      fontWeight: .w600,
                    ),
                    onPressed: () async {
                      // showBirthdayDialog(context, ref);
                      if (_formKey.currentState!.validate()) {
                        await authRef.registerUser(
                          email: emailController.text,
                          password: passwordController.text,
                          name: nameController.text,
                          phone: phoneController.text,
                          gender: gender?.toUpperCase(),
                          birthDate: birthDate != null
                              ? DateFormat('yyyy-MM-dd').format(birthDate!)
                              : null,
                        );
                        if (authRef.getUserEntity() != null) {
                          await sessionManager.setBoardingVisitState(
                            status: true,
                          );
                          if (context.mounted) {
                            context.router.pop(const LoginRoute());
                          }
                        }
                      }
                    },
                  ),
                ),
                Padding(
                  padding: .symmetric(horizontal: 30, vertical: 1.5.sh),
                  child: Row(
                    children: [
                      Expanded(
                        child: Divider(
                          color: theme.dividerColor.withValues(alpha: 0.6),
                          height: 1,
                        ),
                      ),
                      Padding(
                        padding: const .symmetric(horizontal: 12),
                        child: Text(
                          l10n.or,
                          style: theme.bodyMedium.copyWith(
                            color: theme.primaryText.withValues(alpha: 0.6),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Divider(
                          color: theme.dividerColor.withValues(alpha: 0.6),
                          height: 1,
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: .center,
                  children: [
                    Image.asset(AssetsHelper.googleLogo, width: 35),
                    gapW32,
                    Image.asset(AssetsHelper.facebookLogo, width: 35),
                    gapW32,
                    Image.asset(AssetsHelper.appleLogo, width: 35),
                  ],
                ),
                gapH12,
                RichText(
                  text: TextSpan(
                    text: l10n.alreadyHaveAnAccount,
                    style: theme.titleSmall.copyWith(fontWeight: .w500),
                    children: [
                      TextSpan(
                        text: ' ${l10n.login}',
                        recognizer: TapGestureRecognizer()
                          ..onTap = () =>
                              context.router.push(const LoginRoute()),
                        style: theme.titleSmall.copyWith(
                          fontWeight: .w600,
                          color: theme.primary,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
