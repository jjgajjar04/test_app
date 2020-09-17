import 'package:flutter/material.dart';
import 'package:test_app/components/card/profile_card.dart';
import 'package:test_app/utils/constants.dart';

class CardScreen extends StatelessWidget {
  static const String id = Constants.CARD_SCREEN;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Constants.CARD_SCREEN),
      ),
      body: Container(
        child: ProfileCard(),
      ),
    );
  }
}
