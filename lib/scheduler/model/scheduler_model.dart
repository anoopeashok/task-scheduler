class Schedule {
  String name, startTime, endTime, date;

  Schedule(
      {required this.name,
      required this.date,
      required this.startTime,
      required this.endTime});

  factory Schedule.fromJson(Map<String, dynamic> json) {
    return Schedule(
        name: json['name'],
        date: json['date'],
        startTime: json['startTime'],
        endTime: json['endTime']);
  }

  Map<String, dynamic> toJson() {
    return {
      "name":name,
      "date":date,
      "startTime":startTime,
      "endTime":endTime
    };
  }
}
