import 'package:flutter/material.dart';

import '../models/GetAttendance.dart';
import '../services/remote_service_attendance.dart';

class AttendancePage extends StatefulWidget {
  const AttendancePage({super.key});

  @override
  State<AttendancePage> createState() => _AttendancePageState();
}

class _AttendancePageState extends State<AttendancePage> {
  List<GetAttendance>? getAttendances;
  var isLoaded = false;


  getData() async{
    getAttendances = (await RemoteServiceAttendance().getAttendances())!;
    if(getAttendances != null){
      setState(() {
        isLoaded = true;
      });
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Attendance')),
      body: SizedBox(
        width: 200,
        height: 300,
        child: Text(getAttendances.toString()),
      ),
    );
  }
}
