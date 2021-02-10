import 'package:flutter/material.dart';
import 'package:test_app/utils/constants.dart';

class AuthScreen extends StatelessWidget {
  static const String id = Constants.AUTH_SCREEN;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AuthScreen.id),
      ),
      body: Column(
        children: [],
      ),
    );
  }
}
