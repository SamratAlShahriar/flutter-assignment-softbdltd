import 'package:easy_date_timeline/easy_date_timeline.dart';
import 'package:flutterassignment/data/repository/repository_impl.dart';
import 'package:flutterassignment/data/service/remote_api_service.dart';
import 'package:flutterassignment/data/model/api_response_model.dart';
import 'package:get/get.dart';

import '../../../../domain/entity/data_entity.dart';

class TimelineController extends GetxController {
  final EasyInfiniteDateTimelineController timelineController =
      EasyInfiniteDateTimelineController();

  final selectedDate = DateTime.now().obs;
  final calendarList = <DataEntity>[].obs;

  final isLoading = false.obs;

  Future<void> getDateData({DateTime? date}) async {
    if (date != null) {
      selectedDate.value = date;
    }
    isLoading.value = true;
    await _getData();
    isLoading.value = false;
  }

  Future<void> _getData() async {
    final apiService = RemoteApiService();
    final repo = RepositoryImpl(apiService);

    final responseModel = await repo.getData().onError((error, stackTrace) {
      calendarList.value = [];
      return null;
    });
    if (responseModel != null && responseModel.data != null) {
      final dataList = responseModel.data!;

      final list = dataList
          .map((e) => DataEntity(
              date: DateTime.fromMillisecondsSinceEpoch(
                  int.parse(e.date!) * 1000),
              name: e.name!,
              category: e.category!,
              location: e.location!))
          .toList();
      calendarList.value = list
          .where((element) =>
              element.date.day == selectedDate.value.day &&
              element.date.month == selectedDate.value.month &&
              element.date.year == selectedDate.value.year)
          .toList();
    } else {
      calendarList.value = [];
    }
  }
}
