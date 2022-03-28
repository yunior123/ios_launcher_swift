import 'dart:async';

import 'package:flutter/services.dart';

class IosLauncherSwift {
  static const MethodChannel _channelLauncher =
      MethodChannel('ios_url_launcher');

  static Future<String?> launchUrl(String url) async {
    final result = await _channelLauncher.invokeMethod('launchUrl', url);
    return result;
  }
}
