import 'package:flutter/material.dart';
import 'package:test_app/utils/constants.dart';

class BlocPatternStateScreen extends StatelessWidget {
  static const String id = Constants.BLOC_PATTERN_STATE_SCREEN;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Constants.BLOC_PATTERN_STATE_SCREEN),
      ),
      body: Container(),
    );
  }
}
