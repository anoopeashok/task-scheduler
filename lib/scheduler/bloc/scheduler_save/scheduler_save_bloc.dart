import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:scheduler/mixins/date_format_mixins.dart';
import 'package:scheduler/mixins/datetime_pickers.dart';
import 'package:scheduler/scheduler/bloc/scheduler_save/scheduler_save_state.dart';
import 'package:scheduler/scheduler/model/scheduler_model.dart';
import 'package:scheduler/scheduler/repo/scheduler_repo.dart';

final schedulerSaveProvider = StateNotifierProvider.autoDispose<
        SchedulerSaveStateNotifier, SchedulerSaveState>(
    (ref) => SchedulerSaveStateNotifier(
        state: const SchedulerSaveState.initial(),
        schedulerRepo: ref.watch(schedulerRepo)));

class SchedulerSaveStateNotifier extends StateNotifier<SchedulerSaveState>
    with DateFormatMixin, DateTimePicker {
  SchedulerSaveStateNotifier({required state, required this.schedulerRepo})
      : super(state);
  SchedulerRepo schedulerRepo;
  TextEditingController nameControlller = TextEditingController();
  TextEditingController dateController = TextEditingController();
  TextEditingController startTimeController = TextEditingController();
  TextEditingController endTimeController = TextEditingController();
  DateTime? date, startTime, endTime;

  validation() async {
    if (startTime == null ||
        endTime == null ||
        date == null ||
        nameControlller.text.isEmpty) {
      Fluttertoast.showToast(msg: 'Every field is mandatory');
      return;
    }

    if (startTime!.compareTo(endTime!) == 0) {
      Fluttertoast.showToast(msg: 'Start time and end time cannot be same');
      return;
    }

    if (startTime!.isAfter(endTime!)) {
      Fluttertoast.showToast(msg: 'Start time cannot be after endtime');
      return;
    }

    List<Schedule>? schedulers = await schedulerRepo.getSchedulerList();
    try {
      List<Schedule> oldScheduler = List<Schedule>.from(schedulers.where(
          (element) => element.date.compareTo(dateFormatToString(date)) == 0));
      if (oldScheduler.isEmpty) {
        save(Schedule(
            name: nameControlller.text,
            date: dateFormatToString(date),
            startTime: timeFormatToString(startTime),
            endTime: timeFormatToString(endTime)));
      } else {
        oldScheduler.where((element) =>
            startTime!
                .isBefore(timeStringToDate(element.date, element.endTime)) &&
            endTime!
                .isAfter(timeStringToDate(element.date, element.startTime)));
        if (oldScheduler.isEmpty) {
          save(Schedule(
              name: nameControlller.text,
              date: dateFormatToString(date),
              startTime: timeFormatToString(startTime),
              endTime: timeFormatToString(endTime)));
        } else {
          state = const SchedulerSaveState.validationError(error: "");
        }
      }
    } catch (e) {
      state = SchedulerSaveState.error(error: e.toString());
    }
  }

  setStartTime(
    context,
  ) async {
    startTime = await timePicker(context);
    startTimeController.text = timeFormatToString(startTime);
  }

  setEndTime(context) async {
    endTime = await timePicker(context);
    endTimeController.text = timeFormatToString(endTime);
  }

  setDate(context) async {
    date = await datePicker(context);
    dateController.text = dateFormatToString(date);
  }

  save(Schedule scheduler) async {
    return;
    state = const SchedulerSaveState.loading();
    try {
      await schedulerRepo.saveScheduler(scheduler);
      state = const SchedulerSaveState.success();
    } catch (e) {
      state = SchedulerSaveState.error(error: e.toString());
    }
  }
}
