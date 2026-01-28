import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../data/repositories_impl/dairy_record_repository_impl.dart';
import '../entity/dairy_entity.dart';

part 'dairy_record_repository.g.dart';

@Riverpod(keepAlive: true)
class DairyRecordRepository extends _$DairyRecordRepository {
  @override
  FutureOr<void> build() {}

  final DairyRecordRepositoryImpl _dairyRecordRepositoryImpl =
      DairyRecordRepositoryImpl();

  Future<DairyEntity?> getDairyRecords() async {
    try {
      return await _dairyRecordRepositoryImpl.getDairyRecords();
    } catch (e) {
      rethrow;
    }
  }

  Future<void> addDairyRecord({
    required String title,
    required String description,
    required String date,
  }) async {
    try {
      await _dairyRecordRepositoryImpl.addDairyRecord(
        title: title,
        description: description,
        date: date,
      );
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
      await _dairyRecordRepositoryImpl.updateDairyRecord(
        id: id,
        title: title,
        description: description,
        date: date,
      );
    } catch (e) {
      rethrow;
    }
  }

  Future<void> deleteDairyRecord(String id) async {
    try {
      await _dairyRecordRepositoryImpl.deleteDairyRecord(id);
    } catch (e) {
      rethrow;
    }
  }

  Future<void> addDairyItem({
    required String diaryId,
    required String title,
    required String order,
    String? description,
  }) async {
    try {
      await _dairyRecordRepositoryImpl.addDairyItem(
        diaryId: diaryId,
        title: title,
        order: order,
        description: description,
      );
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
      await _dairyRecordRepositoryImpl.updateDairyItem(
        itemId: itemId,
        title: title,
        description: description,
        isCompleted: isCompleted,
      );
    } catch (e) {
      rethrow;
    }
  }

  Future<void> deleteDairyItem(String itemId) async {
    try {
      await _dairyRecordRepositoryImpl.deleteDairyItem(itemId);
    } catch (e) {
      rethrow;
    }
  }
}
