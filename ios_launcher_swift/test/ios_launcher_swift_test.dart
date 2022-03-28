import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ios_launcher_swift/ios_launcher_swift.dart';

void main() {
  const MethodChannel channel = MethodChannel('ios_launcher_swift');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  // test('getPlatformVersion', () async {
  //   expect(await IosLauncherSwift.platformVersion, '42');
  // });
}
