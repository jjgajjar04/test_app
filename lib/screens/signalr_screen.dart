import 'package:flutter/material.dart';
import 'package:test_app/utils/constants.dart';

import 'package:signalr_core/signalr_core.dart';

class SignalRScreen extends StatefulWidget {
  static const String id = Constants.SIGNAL_R_SCREEN;

  @override
  _SignalRScreenState createState() => _SignalRScreenState();
}

class _SignalRScreenState extends State<SignalRScreen> {
  late String response;

  Future<void> _callSignalR() async {
    print('signalR clicked!');
    // }

    // Future<void> main(List<String> arguments) async {
    final connection = HubConnectionBuilder()
        .withUrl(
            // 'http://localhost:5000/chatHub',
            'https://p4infrdevsignalrwebapp01.azurewebsites.net/serverpush',
            HttpConnectionOptions(
              logging: (level, message) => print(message),
            ))
        .build();

    await connection.start();

    connection.on('FlutterRecMsgFromHub', (message) {
      setState(() {
        response = message.toString();
      });
      print(message.toString());
    });
  }

  @override
  void initState() {
    super.initState();
    response = 'no data';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SignalR'),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Center(
              child: Builder(
                builder: (context) => Text(response),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _callSignalR,
        tooltip: 'call signalR',
        child: Icon(Icons.refresh),
      ),
    );
  }
}
