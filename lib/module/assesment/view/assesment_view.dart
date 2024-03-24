import 'package:flutter/material.dart';
import 'package:kenali_sister/core.dart';

class AssesmentView extends StatefulWidget {
  const AssesmentView({super.key});

  Widget build(context, AssesmentController controller) {
    controller.view = this;
    return Scaffold(
      backgroundColor: neutralWhite,
      appBar: AppBar(
        backgroundColor: primaryColor,
        iconTheme: const IconThemeData(
          color: neutralWhite,
        ),
        title: Text(
          "Assesment Komputer",
          style: myTextTheme.titleLarge?.copyWith(color: neutralWhite),
        ),
      ),
      body: Container(padding: const EdgeInsets.all(16.0), child: SizedBox()),
    );
  }

  @override
  State<AssesmentView> createState() => AssesmentController();
}
