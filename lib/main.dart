import 'package:flutter/material.dart';
import 'package:test_app/my_app.dart';
import 'dart:io' show Platform;
import 'package:flutter/foundation.dart';
import 'package:device_preview/device_preview.dart';
import 'package:device_preview/plugins.dart';
import 'package:flutter/cupertino.dart';
import 'dart:io';

import 'package:test_app/service_locator.dart' as di;

void main() {
  di.init();
  // Desktop platforms aren't a valid platform.
  if (!kIsWeb) _setTargetPlatformForDesktop();

  bool preview = false;

  if (!preview)
    return runApp(MyApp());
  else
    return runApp(
      Row(
        textDirection: TextDirection.ltr,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: DevicePreview(
              enabled: true,
              plugins: [
                const ScreenshotPlugin(),
                const FileExplorerPlugin(),
                const SharedPreferencesExplorerPlugin(),
              ],
              builder: (context) => MyApp(),
            ),
          ),
        ],
      ),
    );
}

/// If the current platform is desktop, override the default platform to
/// a supported platform (iOS for macOS, Android for Linux and Windows).
/// Otherwise, do nothing.
void _setTargetPlatformForDesktop() {
  TargetPlatform? targetPlatform;
  if (Platform.isMacOS) {
    targetPlatform = TargetPlatform.iOS;
  } else if (Platform.isLinux || Platform.isWindows) {
    targetPlatform = TargetPlatform.android;
  }
  if (targetPlatform != null) {
    debugDefaultTargetPlatformOverride = targetPlatform;
  }
}
