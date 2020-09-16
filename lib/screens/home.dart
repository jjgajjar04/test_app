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
              title: 'card 1',
              color: Colors.purple,
              onTap: () {
                Navigator.pushNamed(context, Constants.BUTTON_SCREEN);
              },
            ),
            ListCard(
              title: 'card 2',
              color: Colors.indigo,
              onTap: () {
                Navigator.pushNamed(context, Constants.LIST_SCREEN);
              },
            ),
            ListCard(
              title: 'card 3',
            ),
            ListCard(
              title: 'card 4',
            ),
            ListCard(
              title: 'card 5',
            ),
            ListCard(
              title: 'card 6',
            ),
          ],
        ),
      ),
    );
  }
}
