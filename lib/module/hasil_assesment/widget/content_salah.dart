// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kenali_sister/core.dart';

class ContentSalah extends StatefulWidget {
  const ContentSalah({Key? key}) : super(key: key);

  @override
  State<ContentSalah> createState() => _ContentSalahState();
}

class _ContentSalahState extends State<ContentSalah> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          const SizedBox(
            height: 24.0,
          ),
          SvgPicture.asset("assets/illustration/hasil_assesmen_gagal.svg"),
          const SizedBox(
            height: 24.0,
          ),
          Text(
            'Selamat Kamu Berhasil !!!',
            style: myTextTheme.headlineLarge?.copyWith(
              color: primaryColor,
            ),
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
