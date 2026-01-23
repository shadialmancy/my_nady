import 'dart:async';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../domain/entity/dairy_entity.dart';
import '../../domain/repositories/dairy_record_repository.dart';

part 'dairy_record_ui_service.g.dart';

@Riverpod(keepAlive: true)
class DairyRecordUiService extends _$DairyRecordUiService {
  @override
  FutureOr<DairyEntity?> build() {
    return fetchDairyRecords();
  }

  Future<DairyEntity?> fetchDairyRecords() async {
    state = const AsyncValue.loading();
    try {
      final repository = ref.read(dairyRecordRepositoryProvider.notifier);
      final result = await repository.getDairyRecords();
      state = AsyncValue.data(result);
      return result;
    } catch (e, st) {
      state = AsyncValue.error(e, st);
      return null;
    }
  }

  Future<void> addDairyRecord({
    required String title,
    required String description,
    required String date,
  }) async {
    try {
      final repository = ref.read(dairyRecordRepositoryProvider.notifier);
      await repository.addDairyRecord(
        title: title,
        description: description,
        date: date,
      );
      // Refresh the records after adding a new one
      await fetchDairyRecords();
    } catch (e) {
      rethrow;
    }
  }

  Future<void> updateDairyRecord({
    required String id,
    String? title,
    String? description,
    String? date,
  }) async {
    try {
      final repository = ref.read(dairyRecordRepositoryProvider.notifier);
      await repository.updateDairyRecord(
        id: id,
        title: title,
        description: description,
        date: date,
      );
      await fetchDairyRecords();
    } catch (e) {
      rethrow;
    }
  }

  Future<void> deleteDairyRecord(String id) async {
    try {
      final repository = ref.read(dairyRecordRepositoryProvider.notifier);
      await repository.deleteDairyRecord(id);
      await fetchDairyRecords();
    } catch (e) {
      rethrow;
    }
  }

  Future<void> addDairyItem({
    required String diaryId,
    required String title,
    String? description,
  }) async {
    try {
      final repository = ref.read(dairyRecordRepositoryProvider.notifier);
      await repository.addDairyItem(
        diaryId: diaryId,
        title: title,
        description: description,
      );
      await fetchDairyRecords();
    } catch (e) {
      rethrow;
    }
  }

  Future<void> updateDairyItem({
    required String itemId,
    String? title,
    String? description,
    bool? isCompleted,
  }) async {
    try {
      final repository = ref.read(dairyRecordRepositoryProvider.notifier);
      await repository.updateDairyItem(
        itemId: itemId,
        title: title,
        description: description,
        isCompleted: isCompleted,
      );
      await fetchDairyRecords();
    } catch (e) {
      rethrow;
    }
  }

  Future<void> deleteDairyItem(String itemId) async {
    try {
      final repository = ref.read(dairyRecordRepositoryProvider.notifier);
      await repository.deleteDairyItem(itemId);
      await fetchDairyRecords();
    } catch (e) {
      rethrow;
    }
  }
}
