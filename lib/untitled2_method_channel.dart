import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'untitled2_platform_interface.dart';

/// An implementation of [Untitled2Platform] that uses method channels.
class MethodChannelUntitled2 extends Untitled2Platform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('untitled2');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
  @override
  Future<String?> getBrand() async {
    final brand = await methodChannel.invokeMethod<String>('getBrand');
    return brand;
  }
  @override
  Future<String?> getPhotos() async {
    final photos = await methodChannel.invokeMethod<String>('getPhotos');
    return photos;
  }
}