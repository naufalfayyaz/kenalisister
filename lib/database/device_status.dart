import 'package:kenali_sister/core.dart';

class DeviceDatabase {
  static bool? statusSplashScreen = false;
  static bool? statusPermission = false;

  static load() async {
    statusSplashScreen = mainStorage.get("statusSplashScreen");
  }

  static save(bool statusSplashScreen) async {
    mainStorage.put("statusSplashScreen", statusSplashScreen);
    DeviceDatabase.statusSplashScreen = statusSplashScreen;
  }
}
