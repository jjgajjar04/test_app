import 'package:flutter/material.dart';

import '../utils/constants.dart';

class FileManagementScreen extends StatelessWidget {
  static const String id = Constants.FILE_MANAGEMENT_SCRREN;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(id),
      ),
      body: Container(),
    );
  }
}
