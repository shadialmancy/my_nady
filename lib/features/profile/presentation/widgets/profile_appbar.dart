import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/constants/app_sizes.dart';
import '../../../../core/helpers/assets_helper.dart';
import '../../../../core/shared/widgets/async_value_widget.dart';
import '../../../authentication/presentation/provider/auth_ui_service.dart';
import '../provider/edit_profile_service.dart';
import 'show_image_source_bottom_sheet.dart';

class ProfileAppbar extends ConsumerWidget {
  const ProfileAppbar({super.key, this.isEditable});
  final bool? isEditable;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final (theme, _) = appSettingsRecord(context);
    final profileImageState = ref.watch(
      editProfileServiceProvider(ImageType.profile),
    );
    final bannerImageState = ref.watch(
      editProfileServiceProvider(ImageType.banner),
    );

    return SizedBox(
      height: 200,
      child: Stack(
        children: [
          AsyncValueWidget<String?>(
            value: bannerImageState,
            builder: (imagePath) {
              return Container(
                height: 150,
                decoration: BoxDecoration(
                  color: theme.primary,
                  borderRadius: .only(
                    bottomLeft: Radius.circular(12),
                    bottomRight: Radius.circular(12),
                  ),
                ),
              );
            },
          ),
          if (isEditable ?? false)
            Positioned(
              left: 20,
              top: 40,
              child: GestureDetector(
                onTap: () {
                  context.router.maybePop();
                },
                child: SvgPicture.asset(
                  AssetsHelper.backIcon,
                  width: 26,
                  colorFilter: ColorFilter.mode(theme.white, BlendMode.srcIn),
                ),
              ),
            ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: AsyncValueWidget<String?>(
              value: profileImageState,
              builder: (imagePath) {
                final user = ref.read(authUiServiceProvider).value;
                return CircleAvatar(
                  radius: 50,
                  backgroundColor: theme.white,
                  child: imagePath != null
                      ? ClipOval(
                          child: Image.file(
                            File(imagePath),
                            fit: BoxFit.cover,
                            width: 100,
                            height: 100,
                          ),
                        )
                      : user?.image != null
                      ? ClipOval(
                          child: Image.network(
                            user!.image!,
                            fit: BoxFit.cover,
                            width: 100,
                            height: 100,
                            errorBuilder: (context, error, stackTrace) =>
                                SvgPicture.asset(
                                  AssetsHelper.profileIcon,
                                  colorFilter: ColorFilter.mode(
                                    theme.primary,
                                    BlendMode.srcIn,
                                  ),
                                ),
                          ),
                        )
                      : SvgPicture.asset(
                          AssetsHelper.profileIcon,
                          colorFilter: ColorFilter.mode(
                            theme.primary,
                            BlendMode.srcIn,
                          ),
                          width: 50,
                          height: 50,
                        ),
                );
              },
            ),
          ),
          if (isEditable ?? false)
            Positioned(
              bottom: 5,
              left: 80,
              right: 0,
              child: GestureDetector(
                onTap: () {
                  showImageSourceBottomSheet(context, ref, ImageType.profile);
                },
                child: CircleAvatar(
                  radius: 15,
                  backgroundColor: theme.primary,
                  child: SvgPicture.asset(AssetsHelper.editIcon),
                ),
              ),
            ),
          // if (isEditable ?? false)
          //   Positioned(
          //     bottom: 36,
          //     right: 20,
          //     child: GestureDetector(
          //       // onTap: () =>
          //       //     showImageSourceBottomSheet(context, ref, ImageType.banner),
          //       child: CircleAvatar(
          //         radius: 15,
          //         backgroundColor: theme.primary,
          //         child: SvgPicture.asset(AssetsHelper.editIcon),
          //       ),
          //     ),
          //   ),
        ],
      ),
    );
  }
}
