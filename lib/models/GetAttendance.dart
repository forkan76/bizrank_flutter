// To parse this JSON data, do
//
//     final post = postFromJson(jsonString);

import 'dart:convert';

List<GetAttendance> AttendanceFromJson(String str) => List<GetAttendance>.from(json.decode(str).map((x) => GetAttendance.fromJson(x)));

String AttendanceToJson(List<GetAttendance> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class GetAttendance {
  int userId;
  int attendanceId;
  String title;
  String? body;

  GetAttendance({
    required this.userId,
    required this.attendanceId,
    required this.title,
    this.body,
  });

  factory GetAttendance.fromJson(Map<String, dynamic> json) => GetAttendance(
    userId: json["userId"],
    attendanceId: json["attendanceId"],
    title: json["title"],
    body: json["body"],
  );

  Map<String, dynamic> toJson() => {
    "userId": userId,
    "attendanceId": attendanceId,
    "title": title,
    "body": body,
  };
}
