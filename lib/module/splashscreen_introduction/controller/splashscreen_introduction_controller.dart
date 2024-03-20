import 'package:flutter/material.dart';
import 'package:kenali_sister/core.dart';
import '../view/splashscreen_introduction_view.dart';

class SplashscreenIntroductionController
    extends State<SplashscreenIntroductionView> {
  static late SplashscreenIntroductionController instance;
  late SplashscreenIntroductionView view;

  int currentPage = 0;
  final PageController pageController = PageController(initialPage: 0);

  onPageChanged(int index) {
    setState(() {
      currentPage = index;
    });
  }

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) => widget.build(context, this);
}
