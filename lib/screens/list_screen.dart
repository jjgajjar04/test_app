import 'package:flutter/material.dart';
import 'package:test_app/utils/constants.dart';
import 'package:test_app/components/card/list_tile.dart';

class ListScreen extends StatelessWidget {
  static const String id = Constants.LIST_SCREEN;

  final items = List<String>.generate(10000, (i) => "Item $i");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Constants.LIST_SCREEN),
      ),
      body: Container(
        child: ListView.builder(
            itemCount: items.length,
            itemBuilder: (context, index) {
              return ListTileCard(
                leading: Icon(Icons.person),
                title: items[index],
                tileColor: Colors.redAccent,
                onTap: () {
                  print(items[index]);
                },
              );
            }),
      ),
    );
  }
}
