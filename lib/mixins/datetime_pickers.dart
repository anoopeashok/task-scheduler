import 'package:flutter/material.dart';

mixin DateTimePicker {
  Future<DateTime?> datePicker(context) async {
    final dateTime = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2022, 1),
        lastDate: DateTime(2101));
    return dateTime;
  }

  Future<DateTime?> timePicker(context) async {
    final TimeOfDay? timeOfDay =
        await showTimePicker(context: context, initialTime: TimeOfDay.now());
    var date = DateTime.now();
    if (timeOfDay == null) {
      return null;
    }
    return DateTime(
        date.year, date.month, date.day, timeOfDay.hour, timeOfDay.minute,00);
  }
}
