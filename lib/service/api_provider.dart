import 'dart:convert';

import 'package:http/http.dart' as http;

class ApiProvider {
  final BASE_URL = "https://alpha.classaccess.io/api/challenge/v1";

  Future<dynamic> httpGet({required endPoint}) async {
    try {
      var response = await http.get(Uri.parse(BASE_URL + endPoint));
      if (response.statusCode == 200) {
        return jsonDecode(response.body)['data'];
      } else {
        var error = jsonDecode(response.body)['errors'].first.toString();
        throw Exception(error);
      }
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  Future<void> httpPost({required endPoint,required body }) async {
    try {
      var response = await http.post(Uri.parse(BASE_URL + endPoint),body:body );
      if(response.statusCode != 200){
        var error = jsonDecode(response.body)['errors'].first.toString();
        throw Exception(error);
      }
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}
