import 'package:flutter/material.dart';
import 'package:kenali_sister/core.dart';
import 'package:kenali_sister/module/hasil_assesment/widget/content_benar.dart';

class HasilAssesmentView extends StatefulWidget {
  const HasilAssesmentView({super.key});

  Widget build(context, HasilAssesmentController controller) {
    controller.view = this;

    return Scaffold(
        backgroundColor: neutralWhite,
        appBar: AppBar(
          backgroundColor: primaryColor,
          iconTheme: const IconThemeData(
            color: neutralWhite,
          ),
          leading: BackButton(
            onPressed: () {
              Get.offAll(const DaftarAssesmenPembelajaranView());
            },
          ),
          title: Text(
            "Hasil Assesmen Komputer",
            style: myTextTheme.titleLarge?.copyWith(color: neutralWhite),
          ),
        ),
        // body: ContentSalah()
        body: const ContentBenar());
  }

  @override
  State<HasilAssesmentView> createState() => HasilAssesmentController();
}
