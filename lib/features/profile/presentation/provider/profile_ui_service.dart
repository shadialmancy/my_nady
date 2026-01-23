import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'profile_ui_service.g.dart';

@Riverpod(keepAlive: true)
class ProfileUiService extends _$ProfileUiService {
  @override
  FutureOr<void> build() {
    // return fetchProfile();
  }

  // Future<void> fetchProfile() async { ... }
}
