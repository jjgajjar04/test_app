import 'package:flutter/material.dart';

class ButtonScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RaisedButton(
                onPressed: () {},
                child: Text('Raised Button'),
                color: Colors.blue,
                textColor: Colors.white,
              ),
              FlatButton(
                color: Colors.blue,
                textColor: Colors.white,
                onPressed: () {},
                child: Text("Flat Button"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
