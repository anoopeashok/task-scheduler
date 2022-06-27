import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'scheduler_save_state.freezed.dart';

@freezed
class SchedulerSaveState with _$SchedulerSaveState {
  const factory SchedulerSaveState.initial() = _SchedulerSaveStateInitial;
  const factory SchedulerSaveState.loading() = _SchedulerSaveStateLoading;
  const factory SchedulerSaveState.validationError({required String error}) =
      _SchedulerStateValidationError;
  const factory SchedulerSaveState.error({required String error}) =
      _SchedulerStateSaveError;
  const factory SchedulerSaveState.success() = _SchedulerStateSaveSuccess;
}
