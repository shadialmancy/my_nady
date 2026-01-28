import 'package:my_nady_project/core/constants/app_constants.dart';
import '../../../../core/api/apis.dart';
import '../models/dairy_dto/dairy_dto.dart';
import '../models/dairy_dto/datum.dart';

abstract class DairyRecordDataSource {
  Future<DairyDto> getDairyRecords();
  Future<DairyDatum> getDairyRecordById(String id);
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
    required String order,
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

class DairyRecordDataSourceImpl implements DairyRecordDataSource {
  @override
  Future<DairyDto> getDairyRecords() async {
    final response = await DioClient().dio.get(AppConstants.dairyRecordsApiUrl);

    if (response.statusCode == 200) {
      return DairyDto.fromJson(response.data);
    } else {
      throw 'Error in getDairyRecords';
    }
  }

  @override
  Future<DairyDatum> getDairyRecordById(String id) async {
    final response = await DioClient().dio.get(
      '${AppConstants.dairyRecordsApiUrl}/$id',
    );

    if (response.statusCode == 200) {
      return DairyDatum.fromJson(response.data);
    } else {
      throw 'Error in getDairyRecordById';
    }
  }

  @override
  Future<void> addDairyRecord({
    required String title,
    required String description,
    required String date,
  }) async {
    final datePost = DateTime.parse(date);
    final convertedData = "${datePost.toIso8601String()}Z";
    final response = await DioClient().dio.post(
      AppConstants.dairyRecordsApiUrl,
      data: {'title': title, 'content': description, 'date': convertedData},
    );

    if (response.statusCode != 200 && response.statusCode != 201) {
      throw 'Error in addDairyRecord';
    }
  }

  @override
  Future<void> updateDairyRecord({
    required String id,
    String? title,
    String? description,
    String? date,
  }) async {
    String? convertedData;
    if (date != null) {
      final datePost = DateTime.parse(date);
      convertedData = "${datePost.toIso8601String()}Z";
    }
    final response = await DioClient().dio.patch(
      '${AppConstants.dairyRecordsApiUrl}/$id',
      data: {
        if (title != null) 'title': title,
        if (description != null) 'description': description,
        if (date != null) 'date': convertedData,
      },
    );

    if (response.statusCode != 200) {
      throw 'Error in updateDairyRecord';
    }
  }

  @override
  Future<void> deleteDairyRecord(String id) async {
    final response = await DioClient().dio.delete(
      '${AppConstants.dairyRecordsApiUrl}/$id',
      data: {},
    );

    if (response.statusCode != 200) {
      throw 'Error in deleteDairyRecord';
    }
  }

  @override
  Future<void> addDairyItem({
    required String diaryId,
    required String title,
    required String order,
    String? description,
  }) async {
    final response = await DioClient().dio.post(
      '${AppConstants.dairyRecordsApiUrl}/$diaryId/items',
      data: {
        'title': title,
        if (description != null) 'description': description,
        'order': order,
      },
    );

    if (response.statusCode != 200 && response.statusCode != 201) {
      throw 'Error in addDairyItem';
    }
  }

  @override
  Future<void> updateDairyItem({
    required String itemId,
    String? title,
    String? description,
    bool? isCompleted,
  }) async {
    final response = await DioClient().dio.patch(
      '${AppConstants.dairyRecordsApiUrl}/items/$itemId',
      data: {
        if (title != null) 'title': title,
        if (description != null) 'description': description,
        if (isCompleted != null) 'isCompleted': isCompleted,
      },
    );

    if (response.statusCode != 200) {
      throw 'Error in updateDairyItem';
    }
  }

  @override
  Future<void> deleteDairyItem(String itemId) async {
    final response = await DioClient().dio.delete(
      '${AppConstants.dairyRecordsApiUrl}/items/$itemId',
      data: {},
    );

    if (response.statusCode != 200) {
      throw 'Error in deleteDairyItem';
    }
  }
}
