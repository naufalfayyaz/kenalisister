// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kenali_sister/core.dart';

class ContentBenar extends StatefulWidget {
  const ContentBenar({Key? key}) : super(key: key);

  @override
  State<ContentBenar> createState() => _ContentBenarState();
}

class _ContentBenarState extends State<ContentBenar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          const SizedBox(
            height: 24.0,
          ),
          SvgPicture.asset(
            "assets/illustration/hasil_assesmen_berhasil.svg",
            height: 250,
          ),
          const SizedBox(
            height: 12.0,
          ),
          Text(
            'Hai Aldy selamat kamu berhasil mendapat :',
            textAlign: TextAlign.center,
            style: myTextTheme.headlineLarge
                ?.copyWith(color: primaryColor, fontSize: 24),
          ),
          const SizedBox(
            height: 12.0,
          ),
          Text(
            '80',
            style: myTextTheme.displayLarge
                ?.copyWith(color: primaryColor, fontSize: 36),
          ),
          const SizedBox(
            height: 24.0,
          ),
          PrimaryButton(
            text: "Simpan",
            onPressed: () {
              Get.offAll(const DaftarAssesmenPembelajaranView());
            },
          ),
        ],
      ),
    );
  }
}
