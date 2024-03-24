import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kenali_sister/core.dart';

Future showDialogSalah() async {
  await showDialog<void>(
    context: globalContext,
    barrierDismissible: false,
    builder: (BuildContext context) {
      return Focus(
        autofocus: true,
        child: AlertDialog(
          contentPadding: EdgeInsets.zero,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.0),
          ),
          content: ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: 450,
            ),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(
                    height: 16.0,
                  ),
                  Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 24.0,
                      ),
                      child: SvgPicture.asset(
                        "assets/illustration/salah.svg",
                        height: 200,
                        width: 200,
                      )),
                  const SizedBox(
                    height: 8.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 24.0,
                    ),
                    child: Text(
                      'Jawaban Kamu Salah !!!',
                      style: myTextTheme.headlineLarge?.copyWith(
                        color: red600,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Container(
                    padding: const EdgeInsets.all(16),
                    decoration: const BoxDecoration(
                        color: gray50,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(
                            8,
                          ),
                          bottomRight: Radius.circular(
                            8,
                          ),
                        )),
                    child: SecondaryButton(
                      onPressed: () {
                        // Get.back();
                        Get.offAll(HasilAssesmentView());
                      },
                      text: "Lanjutkan",
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    },
  );
}
