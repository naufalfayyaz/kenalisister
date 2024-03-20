import 'package:flutter/material.dart';
import 'package:kenali_sister/core.dart';

class BerandaView extends StatefulWidget {
  const BerandaView({super.key});

  Widget build(context, BerandaController controller) {
    controller.view = this;
    return Scaffold(
      backgroundColor: primaryColor,
      appBar: AppBar(
          backgroundColor: neutralWhite,
          title: Row(
            children: [
              Image.asset(
                "assets/images/logo.png",
                width: 75.0,
                height: 75.0,
              ),
              const SizedBox(
                width: 8.0,
              ),
              Text(
                "Kenali Sister",
                style: myTextTheme.titleMedium,
              ),
            ],
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Image.asset(
                "assets/images/uny.png",
                width: 40,
                height: 40,
              ),
            ),
          ]),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.asset(
                  "assets/images/beranda_image.png",
                ),
              ),
              const SizedBox(
                height: 16.0,
              ),
              InkWell(
                onTap: () => Get.to(const TentangAplikasiView()),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                      color: neutralWhite,
                      borderRadius: BorderRadius.all(Radius.circular(8))),
                  child: const Padding(
                    padding: EdgeInsets.all(8),
                    child: Text("Tentang aplikasi disini ya..."),
                  ),
                ),
              ),
              const SizedBox(
                height: 16.0,
              ),
              Card(
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                  side: const BorderSide(
                    color: gray200,
                    width: 1,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 16,
                    horizontal: 12,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Daftar Menu",
                        textAlign: TextAlign.left,
                        style: myTextTheme.titleSmall,
                      ),
                      const SizedBox(
                        height: 8.0,
                      ),
                      Container(
                        height: 1,
                        color: gray400,
                      ),
                      MenuBeranda(
                        prefixSVG: "assets/illustration/icon_artikel.svg",
                        suffixSVG: "assets/illustration/chevron-kanan.svg",
                        title: "Artikel",
                        subtitle: "Artikel Pembelajaran Pembelajaran",
                        navTo: () {
                          Get.to(const DaftarArtikelPembelajaranView());
                        },
                      ),
                      Container(
                        height: 1,
                        color: gray400,
                      ),
                      MenuBeranda(
                        prefixSVG: "assets/illustration/icon_video.svg",
                        suffixSVG: "assets/illustration/chevron-kanan.svg",
                        title: "Video Pembelajaran ",
                        subtitle: "Video Pembelajaran Terkait Komputer",
                        navTo: () {
                          Get.to(const DaftarVideoPembelajaranView());
                        },
                      ),
                      Container(
                        height: 1,
                        color: gray400,
                      ),
                      MenuBeranda(
                        prefixSVG: "assets/illustration/icon_rangkuman.svg",
                        suffixSVG: "assets/illustration/chevron-kanan.svg",
                        title: "Rangkuman Materi",
                        subtitle: "Rangkuman Materi Pembelajaran",
                        navTo: () {
                          Get.to(const DaftarRangkumanPembelajaranView());
                        },
                      ),
                      Container(
                        height: 1,
                        color: gray400,
                      ),
                      MenuBeranda(
                        prefixSVG: "assets/illustration/icon_assesmen.svg",
                        suffixSVG: "assets/illustration/chevron-kanan.svg",
                        title: "Assesmen",
                        subtitle: "Assesmen Materi Pemebalajran",
                        navTo: () {},
                      ),
                      Container(
                        height: 1,
                        color: gray400,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<BerandaView> createState() => BerandaController();
}
