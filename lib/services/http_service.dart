import 'dart:convert';

import 'package:http/http.dart' as http;

class HttpService {
  Future<http.Response> postCall(Object data, String url) async {
    var response = await http.post(
      Uri.parse(url),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(data),
    );

    return response;
  }

  Future<http.Response> getCall(String url) async {
    print('URL : $url');
    var response = await http.get(Uri.parse(url));
    return response;
  }
}
