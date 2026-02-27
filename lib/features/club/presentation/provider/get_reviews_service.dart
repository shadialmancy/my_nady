import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../domain/entities/review_entity.dart';
import '../../domain/repositories/club_repository.dart';

part 'get_reviews_service.g.dart';

@Riverpod(keepAlive: true)
class GetReviewsService extends _$GetReviewsService {
  @override
  FutureOr<ReviewEntity?> build() {
    return null;
  }

  Future<ReviewEntity?> fetchReviews(String branchId) async {
    state = const AsyncValue.loading();
    try {
      final repository = ref.read(clubRepositoryProvider.notifier);
      final results = await repository.getReviews(branchId);
      state = AsyncValue.data(results);
      return results;
    } catch (e, st) {
      state = AsyncValue.error(e, st);
      rethrow;
    }
  }
}
