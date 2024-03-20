import 'package:flutter/material.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';
import 'package:kenali_sister/core.dart';

class RangkumanMateriView extends StatefulWidget {
  final String title;
  const RangkumanMateriView({Key? key, required this.title}) : super(key: key);

  Widget build(context, RangkumanMateriController controller) {
    controller.view = this;
    print(controller.urlPDFPath);
    if (controller.loaded) {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: primaryColor,
          iconTheme: const IconThemeData(
            color: neutralWhite, //change your color here
          ),
          title: Text(
            title,
            style: myTextTheme.titleLarge?.copyWith(color: neutralWhite),
          ),
        ),
        body: PDFView(
          filePath: controller.urlPDFPath,
          autoSpacing: true,
          enableSwipe: true,
          pageSnap: true,
          swipeHorizontal: true,
          nightMode: false,
          onError: (e) {
            //Show some error message or UI
          },
          onRender: (pages) {
            controller.totalPages = pages!;
            controller.pdfReady = true;
            controller.update();
          },
          onViewCreated: (PDFViewController vc) {
            controller.pdfViewController = vc;
            controller.update();
          },
          onPageChanged: (int? page, int? total) {
            if (page != null && total != null) {
              // Perform your logic here with the nullable page and total values
              controller.currentPage = page;
            }
          },
          onPageError: (page, e) {},
        ),
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            IconButton(
              icon: const Icon(Icons.chevron_left),
              iconSize: 50,
              color: Colors.black,
              onPressed: () {
                if (controller.currentPage > 0) {
                  controller.currentPage--;
                  controller.pdfViewController.setPage(controller.currentPage);
                }
              },
            ),
            Text(
              "${controller.currentPage + 1}/$controller.totalPages",
              style: const TextStyle(color: Colors.black, fontSize: 20),
            ),
            IconButton(
              icon: const Icon(Icons.chevron_right),
              iconSize: 50,
              color: Colors.black,
              onPressed: () {
                if (controller.currentPage < controller.totalPages - 1) {
                  controller.currentPage++;
                  controller.pdfViewController.setPage(controller.currentPage);
                }
              },
            ),
          ],
        ),
      );
    } else {
      if (controller.exists) {
        //Replace with your loading UI
        return Scaffold(
          appBar: AppBar(
            title: Text("Demo"),
          ),
          body: Text(
            "Loading..",
            style: TextStyle(fontSize: 20),
          ),
        );
      } else {
        //Replace Error UI
        return Scaffold(
          appBar: AppBar(
            title: Text("Demo"),
          ),
          body: Text(
            "PDF Not Available",
            style: TextStyle(fontSize: 20),
          ),
        );
      }
    }
  }

  @override
  State<RangkumanMateriView> createState() => RangkumanMateriController();
}
