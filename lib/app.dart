import 'package:flutter/material.dart';
import 'package:test_app/screens/home.dart';
import 'package:test_app/screens/button_screen.dart';
import 'package:test_app/screens/list_screen.dart';
import 'package:test_app/screens/multi_widget_state_screen.dart';
import 'package:test_app/screens/provider_state_screen.dart';
import 'package:test_app/screens/row_column_screen.dart';
import 'package:test_app/screens/simple_state_screen.dart';

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
        RowColumnScreen.id: (context) => RowColumnScreen(),
        SimpleStateScreen.id: (context) =>
            SimpleStateScreen(color: Colors.green),
        MultiWidgetStateScreen.id: (context) => MultiWidgetStateScreen(),
        ProviderStateScreen.id: (context) => ProviderStateScreen()
      },
    );
  }
}
