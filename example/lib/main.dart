import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter/services.dart';
import 'package:ios_launcher_swift/ios_launcher_swift.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Center(
          child: TextButton(
            child: const Text("Launch Url"),
            onPressed: () async {
              try {
                await IosLauncherSwift.launchUrl(
                    "https://docs.swift.org/swift-book/LanguageGuide/TypeCasting.html");
              } on PlatformException {
                print('Failed to launch url.');
              }
            },
          ),
        ),
      ),
    );
  }
}
