import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:test_app/bloc/weather_bloc.dart';
import 'package:test_app/models/data_provider.dart';
import 'package:test_app/my_app_routes.dart';
import 'package:test_app/providers/api_provider.dart';
import 'package:test_app/screens/home.dart';
import 'package:test_app/services/weather_repository.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ApiProvider()),
        ChangeNotifierProvider<DataProvider>(
          create: (context) => DataProvider(),
          child: BlocProvider(
            create: (context) => WeatherBloc(FakeWeatherRepository()),
            child: MaterialApp(debugShowCheckedModeBanner: false,initialRoute: Home.id,routes: kRoutes),
          ),
        ),
      ],
      child: MaterialApp(debugShowCheckedModeBanner: false,initialRoute: Home.id,routes: kRoutes),
    );
  }
}
