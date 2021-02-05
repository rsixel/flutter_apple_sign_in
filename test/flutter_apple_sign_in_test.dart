import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_apple_sign_in/flutter_apple_sign_in.dart';

void main() {
  const MethodChannel channel = MethodChannel('flutter_apple_sign_in');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await FlutterAppleSignIn.platformVersion, '42');
  });
}
