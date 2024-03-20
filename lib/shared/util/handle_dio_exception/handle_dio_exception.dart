import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:kenali_sister/shared/util/show_info_dialog.dart';

void handleDioException(DioException e, BuildContext context) {
  if (e.error.toString().contains("Connection failed")) {
    showInfoDialog("Tidak dapat terhubung ke server");
  } else {
    showInfoDialog(e.toString());
  }
}
