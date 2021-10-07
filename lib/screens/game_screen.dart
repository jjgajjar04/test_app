import 'package:flutter/material.dart';
import 'package:test_app/providers/api_provider.dart';
import 'package:test_app/utils/constants.dart';

import '../service_locator.dart';

class GameScreen extends StatelessWidget {
  static const String id = Constants.GAME_SCREEN;

  final ApiProvider? _provider = getIt<ApiProvider>();

  void loadData() async {
    await _provider!.getAPI_1();
  }

  @override
  Widget build(BuildContext context) {
    loadData();

    return Scaffold(
      appBar: AppBar(),
      body: Container(
        width: double.infinity,
        child: Column(
          children: _provider!.listData
              .map(
                (e) => Card(
                  child: Container(
                    padding: EdgeInsets.all(20),
                    width: double.infinity,
                    height: 240,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Align(
                          alignment: Alignment.topCenter,
                          child: Text(
                            e.nation!,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 32,
                            ),
                          ),
                        ),
                        Text(e.gameType!),
                        Text(e.marketId!),
                        Text(e.max!),
                        Text(e.min!),
                        Text(e.remark!),
                        Text(e.sectionId!),
                        Text(e.b1.toString()),
                      ],
                    ),
                  ),
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
