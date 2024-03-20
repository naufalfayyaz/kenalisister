import 'package:flutter/material.dart';
import 'package:kenali_sister/core.dart';
import 'package:kenali_sister/service/request_permmision.dart';
import '../view/splashscreen_view.dart';

class SplashscreenController extends State<SplashscreenView> {
  static late SplashscreenController instance;
  late SplashscreenView view;

  @override
  void initState() {
    requestPermissions();
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);
}
