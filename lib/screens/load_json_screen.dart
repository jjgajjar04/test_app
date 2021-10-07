import 'package:flutter/material.dart';
import 'package:test_app/utils/constants.dart';
import 'dart:convert';

class LoadJsonScreen extends StatelessWidget {
  static const String id = Constants.LOAD_JSON_SCREEN;
  final List data = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Constants.LOAD_JSON_SCREEN),
      ),
      body: Container(
        child: Center(
          child: FutureBuilder(
            future: DefaultAssetBundle.of(context).loadString('users.json'),
            builder: (context, snapshot) {
              var mydata = jsonDecode(snapshot.data.toString());
              print('json data : $mydata');
              return ListView.builder(
                itemCount: mydata == null ? 0 : mydata.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: Column(
                      children: [Text(mydata[index]['name'])],
                    ),
                  );
                },
              );
            },
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.refresh),
      ),
    );
  }
}
