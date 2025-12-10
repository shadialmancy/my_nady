import 'package:image_picker/image_picker.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/constants/app_constants.dart';

part 'edit_profile_service.g.dart';

enum ImageType { profile, banner }

@Riverpod(keepAlive: false)
class EditProfileService extends _$EditProfileService {
  late final ImageType imageType;

  @override
  Future<String?> build(ImageType type) async {
    imageType = type;
    return null;
  }

  final ImagePicker _picker = ImagePicker();

  /// Pick image from gallery or camera
  Future<void> pickImage({required ImageSource source}) async {
    try {
      final XFile? pickedFile = await _picker.pickImage(
        source: source,
        maxWidth: 1800,
        maxHeight: 1800,
        imageQuality: 85,
      );

      if (pickedFile != null) {
        // Update state with the picked image path
        state = AsyncValue.data(pickedFile.path);
      } else {
        // User cancelled the picker
        state = const AsyncValue.data(null);
      }
    } catch (e, stackTrace) {
      logger.e('Error picking image: $e', error: e, stackTrace: stackTrace);
      state = AsyncValue.error(e, stackTrace);
    }
  }

  /// Clear the selected image
  void clearImage() {
    state = const AsyncValue.data(null);
  }
}
