import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';
import 'package:my_nady_project/core/constants/app_sizes.dart';

import '../../../authentication/presentation/provider/auth_ui_service.dart';
import '../provider/edit_profile_service.dart';

void showImageSourceBottomSheet(
  BuildContext context,
  WidgetRef ref,
  ImageType type,
) {
  final (theme, _) = appSettingsRecord(context);
  showModalBottomSheet(
    context: context,
    backgroundColor: theme.white,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
    ),
    builder: (context) => Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ListTile(
            leading: Icon(Icons.camera_alt, color: theme.primary),
            title: const Text('Camera'),
            onTap: () async {
              Navigator.pop(context);
              await ref
                  .read(editProfileServiceProvider(type).notifier)
                  .pickImage(source: ImageSource.camera);
              // Upload profile image if picked
              final profileImagePath = ref
                  .read(editProfileServiceProvider(ImageType.profile))
                  .value;
              if (profileImagePath != null) {
                await ref
                    .read(authUiServiceProvider.notifier)
                    .uploadAvatar(imagePath: profileImagePath);
                // Clear picked image after upload
                ref
                    .read(
                      editProfileServiceProvider(ImageType.profile).notifier,
                    )
                    .clearImage();
              }
            },
          ),
          ListTile(
            leading: Icon(Icons.photo_library, color: theme.primary),
            title: const Text('Gallery'),
            onTap: () async {
              Navigator.pop(context);
              await ref
                  .read(editProfileServiceProvider(type).notifier)
                  .pickImage(source: ImageSource.gallery);
              // Upload profile image if picked
              final profileImagePath = ref
                  .read(editProfileServiceProvider(ImageType.profile))
                  .value;
              if (profileImagePath != null) {
                await ref
                    .read(authUiServiceProvider.notifier)
                    .uploadAvatar(imagePath: profileImagePath);
                // Clear picked image after upload
                ref
                    .read(
                      editProfileServiceProvider(ImageType.profile).notifier,
                    )
                    .clearImage();
              }
            },
          ),
        ],
      ),
    ),
  );
}
