import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:kenali_sister/core.dart';

class SplashscreenView extends StatefulWidget {
  const SplashscreenView({super.key});

  Widget build(context, SplashscreenController controller) {
    controller.view = this;
    Future.delayed(const Duration(seconds: 2), () async {
      mainStorage = await Hive.openBox('mainStorage');

      DeviceDatabase.statusSplashScreen =
          mainStorage.get("statusSplashScreen") ?? false;
      if (DeviceDatabase.statusSplashScreen == false) {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
              builder: (context) => const SplashscreenIntroductionView()),
        );
      } else {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => const BerandaView()),
        );
      }
    });
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/uny.png",
              width: 150,
              height: 150,
            ),
            const SizedBox(
              height: 40.0,
            ),
            Image.asset(
              "assets/images/logo.png",
            ),
            const SizedBox(
              height: 16.0,
            ),
            Text(
              "Sistem Komputer diujung jari, mudah dimengerti",
              textAlign: TextAlign.center,
              style: myTextTheme.titleLarge,
            ),
          ],
        ),
      ),
    );
  }

  @override
  State<SplashscreenView> createState() => SplashscreenController();
}
