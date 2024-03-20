import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:hive/hive.dart';
import 'package:kenali_sister/core.dart';
import 'package:path_provider/path_provider.dart';

Future initialize() async {
  WidgetsFlutterBinding.ensureInitialized();

  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  if (!kIsWeb) {
    var path = await getTemporaryDirectory();
    Hive.init(path.path);
  }

  mainStorage = await Hive.openBox('mainStorage');
  await DeviceDatabase.load();

  DeviceDatabase.statusSplashScreen =
      mainStorage.get("statusSplashScreen") ?? false;
}
