import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'untitled2_method_channel.dart';

abstract class Untitled2Platform extends PlatformInterface {
  /// Constructs a Untitled2Platform.
  Untitled2Platform() : super(token: _token);

  static final Object _token = Object();

  static Untitled2Platform _instance = MethodChannelUntitled2();

  /// The default instance of [Untitled2Platform] to use.
  ///
  /// Defaults to [MethodChannelUntitled2].
  static Untitled2Platform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [Untitled2Platform] when
  /// they register themselves.
  static set instance(Untitled2Platform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }

  Future<String?> getBrand() {
    throw UnimplementedError('getBrand() has not been implemented.');
  }

  Future<String?> getPhotos() {
    throw UnimplementedError('getPhotos() has not been implemented.');
  }
}