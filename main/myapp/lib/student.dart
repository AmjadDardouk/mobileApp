import 'dart:convert';
// import 'dart:html';
import 'package:http/http.dart' as http;

class Student {
  String baseurl = "http://127.0.0.1:8000/student/";
  Future<List> getALLStudent() async {
    try {
      var response = await http.get(Uri.parse(baseurl));
      if (response.statusCode == 200) {
        return jsonDecode(response.body);
      } else {
        return Future.error('Server Error');
      }
    } catch (e) {
      return Future.error(e);
    }
  }
}
