import 'package:flutter/material.dart';
import 'package:test_app/utils/constants.dart';

class SignalRScreen extends StatelessWidget {
  static const String id = Constants.SIGNAL_R_SCREEN;

  @override
  Widget build(BuildContext context) {
    void _callSignalR() {}
    return Scaffold(
      appBar: AppBar(
        title: Text(SignalRScreen.id),
      ),
      body: Container(
        child: Center(
          child: FlatButton(
            child: Text('Call SignalR'),
            onPressed: () => _callSignalR,
          ),
        ),
      ),
    );
  }
}
