import 'dart:convert';

import 'package:national_infotech/models/student_info_model.dart';
import 'package:http/http.dart' as http;

class ApiCaller {
  Future<List<StudentInfoModel>> getDataFromApi(String apiName) async {
    List<StudentInfoModel> students = [];
    try {
      var url =
          Uri.parse("https://6264b68894374a2c50691837.mockapi.io/api/$apiName");
      http.Response response = await http.get(url);
      if(response.statusCode == 200) {
        List decodedData = jsonDecode(response.body);
        students = decodedData.map((e) =>StudentInfoModel.fromJson(e)).toList();
        return students;
      }
    } catch (e) {
      print(e);
    }
    return students;
  }
}
