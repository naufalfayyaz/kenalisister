import 'package:flutter/material.dart';
import 'package:kenali_sister/core.dart';
import 'package:kenali_sister/shared/theme/theme_config.dart';
import 'package:kenali_sister/shared/widget/text/column_text.dart';
import '../controller/tentang_aplikasi_controller.dart';

class TentangAplikasiView extends StatefulWidget {
  const TentangAplikasiView({Key? key}) : super(key: key);

  Widget build(context, TentangAplikasiController controller) {
    controller.view = this;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        iconTheme: const IconThemeData(
          color: neutralWhite, //change your color here
        ),
        title: Text(
          "Tentang Aplikasi",
          style: myTextTheme.titleLarge?.copyWith(color: neutralWhite),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Image.asset(
                "assets/images/logo.png",
                fit: BoxFit.fill,
              ),
              const SizedBox(
                height: 16.0,
              ),
              const ColumnText(
                  title: "Lorem Ipsum",
                  subtitle:
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer ac sollicitudin nisi. Nam accumsan interdum fringilla. Suspendisse potenti. In non sem eu lectus gravida commodo at in lectus. Ut ipsum turpis, pellentesque sit amet velit ut, lacinia hendrerit magna. Sed volutpat consectetur felis id rutrum. Nulla vitae porttitor velit. Fusce ut pharetra dolor, ac malesuada justo."),
              const SizedBox(
                height: 16.0,
              ),
              Image.asset(
                "assets/images/logo.png",
                fit: BoxFit.fill,
              ),
              const ColumnText(
                  title: "Lorem Ipsum",
                  subtitle:
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer ac sollicitudin nisi. Nam accumsan interdum fringilla. Suspendisse potenti. In non sem eu lectus gravida commodo at in lectus. Ut ipsum turpis, pellentesque sit amet velit ut, lacinia hendrerit magna. Sed volutpat consectetur felis id rutrum. Nulla vitae porttitor velit. Fusce ut pharetra dolor, ac malesuada justo."),
              const SizedBox(
                height: 16.0,
              ),
              Image.asset(
                "assets/images/logo.png",
                fit: BoxFit.fill,
              ),
              const ColumnText(
                  title: "Lorem Ipsum",
                  subtitle:
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer ac sollicitudin nisi. Nam accumsan interdum fringilla. Suspendisse potenti. In non sem eu lectus gravida commodo at in lectus. Ut ipsum turpis, pellentesque sit amet velit ut, lacinia hendrerit magna. Sed volutpat consectetur felis id rutrum. Nulla vitae porttitor velit. Fusce ut pharetra dolor, ac malesuada justo.")
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<TentangAplikasiView> createState() => TentangAplikasiController();
}
