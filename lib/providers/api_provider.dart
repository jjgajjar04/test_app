import 'package:flutter/material.dart';
import 'package:test_app/models/api_response.dart';
import 'package:test_app/models/game_model.dart';
import 'package:test_app/services/api.dart';
import 'dart:convert';

import 'package:test_app/utils/enum.dart';

class ApiProvider with ChangeNotifier {
  Api _api = new Api();
  ApiState _apiState = ApiState.initial;
  PageState _pageState = PageState.initial;
  List<GameModel> _list = List.empty();
  ApiState get apiState => _apiState;
  PageState get pageState => _pageState;
  List<GameModel> get listData => _list;

  //! Change state of API
  void updateState(ApiState state) {
    this._apiState = state;
    notifyListeners();
  }

  void updatePageState(PageState state) {
    this._pageState = state;
    notifyListeners();
  }

  //! initial data
  Future<ApiResponse?> getAPI_1() async {
    var response;

    try {
      updateState(ApiState.loading);
      updatePageState(PageState.loading);
      response = await _api.getAPI_1();

      if (response.success) {
        // var lists = response.data;
        print('test');
        print(response.data["bf"]);
        // Iterable itr = json.decode(response.data["bf"]);
        Iterable itr = response.data["bf"];

        _list =
            List<GameModel>.of((itr).map((model) => GameModel.fromMap(model)));
        // _list = response.data;
        print('PROVIDER : success');
        return response;
      }
      notifyListeners();
    } catch (e) {
      print('exception : $e');
      updateState(ApiState.error);
      updatePageState(PageState.error);
      return response;
    }
    return response;
  }
}
