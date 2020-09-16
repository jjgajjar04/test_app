import 'package:flutter/material.dart';
import 'package:test_app/components/card/list_card.dart';
import 'package:test_app/utils/constants.dart';

class Home extends StatelessWidget {
  static const String id = Constants.HOME_SCRREN;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Test App'),
        actions: [Icon(Icons.more_vert)],
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ListCard(
              title: Constants.BUTTON_SCREEN,
              color: Colors.purple,
              onTap: () {
                Navigator.pushNamed(context, Constants.BUTTON_SCREEN);
              },
            ),
            ListCard(
              title: Constants.LIST_SCREEN,
              color: Colors.indigo,
              onTap: () {
                Navigator.pushNamed(context, Constants.LIST_SCREEN);
              },
            ),
            ListCard(
              title: Constants.ROW_COLUMN_SCREEN,
              color: Colors.blue,
              onTap: () {
                Navigator.pushNamed(context, Constants.ROW_COLUMN_SCREEN);
              },
            ),
            ListCard(
              title: Constants.SIMPLE_STATE_SCREEN,
              color: Colors.green,
              onTap: () {
                Navigator.pushNamed(
                  context,
                  Constants.SIMPLE_STATE_SCREEN,
                );
              },
            ),
            ListCard(
              title: Constants.MULTI_WIDGET_STATE_SCREEN,
              color: Colors.yellow,
              onTap: () {
                Navigator.pushNamed(
                  context,
                  Constants.MULTI_WIDGET_STATE_SCREEN,
                );
              },
            ),
            ListCard(
              title: Constants.PROVIDER_STATE_SCREEN,
              color: Colors.orange,
              onTap: () {
                Navigator.pushNamed(
                  context,
                  Constants.PROVIDER_STATE_SCREEN,
                );
              },
            ),
            ListCard(title: 'card 6', color: Colors.red),
          ],
        ),
      ),
    );
  }
}
