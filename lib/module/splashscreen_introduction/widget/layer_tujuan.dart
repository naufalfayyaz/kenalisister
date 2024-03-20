import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kenali_sister/core.dart';

class LayerTujuanContent extends StatefulWidget {
  const LayerTujuanContent({super.key});

  @override
  State<LayerTujuanContent> createState() => _LayerTujuanContentState();
}

class _LayerTujuanContentState extends State<LayerTujuanContent> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Spacer(),
          SvgPicture.asset(
            'assets/illustration/computer.svg',
            height: 200,
          ),
          const Spacer(),
          Text(
            "Tujuan Kenali Sister",
            textAlign: TextAlign.center,
            style: myTextTheme.titleLarge?.copyWith(color: neutralWhite),
          ),
          const SizedBox(
            height: 16.0,
          ),
          Text(
            "Kenali Sister menyediakan pemahaman komprehensif terhadap sistem komputer  dan proses instalasi sistem operasi.",
            textAlign: TextAlign.center,
            style: myTextTheme.titleMedium?.copyWith(color: neutralWhite),
          ),
          const SizedBox(
            height: 32.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircleAvatar(
                radius: 8.0,
                backgroundColor: neutralWhite,
              ),
              const SizedBox(
                width: 8.0,
              ),
              CircleAvatar(
                radius: 8.0,
                backgroundColor: neutralWhite.withOpacity(0.5),
              ),
              const SizedBox(
                width: 8.0,
              ),
              CircleAvatar(
                radius: 8.0,
                backgroundColor: neutralWhite.withOpacity(0.5),
              ),
            ],
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
