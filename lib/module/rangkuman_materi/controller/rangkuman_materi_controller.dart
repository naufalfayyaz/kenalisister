import 'dart:async';
import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';
import 'package:kenali_sister/core.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:http/http.dart' as http;

class RangkumanMateriController extends State<RangkumanMateriView> {
  static late RangkumanMateriController instance;
  late RangkumanMateriView view;
  String urlPDFPath = "";
  bool exists = true;
  int totalPages = 0;
  int currentPage = 0;
  bool pdfReady = false;
  late PDFViewController pdfViewController;
  bool loaded = false;

  Future<File> getFileFromUrl(String url, {name}) async {
    var fileName = 'testonline';
    if (name != null) {
      fileName = name;
    }
    try {
      var data = await http.get(Uri.parse(url));
      var bytes = data.bodyBytes;
      var dir = await getApplicationDocumentsDirectory();
      File file = File("${dir.path}/$fileName.pdf");
      File urlFile = await file.writeAsBytes(bytes);
      return urlFile;
    } catch (e) {
      throw Exception("Error opening url file");
    }
  }

  void requestPersmission() async {
    final plugin = DeviceInfoPlugin();
    final android = await plugin.androidInfo;
    if (DeviceDatabase.statusPermission != true) {
      if (android.version.sdkInt < 33) {
        await Permission.storage.request();
      } else {
        PermissionStatus.granted;
      }
    }
  }

  @override
  void initState() {
    if (DeviceDatabase.statusPermission == false) {
      requestPersmission();
    }
    getFileFromUrl("https://css4.pub/2015/icelandic/dictionary.pdf").then(
      (value) => {
        setState(() {
          urlPDFPath = value.path;
          loaded = true;
          exists = true;
        })
      },
    );
    instance = this;
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => widget.build(context, this);
}
