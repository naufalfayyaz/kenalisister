import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kenali_sister/core.dart';

class LayerBerdoaContent extends StatefulWidget {
  const LayerBerdoaContent({super.key});

  @override
  State<LayerBerdoaContent> createState() => _LayerBerdoaContentState();
}

class _LayerBerdoaContentState extends State<LayerBerdoaContent> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Spacer(),
          SvgPicture.asset('assets/illustration/berdoa.svg', height: 200),
          const Spacer(),
          Text(
            "Berdoa Sebelum Belajar",
            textAlign: TextAlign.center,
            style: myTextTheme.titleLarge?.copyWith(color: neutralWhite),
          ),
          const SizedBox(
            height: 16.0,
          ),
          Text(
            "Mari kita bersama-sama mengawali dengan doa, memohon petunjuk dan keberkahan agar kita dapat memahami dengan baik dan meraih keberhasilan.",
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
              const CircleAvatar(radius: 8.0, backgroundColor: neutralWhite),
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
