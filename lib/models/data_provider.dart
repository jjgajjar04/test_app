import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:test_app/models/data.dart';

class DataProvider extends ChangeNotifier {
  Data _data = new Data(title: 'Base title', color: null);

  String? get getTitle => _data.title;

  Color? get getColor => _data.color;

  void changeTitle(String newTitle) {
    _data.setData(newTitle);
    notifyListeners();
  }
}
