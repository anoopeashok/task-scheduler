import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:scheduler/service/api_provider.dart';

import '../model/scheduler_model.dart';

final schedulerRepo = Provider<SchedulerRepo>((ref) => SchedulerRepo());

class SchedulerRepo {
  final ApiProvider _api = ApiProvider();
  List<Schedule> _schedulerList = [];

  Future<List<Schedule>> getSchedulerList() async {
    String endPoint = '/schedule';
    try {
      if (_schedulerList.isNotEmpty) {
        return _schedulerList;
      }
      List response = await _api.httpGet(endPoint: endPoint);
      _schedulerList = List.from(response.map((e) => Schedule.fromJson(e)));
      return _schedulerList;
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  Future<void> saveScheduler(Schedule scheduler) async {
    String endPoint = '/save/schedule';
    try {
      await _api.httpPost(endPoint: endPoint, body: scheduler.toJson());
      _schedulerList.add(scheduler);
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}
