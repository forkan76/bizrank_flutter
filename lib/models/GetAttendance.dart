// To parse this JSON data, do
//
//     final getAttendance = getAttendanceFromJson(jsonString);

import 'dart:convert';

List<GetAttendance> getAttendanceFromJson(String str) => List<GetAttendance>.from(json.decode(str).map((x) => GetAttendance.fromJson(x)));

String getAttendanceToJson(List<GetAttendance> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class GetAttendance {
  String attendanceId;
  DateTime attendanceDate;
  String employeeId;
  String employeeTypeId;
  String employeePositionId;
  String attendanceStatusId;
  String inTime;
  String inTimeLat;
  String inTimeLon;
  String inTimeAccuracy;
  String inTimePictureName;
  String inRemark;
  dynamic outTime;
  dynamic outTimeLat;
  dynamic outTimeLon;
  dynamic outTimeAccuracy;
  dynamic outTimePictureName;
  dynamic outRemark;
  String createdBy;
  String updatedBy;
  dynamic createDate;
  dynamic updateDate;
  String officeId;
  String departmentId;
  String designationId;
  String attendanceStatusName;
  String employeeName;

  GetAttendance({
    required this.attendanceId,
    required this.attendanceDate,
    required this.employeeId,
    required this.employeeTypeId,
    required this.employeePositionId,
    required this.attendanceStatusId,
    required this.inTime,
    required this.inTimeLat,
    required this.inTimeLon,
    required this.inTimeAccuracy,
    required this.inTimePictureName,
    required this.inRemark,
    this.outTime,
    this.outTimeLat,
    this.outTimeLon,
    this.outTimeAccuracy,
    this.outTimePictureName,
    this.outRemark,
    required this.createdBy,
    required this.updatedBy,
    this.createDate,
    this.updateDate,
    required this.officeId,
    required this.departmentId,
    required this.designationId,
    required this.attendanceStatusName,
    required this.employeeName,
  });

  factory GetAttendance.fromJson(Map<String, dynamic> json) => GetAttendance(
    attendanceId: json["attendance_id"],
    attendanceDate: DateTime.parse(json["attendance_date"]),
    employeeId: json["employee_id"],
    employeeTypeId: json["employee_type_id"],
    employeePositionId: json["employee_position_id"],
    attendanceStatusId: json["attendance_status_id"],
    inTime: json["in_time"],
    inTimeLat: json["in_time_lat"],
    inTimeLon: json["in_time_lon"],
    inTimeAccuracy: json["in_time_accuracy"],
    inTimePictureName: json["in_time_picture_name"],
    inRemark: json["in_remark"],
    outTime: json["out_time"],
    outTimeLat: json["out_time_lat"],
    outTimeLon: json["out_time_lon"],
    outTimeAccuracy: json["out_time_accuracy"],
    outTimePictureName: json["out_time_picture_name"],
    outRemark: json["out_remark"],
    createdBy: json["created_by"],
    updatedBy: json["updated_by"],
    createDate: json["create_date"],
    updateDate: json["update_date"],
    officeId: json["office_id"],
    departmentId: json["department_id"],
    designationId: json["designation_id"],
    attendanceStatusName: json["attendance_status_name"],
    employeeName: json["employee_name"],
  );

  Map<String, dynamic> toJson() => {
    "attendance_id": attendanceId,
    "attendance_date": "${attendanceDate.year.toString().padLeft(4, '0')}-${attendanceDate.month.toString().padLeft(2, '0')}-${attendanceDate.day.toString().padLeft(2, '0')}",
    "employee_id": employeeId,
    "employee_type_id": employeeTypeId,
    "employee_position_id": employeePositionId,
    "attendance_status_id": attendanceStatusId,
    "in_time": inTime,
    "in_time_lat": inTimeLat,
    "in_time_lon": inTimeLon,
    "in_time_accuracy": inTimeAccuracy,
    "in_time_picture_name": inTimePictureName,
    "in_remark": inRemark,
    "out_time": outTime,
    "out_time_lat": outTimeLat,
    "out_time_lon": outTimeLon,
    "out_time_accuracy": outTimeAccuracy,
    "out_time_picture_name": outTimePictureName,
    "out_remark": outRemark,
    "created_by": createdBy,
    "updated_by": updatedBy,
    "create_date": createDate,
    "update_date": updateDate,
    "office_id": officeId,
    "department_id": departmentId,
    "designation_id": designationId,
    "attendance_status_name": attendanceStatusName,
    "employee_name": employeeName,
  };
}
