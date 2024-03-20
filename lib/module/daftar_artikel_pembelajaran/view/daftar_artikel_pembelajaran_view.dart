import 'package:flutter/material.dart';
import 'package:kenali_sister/core.dart';

class DaftarArtikelPembelajaranView extends StatefulWidget {
  const DaftarArtikelPembelajaranView({super.key});

  Widget build(context, DaftarArtikelPembelajaranController controller) {
    controller.view = this;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        iconTheme: const IconThemeData(
          color: neutralWhite, //change your color here
        ),
        title: Text(
          "Daftar Artikel Pembelajaran",
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
                Get.to(const ArtikelPembelajaranView(
                  title: "Ini Adalah Contoh Title Artikel",
                  subtitle:
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer ac sollicitudin nisi. Nam accumsan interdum fringilla. Suspendisse potenti. In non sem eu lectus gravida commodo at in lectus. Ut ipsum turpis, pellentesque sit amet velit ut, lacinia hendrerit magna. Sed volutpat consectetur felis id rutrum. Nulla vitae porttitor velit. Fusce ut pharetra dolor, ac malesuada justo.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer ac sollicitudin nisi. Nam accumsan interdum fringilla. Suspendisse potenti. In non sem eu lectus gravida commodo at in lectus. Ut ipsum turpis, pellentesque sit amet velit ut, lacinia hendrerit magna. Sed volutpat consectetur felis id rutrum. Nulla vitae porttitor velit. Fusce ut pharetra dolor, ac malesuada justo.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer ac sollicitudin nisi. Nam accumsan interdum fringilla. Suspendisse potenti. In non sem eu lectus gravida commodo at in lectus. Ut ipsum turpis, pellentesque sit amet velit ut, lacinia hendrerit magna. Sed volutpat consectetur felis id rutrum. Nulla vitae porttitor velit. Fusce ut pharetra dolor, ac malesuada justo.",
                ));
              },
              child: Column(
                children: [
                  Card(
                    color: primaryColor,
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.grey[200],
                        backgroundImage: const NetworkImage(
                          "https://cdn1-production-images-kly.akamaized.net/QPMwBZaKmhY92wA0T9uKWFA6jB4=/1280x720/smart/filters:quality(75):strip_icc():format(webp)/kly-media-production/medias/4642530/original/070746100_1699547749-2150805072.jpg",
                        ),
                      ),
                      title: Text(
                        "Belajar Komputer",
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
  State<DaftarArtikelPembelajaranView> createState() =>
      DaftarArtikelPembelajaranController();
}
