import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kenali_sister/core.dart';

class LayerPelajarContent extends StatefulWidget {
  const LayerPelajarContent({super.key});

  @override
  State<LayerPelajarContent> createState() => _LayerPelajarContentState();
}

class _LayerPelajarContentState extends State<LayerPelajarContent> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Spacer(),
          SvgPicture.asset('assets/illustration/pelajar_pancasila.svg',
              height: 250),
          const Spacer(),
          Text(
            "Jadilah Pelajar Pancasila",
            textAlign: TextAlign.center,
            style: myTextTheme.titleLarge?.copyWith(color: neutralWhite),
          ),
          const SizedBox(
            height: 16.0,
          ),
          Text(
            "Marilah kita menjadi pelajar Pancasila yang memiliki nilai-nilai kepancasilaan. Dan wujudkan nilai-nilai luhur Pancasila dalam kehidupan sehari-hari!",
            textAlign: TextAlign.center,
            style: myTextTheme.titleMedium?.copyWith(color: neutralWhite),
          ),
          const SizedBox(
            height: 32.0,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 8.0,
                backgroundColor: neutralWhite,
              ),
              SizedBox(
                width: 8.0,
              ),
              CircleAvatar(
                radius: 8.0,
                backgroundColor: neutralWhite,
              ),
              SizedBox(
                width: 8.0,
              ),
              CircleAvatar(radius: 8.0, backgroundColor: neutralWhite),
            ],
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
