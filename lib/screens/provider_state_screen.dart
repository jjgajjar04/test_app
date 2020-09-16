import 'package:flutter/material.dart';
import 'package:test_app/utils/constants.dart';

class ProviderStateScreen extends StatelessWidget {
  static const id = Constants.PROVIDER_STATE_SCREEN;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Constants.PROVIDER_STATE_SCREEN),
      ),
    );
  }
}
