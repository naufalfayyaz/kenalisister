import 'package:flutter/material.dart';
import 'package:kenali_sister/core.dart';

class FormAssesmentView extends StatefulWidget {
  const FormAssesmentView({Key? key}) : super(key: key);

  Widget build(context, FormAssesmentController controller) {
    controller.view = this;
    return Scaffold(
      backgroundColor: neutralWhite,
      appBar: AppBar(
        backgroundColor: primaryColor,
        iconTheme: const IconThemeData(
          color: neutralWhite,
        ),
        title: Text(
          "Data Diri Kamu",
          style: myTextTheme.titleLarge?.copyWith(color: neutralWhite),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const SizedBox(
              height: 24.0,
            ),
            Image.network(
              "https://images.unsplash.com/flagged/photo-1559502867-c406bd78ff24?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=685&q=80",
              width: 200.0,
              height: 200.0,
              fit: BoxFit.cover,
            ),
            const SizedBox(
              height: 24.0,
            ),
            Container(
              margin: const EdgeInsets.only(),
              child: TextFormField(
                maxLength: 48,
                decoration: InputDecoration(
                  labelText: 'Nama Kamu',
                  labelStyle: myTextTheme.titleMedium?.copyWith(color: gray700),
                  enabledBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: gray700,
                    ),
                  ),
                  hintText: "Masukan nama kamu disini...",
                  hintStyle: myTextTheme.labelLarge?.copyWith(color: gray700),
                  helperText: "Siapa nama kamu ?",
                  helperStyle:
                      myTextTheme.labelMedium?.copyWith(color: gray700),
                ),
                onChanged: (value) {},
              ),
            ),
            const SizedBox(
              height: 24.0,
            ),
            PrimaryButton(
              text: "Simpan",
              onPressed: () {
                Get.to(const AssesmentView());
              },
            ),
          ],
        ),
      ),
    );
  }

  @override
  State<FormAssesmentView> createState() => FormAssesmentController();
}
