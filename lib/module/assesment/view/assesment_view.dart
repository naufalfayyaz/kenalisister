import 'package:flutter/material.dart';
import 'package:kenali_sister/core.dart';

class AssesmentView extends StatefulWidget {
  final bool isAssesmenKomputer;
  const AssesmentView({super.key, required this.isAssesmenKomputer});

  Widget build(context, AssesmentController controller) {
    controller.view = this;
    final DatabaseService _databaseService = DatabaseService();
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
          "Assesment Komputer",
          style: myTextTheme.titleLarge?.copyWith(color: neutralWhite),
        ),
      ),
      body: StreamBuilder(
          stream: isAssesmenKomputer
              ? _databaseService.getKomputerModelData()
              : _databaseService.getAgnostikModelData(),
          builder: (context, snapshot) {
            List listSoal = snapshot.data?.docs ?? [];
            if (listSoal.isEmpty) {
              return Center(
                child: Text(
                  "Soal Tidak di Temukan...",
                  style: myTextTheme.titleMedium
                      ?.copyWith(fontWeight: FontWeight.w400),
                  textAlign: TextAlign.justify,
                ),
              );
            }
            print(listSoal);
            return Container(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Image.network(
                      "https://images.unsplash.com/flagged/photo-1559502867-c406bd78ff24?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=685&q=80",
                      width: 300.0,
                      height: 300.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(
                    height: 16.0,
                  ),
                  Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer ac sollicitudin nisi. Nam accumsan interdum fringilla. Suspendisse potenti. In non sem eu lectus gravida commodo at in lectus. Ut ipsum turpis, pellentesque sit amet velit ut, lacinia hendrerit magna. Sed volutpat consectetur felis id rutrum. Nulla vitae porttitor velit. Fusce ut pharetra dolor, ac malesuada justo.",
                    style: myTextTheme.titleMedium
                        ?.copyWith(fontWeight: FontWeight.w400),
                    textAlign: TextAlign.justify,
                  ),
                  const SizedBox(
                    height: 8.0,
                  ),
                  Text(
                    "Pilih jawaban yang benar...",
                    style: myTextTheme.titleMedium
                        ?.copyWith(fontWeight: FontWeight.w400),
                    textAlign: TextAlign.justify,
                  ),
                  const SizedBox(
                    height: 16.0,
                  ),
                  Builder(builder: (context) {
                    List categories = [
                      {
                        "label": "Food",
                        "image":
                            "https://images.unsplash.com/photo-1476224203421-9ac39bcb3327?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=870&q=80",
                      },
                      {
                        "label": "Main Course",
                        "image":
                            "https://images.unsplash.com/photo-1593253787226-567eda4ad32d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=387&q=80",
                      },
                      {
                        "label": "Drink",
                        "image":
                            "https://images.unsplash.com/photo-1527661591475-527312dd65f5?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=415&q=80",
                      },
                      {
                        "label": "Snack",
                        "image":
                            "https://images.unsplash.com/photo-1580314552228-5a7ce023fc9e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=388&q=80",
                      },
                    ];

                    return ListView.builder(
                      itemCount: categories.length,
                      shrinkWrap: true,
                      physics: const ScrollPhysics(),
                      itemBuilder: (BuildContext context, int index) {
                        var item = categories[index];
                        return InkWell(
                          onTap: () {
                            // showDialogBenar();
                            showDialogSalah();
                          },
                          child: Container(
                            height: 40.0,
                            clipBehavior: Clip.antiAlias,
                            margin: const EdgeInsets.only(
                              bottom: 12.0,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: const BorderRadius.all(
                                Radius.circular(
                                  8.0,
                                ),
                              ),
                              image: DecorationImage(
                                image: NetworkImage(
                                  item["image"],
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                            child: Stack(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.black.withOpacity(0.6),
                                  ),
                                ),
                                Center(
                                  child: Text(
                                    item["label"],
                                    style: const TextStyle(
                                      fontSize: 18.0,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    );
                  }),
                ],
              ),
            );
          }),
    );
  }

  @override
  State<AssesmentView> createState() => AssesmentController();
}
