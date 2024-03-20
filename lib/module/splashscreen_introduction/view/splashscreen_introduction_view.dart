import 'package:flutter/material.dart';
import 'package:kenali_sister/core.dart';

class SplashscreenIntroductionView extends StatefulWidget {
  const SplashscreenIntroductionView({super.key});

  Widget build(context, SplashscreenIntroductionController controller) {
    controller.view = this;
    return Scaffold(
      backgroundColor: primaryColor,
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: secondaryColor,
        label: Text(
          "Lewati",
          style: myTextTheme.titleMedium?.copyWith(color: neutralWhite),
        ),
        onPressed: () {
          DeviceDatabase.save(true);
          Get.offAll(const BerandaView());
        },
      ),
      body: PageView.builder(
        scrollDirection: Axis.horizontal,
        controller: controller.pageController,
        onPageChanged: controller.onPageChanged,
        itemCount: 3,
        itemBuilder: (ctx, i) {
          switch (i) {
            case 0:
              return const LayerTujuanContent();
            case 1:
              return const LayerBerdoaContent();
            case 2:
              return const LayerPelajarContent();
            default:
              return Container();
          }
        },
      ),
    );
  }

  @override
  State<SplashscreenIntroductionView> createState() =>
      SplashscreenIntroductionController();
}
