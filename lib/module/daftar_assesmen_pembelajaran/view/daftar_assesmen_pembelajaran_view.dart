import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kenali_sister/core.dart';

class DaftarAssesmenPembelajaranView extends StatefulWidget {
  const DaftarAssesmenPembelajaranView({super.key});

  Widget build(context, DaftarAssesmenPembelajaranController controller) {
    controller.view = this;

    return Scaffold(
      backgroundColor: neutralWhite,
      appBar: AppBar(
        backgroundColor: primaryColor,
        iconTheme: const IconThemeData(
          color: neutralWhite,
        ),
        leading: BackButton(
          color: neutralWhite,
          onPressed: () {
            Get.offAll(const BerandaView());
          },
        ),
        title: Text(
          "Daftar Assesment",
          style: myTextTheme.titleLarge?.copyWith(color: neutralWhite),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Card(
              color: primaryColor,
              child: ListTile(
                leading: SizedBox(
                  width: 80,
                  child: SvgPicture.asset(
                    'assets/illustration/computer.svg',
                  ),
                ),
                title: Text(
                  "Assesmen Tentang Komputer",
                  style: myTextTheme.titleMedium?.copyWith(color: neutralWhite),
                ),
                subtitle: Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer ac sollicitudin nisi. Nam accumsan interdum fringilla. Suspendisse potenti. In non sem eu lectus gravida commodo at in lectus. Ut ipsum turpis, pellentesque sit amet velit ut, lacinia hendrerit magna. Sed volutpat consectetur felis id rutrum. Nulla vitae porttitor velit. Fusce ut pharetra dolor, ac malesuada justo.",
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  style: myTextTheme.labelMedium?.copyWith(
                    color: neutralWhite,
                  ),
                ),
                isThreeLine: true,
                onTap: () {
                  Get.to(const FormAssesmentView());
                },
              ),
            ),
            const SizedBox(
              height: 8.0,
            ),
            Card(
              color: primaryColor,
              child: ListTile(
                leading: SizedBox(
                  width: 80,
                  child: SvgPicture.asset(
                    'assets/illustration/diskusi.svg',
                  ),
                ),
                title: Text(
                  "Assesmen Diagnostik",
                  style: myTextTheme.titleMedium?.copyWith(color: neutralWhite),
                ),
                subtitle: Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer ac sollicitudin nisi. Nam accumsan interdum fringilla. Suspendisse potenti. In non sem eu lectus gravida commodo at in lectus. Ut ipsum turpis, pellentesque sit amet velit ut, lacinia hendrerit magna. Sed volutpat consectetur felis id rutrum. Nulla vitae porttitor velit. Fusce ut pharetra dolor, ac malesuada justo.",
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  style: myTextTheme.labelMedium?.copyWith(
                    color: neutralWhite,
                  ),
                ),
                isThreeLine: true,
                onTap: () {
                  Get.to(const FormAssesmentView());
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  State<DaftarAssesmenPembelajaranView> createState() =>
      DaftarAssesmenPembelajaranController();
}
