
import 'untitled2_platform_interface.dart';

class Untitled2 {
  Future<String?> getPlatformVersion() {
    return Untitled2Platform.instance.getPlatformVersion();
  }
  Future<String?> getBrand() {
    return Untitled2Platform.instance.getBrand();
  }
  Future<String?> getPhotos() {
    return Untitled2Platform.instance.getPhotos();
  }
}
