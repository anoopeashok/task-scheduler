import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:scheduler/mixins/date_format_mixins.dart';
import 'package:scheduler/scheduler/bloc/scheduler%20list/scheduler_states.dart';
import 'package:scheduler/scheduler/repo/scheduler_repo.dart';

import '../../model/scheduler_model.dart';

final schedulerStateProvider =
    StateNotifierProvider<SchedulerStateNotifier, SchedulerState>((ref) =>
        SchedulerStateNotifier(
            state: const SchedulerState.initial(),
            schedulerRepo: ref.watch(schedulerRepo)));

class SchedulerStateNotifier extends StateNotifier<SchedulerState>
    with DateFormatMixin {
  SchedulerStateNotifier(
      {required SchedulerState state, required this.schedulerRepo})
      : super(state) {
    getScheduler();
  }
  SchedulerRepo schedulerRepo;
  DateTime selectedDate = DateTime.now();
  List<Schedule> schedules = [];
  TextEditingController titleController = TextEditingController();

  setNewDate(date) {
    selectedDate = date;
    titleController.text = monthandYear(date);
    getScheduler();
  }

  getScheduler() async {
    state = const SchedulerState.loading();
    try {
      List<Schedule> allSchedules = await schedulerRepo.getSchedulerList();
      schedules = List.from(allSchedules.where(
          (element) => element.date == dateFormatToString(selectedDate)));
      state = SchedulerState.data(schedulers: schedules);
    } catch (e) {
      state = SchedulerState.error(error: e.toString());
    }
  }
}
