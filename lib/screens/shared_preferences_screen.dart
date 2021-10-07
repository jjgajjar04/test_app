import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:math';

import 'package:test_app/utils/constants.dart';

class SharedPreferencesScreen extends StatefulWidget {
  static const String id = Constants.SHARED_PREFERENCES_SCREEN;

  @override
  _SharedPreferencesScreenState createState() =>
      _SharedPreferencesScreenState();
}

class _SharedPreferencesScreenState extends State<SharedPreferencesScreen> {
  Future<SharedPreferences> _pref = SharedPreferences.getInstance();
  Future<int>? _hexCode;

  Future<void> _changeColor() async {
    print('button clicked !!');
    final SharedPreferences preferences = await _pref;
    var random = new Random();
    var colorCode = random.nextInt(1000000);
    print('x : $colorCode');
    print(preferences.getInt('color') is int);
    final int hexCode = (preferences.getInt('color') ?? colorCode);
    setState(() {
      _hexCode = preferences.setInt('color', hexCode).then((value) => hexCode);
    });
  }

  Future<void> _clearPreferences() async {
    final SharedPreferences preferences = await _pref;
    await preferences.clear();
  }

  @override
  void initState() {
    super.initState();
    _hexCode = _pref.then((p) => p.getInt('color') ?? 0xff00ff00);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(SharedPreferencesScreen.id)),
      body: Center(
        child: FutureBuilder<int>(
          future: _hexCode,
          builder: (BuildContext context, AsyncSnapshot<int> snapshot) {
            switch (snapshot.connectionState) {
              case ConnectionState.waiting:
                return CircularProgressIndicator();
              default:
                if (snapshot.hasError) {
                  return Text('Error: ${snapshot.error}');
                } else {
                  return Container(
                    height: double.infinity,
                    width: double.infinity,
                    child: FlatButton(
                      child: Text('${snapshot.data}'),
                      onPressed: _changeColor,
                    ),
                    color: Color(4294000000 + snapshot.data!),
                  );
                }
            }
          },
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            heroTag: 'a',
            onPressed: _changeColor,
            child: Icon(Icons.refresh),
          ),
          FloatingActionButton(
            heroTag: 'b',
            onPressed: _clearPreferences,
            child: Icon(Icons.clear_all),
          ),
        ],
      ),
    );
  }
}
