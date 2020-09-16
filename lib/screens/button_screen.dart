import 'package:flutter/material.dart';
import 'package:test_app/components/button/custom_button.dart';
import 'package:test_app/utils/constants.dart';

class ButtonScreen extends StatelessWidget {
  static const String id = Constants.BUTTON_SCREEN;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Button Screen'),
      ),
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
              ),
              CustomButton(),
            ],
          ),
        ),
      ),
    );
  }
}
