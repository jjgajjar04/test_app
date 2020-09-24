import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:test_app/cubit/weather_cubit.dart';
import 'package:test_app/models/data_provider.dart';
import 'package:test_app/screens/bloc_pattern_state_screen.dart';
import 'package:test_app/screens/button_screen.dart';
import 'package:test_app/screens/card_screen.dart';
import 'package:test_app/screens/home.dart';
import 'package:test_app/screens/list_screen.dart';
import 'package:test_app/screens/multi_widget_state_screen.dart';
import 'package:test_app/screens/provider_state_screen.dart';
import 'package:test_app/screens/row_column_screen.dart';
import 'package:test_app/screens/simple_state_screen.dart';
import 'package:test_app/services/weather_repository.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<DataProvider>(
      create: (context) => DataProvider(),
      child: BlocProvider(
        create: (context) => WeatherCubit(FakeWeatherRepository()),
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          initialRoute: Home.id,
          routes: {
            Home.id: (context) => Home(),
            CardScreen.id: (context) => CardScreen(),
            ButtonScreen.id: (context) => ButtonScreen(),
            ListScreen.id: (context) => ListScreen(),
            RowColumnScreen.id: (context) => RowColumnScreen(),
            SimpleStateScreen.id: (context) =>
                SimpleStateScreen(color: Colors.green),
            MultiWidgetStateScreen.id: (context) => MultiWidgetStateScreen(),
            ProviderStateScreen.id: (context) => ProviderStateScreen(),
            BlocPatternStateScreen.id: (context) => BlocPatternStateScreen()
          },
        ),
      ),
    );
  }
}
