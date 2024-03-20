import 'package:device_info_plus/device_info_plus.dart';
import 'package:permission_handler/permission_handler.dart';

PermissionStatus? statusStorage;
Future<void> requestPermissions() async {
  final plugin = DeviceInfoPlugin();
  final android = await plugin.androidInfo;
  if (statusStorage != PermissionStatus.granted) {
    statusStorage = android.version.sdkInt < 33
        ? await Permission.storage.request()
        : PermissionStatus.granted;
  }
}
