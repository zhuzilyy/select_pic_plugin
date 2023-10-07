import 'package:flutter_test/flutter_test.dart';
import 'package:untitled2/untitled2.dart';
import 'package:untitled2/untitled2_platform_interface.dart';
import 'package:untitled2/untitled2_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockUntitled2Platform
    with MockPlatformInterfaceMixin
    implements Untitled2Platform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final Untitled2Platform initialPlatform = Untitled2Platform.instance;

  test('$MethodChannelUntitled2 is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelUntitled2>());
  });

  test('getPlatformVersion', () async {
    Untitled2 untitled2Plugin = Untitled2();
    MockUntitled2Platform fakePlatform = MockUntitled2Platform();
    Untitled2Platform.instance = fakePlatform;

    expect(await untitled2Plugin.getPlatformVersion(), '42');
  });
}
