import 'dart:async';

import 'package:flutter/services.dart';

class IosLauncherSwift {
  static const MethodChannel _channelLauncher =
      MethodChannel('ios_url_launcher');

  static Future<void> launchUrl(String url) async {
    await _channelLauncher.invokeMethod('launchUrl', url);
  }
}
