import 'package:flutter/material.dart';
import 'package:kenali_sister/core.dart';
import '../view/daftar_video_pembelajaran_view.dart';

class DaftarVideoPembelajaranController
    extends State<DaftarVideoPembelajaranView> {
  static late DaftarVideoPembelajaranController instance;
  late DaftarVideoPembelajaranView view;

  @override
  void initState() {
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
