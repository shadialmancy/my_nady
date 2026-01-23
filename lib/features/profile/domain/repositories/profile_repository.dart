import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'profile_repository.g.dart';

@Riverpod(keepAlive: true)
class ProfileRepository extends _$ProfileRepository {
  @override
  FutureOr<void> build() {}

  // final ProfileRepositoryImpl _profileRepositoryImpl = ProfileRepositoryImpl();
}
