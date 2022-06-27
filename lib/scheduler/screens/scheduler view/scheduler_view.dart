import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:scheduler/mixins/date_format_mixins.dart';
import 'package:scheduler/scheduler/bloc/scheduler%20list/scheduler_bloc.dart';
import 'package:scheduler/scheduler/screens/scheduler%20add/scheduler_add.dart';
import 'package:table_calendar/table_calendar.dart';

import 'components/scheduler_list.dart';

class ScheduleView extends ConsumerStatefulWidget {
  @override
  _SchedulerViewState createState() => _SchedulerViewState();
}

class _SchedulerViewState extends ConsumerState<ScheduleView>
    with DateFormatMixin {
  @override
  Widget build(BuildContext context) {
    final state = ref.watch(schedulerStateProvider);
    final notifier = ref.watch(schedulerStateProvider.notifier);
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: TextField(
          controller: notifier.titleController,
          style: const TextStyle(fontSize: 18),
          decoration: const InputDecoration(
              isDense: true,
              contentPadding: EdgeInsets.all(5),
              border: OutlineInputBorder(borderSide: BorderSide.none)),
        ),
      ),
      body: Column(
        children: [
          TableCalendar(
            headerVisible: false,
            calendarFormat: CalendarFormat.week,
            firstDay: DateTime(2022),
            lastDay: DateTime(2030),
            currentDay: notifier.selectedDate,
            onDaySelected: (date, focusDate) {
              notifier.setNewDate(date);
            },
            onPageChanged: (DateTime? dateTime) {
              notifier.setNewDate(dateTime);
            },
            focusedDay: notifier.selectedDate,
          ),
          state.maybeWhen(
              loading: () => const Center(
                    child: CircularProgressIndicator(),
                  ),
              data: (scheduleList) => ScheduleListView(scheduleList),
              error: (err) => Center(
                    child: Text(err),
                  ),
              orElse: () => const SizedBox.shrink())
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _addNewScheduler(),
        child: const Icon(Icons.add),
      ),
    );
  }

  _addNewScheduler() {
    showModalBottomSheet(
        isDismissible: false,
        context: context,
        builder: (context) => AddNewScheduler());
  }
}
