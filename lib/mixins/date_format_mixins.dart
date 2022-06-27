import 'package:intl/intl.dart';

mixin DateFormatMixin {
  String dateFormatToString(date) {
    if (date == null) {
      return '';
    }
    return DateFormat('dd/MM/yyyy').format(date);
  }

  String timeFormatToString(time) {
    if (time == null) {
      return '';
    }
    return DateFormat('HH:mm:ss').format(time);
  }

  String monthandYear(date){
       if (date == null) {
      return '';
    } 
     return DateFormat('MMMM yyyy').format(date);
  }

  DateTime timeStringToDate(String date, String time) {
    date = date.substring(4) + "/" + date;
    return DateTime.parse(date.substring(0, 10) + " " + time);
  }

  String convertTo12Hrformat(String time) {

    return DateFormat('hh:mm a').format(DateTime.parse("2022-06-27 " + time));
  }
}
