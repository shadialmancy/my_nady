import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../features/club/domain/repositories/club_repository.dart';
import '../../domain/entities/gym_detail_entity.dart';

part 'get_gym_details_service.g.dart';

@Riverpod(keepAlive: true)
class GetGymDetailsService extends _$GetGymDetailsService {
  @override
  FutureOr<GymDetailEntity?> build() {
    return gymDetailEntity;
  }

  GymDetailEntity? gymDetailEntity;

  Future<GymDetailEntity?> fetchGymDetailsData(String id) async {
    state = const AsyncValue.loading();
    try {
      final repository = ref.read(clubRepositoryProvider.notifier);

      final results = await repository.getGymDetails(id);

      final newState = results;

      state = AsyncValue.data(newState);
      return newState;
    } catch (e, st) {
      state = AsyncValue.error(e, st);
      rethrow;
    }
  }
}
