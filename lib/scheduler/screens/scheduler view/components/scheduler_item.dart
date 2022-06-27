

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:scheduler/mixins/date_format_mixins.dart';
import '../../../../utils/theme.dart';
import '../../../model/scheduler_model.dart';

class ScheduleItem extends StatelessWidget with DateFormatMixin{
  Schedule schedule;
  bool isLast = false;
  ScheduleItem({required this.schedule, required this.isLast});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                  decoration: BoxDecoration(
                      color: iconBg, borderRadius: BorderRadius.circular(25)),
                  child: const Icon(
                    Icons.calendar_today,
                    color: kPrimaryColor,
                  )),
              if (!isLast)
                Column(
                  children: [Text(':'), Text(':')],
                )
            ],
          ),
          const SizedBox(
            width: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '${convertTo12Hrformat(schedule.startTime)} - ${convertTo12Hrformat(schedule.endTime)}',
                style: const TextStyle(fontSize: 12),
              ),
              const SizedBox(
                height: 4,
              ),
              Text(
                schedule.name,
                style: const TextStyle(fontSize: 16,fontWeight: FontWeight.bold),
              )
            ],
          )
        ],
      ),
    );
  }


}