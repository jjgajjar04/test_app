import 'package:flutter/material.dart';
import 'package:test_app/components/card/list_card.dart';
import 'package:test_app/screens/my_drawer.dart';
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
      drawer: MyDrawer(),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ListCard(
              title: Constants.TAB_SCREEN,
              color: Colors.grey,
              onTap: () {
                Navigator.pushNamed(context, Constants.TAB_SCREEN);
              },
            ),
            ListCard(
              title: Constants.CARD_SCREEN,
              color: Colors.black,
              onTap: () {
                Navigator.pushNamed(context, Constants.CARD_SCREEN);
              },
            ),
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
              title: Constants.GRID_SCREEN,
              color: Colors.indigoAccent,
              onTap: () {
                Navigator.pushNamed(context, Constants.GRID_SCREEN);
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
            ListCard(
              title: Constants.BLOC_PATTERN_STATE_SCREEN,
              color: Colors.red,
              onTap: () {
                Navigator.pushNamed(
                  context,
                  Constants.BLOC_PATTERN_STATE_SCREEN,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
