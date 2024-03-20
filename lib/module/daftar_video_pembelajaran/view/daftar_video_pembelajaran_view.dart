import 'package:flutter/material.dart';
import 'package:kenali_sister/core.dart';

class DaftarVideoPembelajaranView extends StatefulWidget {
  const DaftarVideoPembelajaranView({Key? key}) : super(key: key);

  Widget build(context, DaftarVideoPembelajaranController controller) {
    controller.view = this;
    return Scaffold(
      backgroundColor: neutralWhite,
      appBar: AppBar(
        backgroundColor: primaryColor,
        iconTheme: const IconThemeData(
          color: neutralWhite, //change your color here
        ),
        title: Text(
          "Daftar Video Pembelajaran",
          style: myTextTheme.titleLarge?.copyWith(color: neutralWhite),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: 15,
          physics: const ScrollPhysics(),
          itemBuilder: (BuildContext context, int index) {
            return InkWell(
              onTap: () {
                Get.to(const VideoPembelajaranView());
              },
              child: Column(
                children: [
                  Card(
                    color: primaryColor,
                    child: ListTile(
                      leading: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: Image.network(
                          "https://images.unsplash.com/flagged/photo-1559502867-c406bd78ff24?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=685&q=80",
                          width: 100.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                      title: Text(
                        "Video Belajar Komputer",
                        style: myTextTheme.titleMedium
                            ?.copyWith(color: neutralWhite),
                      ),
                      subtitle: Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer ac sollicitudin nisi. Nam accumsan interdum fringilla. Suspendisse potenti. In non sem eu lectus gravida commodo at in lectus. Ut ipsum turpis, pellentesque sit amet velit ut, lacinia hendrerit magna. Sed volutpat consectetur felis id rutrum. Nulla vitae porttitor velit. Fusce ut pharetra dolor, ac malesuada justo.",
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: myTextTheme.labelMedium?.copyWith(
                          color: neutralWhite,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 4.0,
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  @override
  State<DaftarVideoPembelajaranView> createState() =>
      DaftarVideoPembelajaranController();
}
