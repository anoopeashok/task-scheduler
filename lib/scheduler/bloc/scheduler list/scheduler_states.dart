

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:scheduler/scheduler/model/scheduler_model.dart';

part 'scheduler_states.freezed.dart';

@freezed
class SchedulerState with _$SchedulerState{

  const factory SchedulerState.initial() = _SchedulerStateInitial;
  const factory SchedulerState.loading()= _SchedulerStateLoading;
  const factory SchedulerState.data({required List<Schedule> schedulers})= _SchedulerStateData;
  const factory SchedulerState.error({required String error})= _SchedulerStateError;

}