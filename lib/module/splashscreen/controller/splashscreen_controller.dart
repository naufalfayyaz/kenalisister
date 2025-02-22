import 'package:flutter/material.dart';
import 'package:kenali_sister/core.dart';

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
