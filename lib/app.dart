import 'package:flutter/material.dart';
import 'package:test_app/screens/home.dart';
import 'package:test_app/screens/button_screen.dart';
import 'package:test_app/screens/list_screen.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Home.id,
      routes: {
        Home.id: (context) => Home(),
        ButtonScreen.id: (context) => ButtonScreen(),
        ListScreen.id: (context) => ListScreen(),
      },
    );
  }
}
