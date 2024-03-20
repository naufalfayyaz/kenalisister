
import 'package:flutter/material.dart';
import 'package:kenali_sister/core.dart';
import '../controller/assesment_controller.dart';

class AssesmentView extends StatefulWidget {
  const AssesmentView({Key? key}) : super(key: key);

  Widget build(context, AssesmentController controller) {
  controller.view = this;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Assesment"),
        actions: const [],
        ),
        body: SingleChildScrollView(
        child: Container(
            padding: const EdgeInsets.all(10.0),
            child: Column(
            children: const [],
            ),
        ),
      ),
    );
  }

  @override
  State<AssesmentView> createState() => AssesmentController();
}
    