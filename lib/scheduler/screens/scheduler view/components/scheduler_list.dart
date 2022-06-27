import 'package:flutter/material.dart';

import '../../../../utils/theme.dart';
import '../../../model/scheduler_model.dart';
import 'scheduler_item.dart';

class ScheduleListView extends StatelessWidget {
  List<Schedule> scheduleList;
  ScheduleListView(this.scheduleList);
  @override
  Widget build(BuildContext context) {
    return Expanded(

      child: Container(
        margin: const EdgeInsets.all(15),
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: scheduleListBackground,
        ),
        child: ListView.builder(
            itemCount: scheduleList.length,
            itemBuilder: (context, index) {
              if (index == scheduleList.length-1) {
                return ScheduleItem(
                    schedule: scheduleList[index], isLast: true);
              } else {
                return ScheduleItem(
                  schedule: scheduleList[index],
                  isLast: false,
                );
              }
            }),
      ),
    );
  }
}