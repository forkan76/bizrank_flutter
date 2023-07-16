import 'package:npkbh/models/GetAttendance.dart';
import 'package:http/http.dart' as http;

class RemoteServiceAttendance{
  Future<List<GetAttendance>?> getAttendances() async
  {
    var client = http.Client();

    String serviceUrl = "https://br-isgalleon.com/api/attendance/get_attendance.php";
    var uri = Uri.parse(serviceUrl);
    var response = await client.get(uri);
    if(response.statusCode == 200)
    {
      var json = response.body;
      // print(AttendanceFromJson(json));
      return AttendanceFromJson(json);
    }
  }
}