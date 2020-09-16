import 'package:flutter/foundation.dart';
import 'package:test_app/models/data.dart';

class DataProvider extends ChangeNotifier {
  Data _data = new Data(title: 'Base title');

  String get getTitle => _data.title;

  void changeTitle(String newTitle) {
    _data.setData(newTitle);
    notifyListeners();
  }
}
