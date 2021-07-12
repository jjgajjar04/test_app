import 'dart:convert';

import 'package:test_app/config/config.dart';
import 'package:test_app/models/api_response.dart';

import 'http_service.dart';

class Api {
  HttpService _service = new HttpService();

  Future<ApiResponse> getAPI_1() async {
    var response;
    Map<String, dynamic> map = {};

    try {
      var url = kBaseUrl + 'getdata/odtp';

      response = await _service.getCall(url);

      if (response.statusCode == 200) {
        return ApiResponse.fromMap(json.decode(response.body));
      }
    } catch (e) {}
    return ApiResponse.fromMap(map);
  }
}
