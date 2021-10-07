import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_app/components/card/level1.dart';
import 'package:test_app/models/data_provider.dart';
import 'package:test_app/utils/constants.dart';
import 'package:english_words/english_words.dart';

class ProviderStateScreen extends StatelessWidget {
  static const id = Constants.PROVIDER_STATE_SCREEN;
  final String title = 'level 1';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Constants.PROVIDER_STATE_SCREEN),
      ),
      body: Center(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Level1(title: title),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          String title = nouns.take(1).first.toString();
          Provider.of<DataProvider>(context, listen: false).changeTitle(title);
        },
      ),
    );
  }
}
