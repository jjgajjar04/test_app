import 'package:flutter/material.dart';
import 'package:test_app/components/card/profile_card.dart';
import 'package:test_app/models/user_list.dart';
import 'package:test_app/utils/constants.dart';

class CardScreen extends StatelessWidget {
  static const String id = Constants.CARD_SCREEN;

  final UserList userList = new UserList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Constants.CARD_SCREEN),
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: userList.getUserList
              .map(
                (user) => ProfileCard(user: user),
              )
              .toList(),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {},
      ),
    );
  }
}
