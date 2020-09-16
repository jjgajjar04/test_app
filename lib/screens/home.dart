import 'package:flutter/material.dart';
import 'package:test_app/components/card/list_card.dart';

class Home extends StatelessWidget {
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
              color: Colors.lightBlueAccent,
              onTap: () {
                Navigator.pushNamed(context, '/button');
              },
            ),
            ListCard(
              title: 'card 2',
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
