import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ios_launcher_swift/ios_launcher_swift.dart';

void main() {
  const MethodChannel channel = MethodChannel('ios_url_launcher');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return "iOS Launch Success";
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('launch url', () async {
    expect(
        await IosLauncherSwift.launchUrl(
            "https://firebase.google.com/docs/ios/installation-methods?authuser=0&hl=en#cocoapods"),
        "iOS Launch Success");
  });
}
