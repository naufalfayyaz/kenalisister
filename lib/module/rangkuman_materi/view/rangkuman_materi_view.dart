import 'package:flutter/material.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';
import 'package:kenali_sister/core.dart';
import 'package:lottie/lottie.dart';

class RangkumanMateriView extends StatefulWidget {
  final String title;
  const RangkumanMateriView({Key? key, required this.title}) : super(key: key);

  Widget build(context, RangkumanMateriController controller) {
    controller.view = this;
    if (controller.loaded) {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: primaryColor,
          iconTheme: const IconThemeData(
            color: neutralWhite,
          ),
          title: Text(
            title,
            style: myTextTheme.titleLarge?.copyWith(color: neutralWhite),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: PDFView(
            fitPolicy: FitPolicy.BOTH,
            filePath: controller.urlPDFPath,
            enableSwipe: true,
            pageSnap: true,
            swipeHorizontal: true,
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
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              IconButton(
                icon: const Icon(Icons.chevron_left),
                iconSize: 50,
                color: neutralBlack,
                onPressed: () {
                  if (controller.currentPage > 0) {
                    controller.currentPage--;
                    controller.pdfViewController
                        .setPage(controller.currentPage);
                  }
                },
              ),
              Expanded(
                child: Text(
                  "${controller.currentPage + 1}/${controller.totalPages}",
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: neutralBlack, fontSize: 20),
                ),
              ),
              IconButton(
                icon: const Icon(Icons.chevron_right),
                iconSize: 50,
                color: neutralBlack,
                onPressed: () {
                  if (controller.currentPage < controller.totalPages - 1) {
                    controller.currentPage++;
                    controller.pdfViewController
                        .setPage(controller.currentPage);
                  }
                },
              ),
            ],
          ),
        ),
      );
    } else {
      if (controller.exists) {
        //Replace with your loading UI
        return Scaffold(
          backgroundColor: neutralWhite,
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
          body: Center(
            child: LottieBuilder.asset("assets/lottie/loading.json"),
          ),
        );
      } else {
        //Replace Error UI
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
          body: const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              "PDF Not Available",
              style: TextStyle(fontSize: 20),
            ),
          ),
        );
      }
    }
  }

  @override
  State<RangkumanMateriView> createState() => RangkumanMateriController();
}
