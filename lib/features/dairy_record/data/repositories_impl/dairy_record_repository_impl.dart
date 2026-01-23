import 'package:my_nady_project/features/dairy_record/domain/entity/dairy_entity.dart';

import '../datasource/dairy_record_datasource.dart';
import '../models/dairy_dto/dairy_dto.dart';

abstract class BaseDairyRecordRepository {
  Future<DairyEntity?> getDairyRecords();
  Future<void> addDairyRecord({
    required String title,
    required String description,
    required String date,
  });
  Future<void> updateDairyRecord({
    required String id,
    String? title,
    String? description,
    String? date,
  });
  Future<void> deleteDairyRecord(String id);
  Future<void> addDairyItem({
    required String diaryId,
    required String title,
    String? description,
  });
  Future<void> updateDairyItem({
    required String itemId,
    String? title,
    String? description,
    bool? isCompleted,
  });
  Future<void> deleteDairyItem(String itemId);
}

class DairyRecordRepositoryImpl implements BaseDairyRecordRepository {
  final DairyRecordDataSource dataSource = DairyRecordDataSourceImpl();

  @override
  Future<DairyEntity?> getDairyRecords() async {
    try {
      return await dataSource.getDairyRecords().then((value) {
        return value.toEntity();
      });
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<void> addDairyRecord({
    required String title,
    required String description,
    required String date,
  }) async {
    try {
      await dataSource.addDairyRecord(
        title: title,
        description: description,
        date: date,
      );
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<void> updateDairyRecord({
    required String id,
    String? title,
    String? description,
    String? date,
  }) async {
    try {
      await dataSource.updateDairyRecord(
        id: id,
        title: title,
        description: description,
        date: date,
      );
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<void> deleteDairyRecord(String id) async {
    try {
      await dataSource.deleteDairyRecord(id);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<void> addDairyItem({
    required String diaryId,
    required String title,
    String? description,
  }) async {
    try {
      await dataSource.addDairyItem(
        diaryId: diaryId,
        title: title,
        description: description,
      );
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<void> updateDairyItem({
    required String itemId,
    String? title,
    String? description,
    bool? isCompleted,
  }) async {
    try {
      await dataSource.updateDairyItem(
        itemId: itemId,
        title: title,
        description: description,
        isCompleted: isCompleted,
      );
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<void> deleteDairyItem(String itemId) async {
    try {
      await dataSource.deleteDairyItem(itemId);
    } catch (e) {
      rethrow;
    }
  }
}
