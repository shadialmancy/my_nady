// ignore_for_file: deprecated_member_use

import 'package:auto_route/auto_route.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_nady_project/core/router/app_router.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../../app/view/app.dart';
import '../../../../core/constants/app_constants.dart';
import '../../../../core/constants/app_sizes.dart';
import '../../../../core/helpers/assets_helper.dart';
import '../../../../core/helpers/session_manager.dart';
import '../../../../core/localization/localizations.dart';
import '../../../../core/shared/widgets/location_permission_dialog.dart';
import '../../../../core/shared/widgets/widgets.dart';
import '../../../club/presentation/provider/map_location_service.dart';
import '../provider/auth_ui_service.dart';

class LoginUi extends ConsumerStatefulWidget {
  const LoginUi({super.key});

  @override
  ConsumerState<LoginUi> createState() => _LoginUiState();
}

class _LoginUiState extends ConsumerState<LoginUi> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  bool isRemembered = false;

  Future<void> _continueAsGuest(BuildContext context) async {
    await sessionManager.clearAuthSession();
    await sessionManager.setGuestMode(isGuest: true);
    ref.invalidate(authUiServiceProvider);

    if (!context.mounted) return;

    final locationService = ref.read(mapLocationServiceProvider.notifier);
    final hasPermission = await locationService.hasLocationPermission();

    if (!hasPermission && context.mounted) {
      await showLocationPerimssionDialog(
        context,
        ref,
        onPermissionGranted: () {
          if (context.mounted) {
            context.router.maybePop();
          }
        },
      );
    }

    if (context.mounted) {
      context.router.replaceAll([const DashboardLayoutRoute()]);
    }
  }

  @override
  Widget build(BuildContext context) {
    final currentLangCode = Localizations.localeOf(context).languageCode;
    final (theme, l10n) = appSettingsRecord(context);
    final authRef = ref.watch(authUiServiceProvider.notifier);
    return SafeArea(
      child: Center(
        child: SingleChildScrollView(
          padding: .only(left: 3.sw, right: 3.sw),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Align(
                  alignment: AlignmentDirectional.topEnd,
                  child: Container(
                    margin: const EdgeInsets.only(bottom: 16),
                    child: InkWell(
                      borderRadius: BorderRadius.circular(20),
                      onTap: () async {
                        final selectedCode = await showModalBottomSheet<String>(
                          context: context,
                          backgroundColor: Colors.transparent,
                          builder: (ctx) {
                            final (theme, l10n) = appSettingsRecord(ctx);
                            return Container(
                              margin: EdgeInsets.symmetric(
                                horizontal: 3.sw,
                                vertical: 16,
                              ),
                              padding: const EdgeInsets.all(16),
                              decoration: BoxDecoration(
                                color: theme.white,
                                borderRadius: BorderRadius.circular(16),
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    l10n.language,
                                    style: theme.titleMedium.copyWith(
                                      fontWeight: FontWeight.w600,
                                      color: theme.fullBlack,
                                    ),
                                  ),
                                  gapH12,
                                  RadioListTile<String>(
                                    value: english,
                                    groupValue: currentLangCode,
                                    onChanged: (value) =>
                                        Navigator.of(ctx).pop(value),
                                    title: Text(
                                      l10n.en,
                                      style: theme.titleMedium.copyWith(
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                  RadioListTile<String>(
                                    value: arabic,
                                    groupValue: currentLangCode,
                                    onChanged: (value) =>
                                        Navigator.of(ctx).pop(value),
                                    title: Text(
                                      l10n.ar,
                                      style: theme.titleMedium.copyWith(
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        );

                        if (selectedCode != null &&
                            selectedCode != currentLangCode) {
                          final newLocale = await setLocale(selectedCode);
                          if (context.mounted) {
                            App.setLocale(context, newLocale);
                          }
                        }
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 14,
                          vertical: 8,
                        ),
                        decoration: BoxDecoration(
                          color: theme.primary.withValues(alpha: 0.1),
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: theme.primary, width: 1.5),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(
                              Icons.language_rounded,
                              color: theme.primary,
                              size: 18,
                            ),
                            const SizedBox(width: 8),
                            Text(
                              currentLangCode == arabic ? l10n.ar : l10n.en,
                              style: theme.titleSmall.copyWith(
                                color: theme.primary,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(width: 4),
                            Icon(
                              Icons.keyboard_arrow_down_rounded,
                              color: theme.primary,
                              size: 18,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Text(
                  l10n.welcomeBack,
                  style: theme.titleLarge.copyWith(
                    color: theme.primary,
                    fontSize: 30,
                    fontWeight: .bold,
                  ),
                ),
                gapH8,
                Text(
                  l10n.loginToYourAccount,
                  style: theme.labelMedium.copyWith(
                    color: theme.primaryText.withValues(alpha: 0.7),
                    fontWeight: .normal,
                  ),
                ),
                gapH32,
                Image.asset(AssetsHelper.authenticaionBanner),
                gapH64,
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
                CustomTextField(
                  label: l10n.password,
                  hint: l10n.enterYourPassword,
                  controller: passwordController,
                  isPasswordField: true,
                ),
                SizedBox(
                  height: 30,
                  child: Stack(
                    children: [
                      Positioned(
                        left: -10,
                        top: 3,
                        child: SizedBox(
                          width: 200,
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                isRemembered = !isRemembered;
                                logger.i(isRemembered);
                              });
                            },
                            child: ListTileTheme(
                              horizontalTitleGap: 0,
                              contentPadding: .zero,
                              child: RadioListTile<bool>(
                                radioScaleFactor: 0.7,
                                visualDensity: VisualDensity(
                                  horizontal: -4,
                                  vertical: -4,
                                ),
                                dense: true,
                                value: isRemembered,
                                groupValue: true,
                                activeColor: theme.primary,
                                fillColor: WidgetStatePropertyAll(
                                  theme.primary,
                                ),
                                materialTapTargetSize: .shrinkWrap,
                                title: Text(
                                  l10n.rememberMe,
                                  style: theme.bodySmall.copyWith(
                                    color: theme.primaryText.withValues(
                                      alpha: 0.6,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          context.router.push(const ForgetPasswordRoute());
                        },
                        child: Align(
                          alignment: Alignment.bottomRight,
                          child: Text(
                            l10n.forgotPassword,
                            style: theme.bodySmall.copyWith(
                              color: theme.primary,
                              fontWeight: .bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                gapH24,
                AsyncValueWidget(
                  value: ref.watch(authUiServiceProvider),
                  builder: (userData) {
                    return CustomButton(
                      backgroundColor: theme.primary,
                      title: l10n.login,
                      shape: RoundedRectangleBorder(
                        borderRadius: .circular(10),
                      ),
                      width: .infinity,
                      titleStyle: theme.bodyMedium.copyWith(
                        color: theme.white,
                        fontWeight: .w600,
                      ),
                      onPressed: () async {
                        FocusManager.instance.primaryFocus?.unfocus();
                        if (_formKey.currentState!.validate()) {
                          await authRef.loginUser(
                            email: emailController.text,
                            password: passwordController.text,
                          );
                        }
                        if (authRef.getUserEntity() != null) {
                          isRemembered
                              ? await sessionManager.setBoardingVisitState(
                                  status: true,
                                )
                              : null;

                          // Check location permission before navigating
                          if (context.mounted) {
                            final locationService = ref.read(
                              mapLocationServiceProvider.notifier,
                            );
                            final hasPermission = await locationService
                                .hasLocationPermission();

                            if (!hasPermission) {
                              // Show location permission dialog

                              context.mounted
                                  ? await showLocationPerimssionDialog(
                                      context,
                                      ref,
                                      onPermissionGranted: () {
                                        if (context.mounted) {
                                          context.router.maybePop();
                                        }
                                      },
                                    )
                                  : null;
                            }
                            context.mounted
                                ? context.router.replaceAll([
                                    const DashboardLayoutRoute(),
                                  ])
                                : null;
                          }
                        }
                      },
                    );
                  },
                ),
                gapH12,
                CustomButton(
                  backgroundColor: theme.white,
                  title: l10n.continueAsGuest,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    side: BorderSide(color: theme.primary),
                  ),
                  width: double.infinity,
                  titleStyle: theme.bodyMedium.copyWith(
                    color: theme.primary,
                    fontWeight: FontWeight.w600,
                  ),
                  onPressed: () => _continueAsGuest(context),
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
                    text: l10n.dontHaveAccount,
                    style: theme.titleSmall.copyWith(fontWeight: .w500),
                    children: [
                      TextSpan(
                        text: ' ${l10n.signUp}',
                        recognizer: TapGestureRecognizer()
                          ..onTap = () =>
                              context.router.push(const RegisterRoute()),
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
