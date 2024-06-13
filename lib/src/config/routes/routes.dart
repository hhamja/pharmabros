import 'package:flutter/material.dart';
import 'package:pharmabros/src/common/page/main_tab.dart';
import 'package:pharmabros/src/common/page/splash_page.dart';

final routes = {
  '/splash': (BuildContext context) => const SplashPage(),
  '/main_tab': (BuildContext context) => const MainTab(),
  '/product/detail': (BuildContext context) => Container(),
};
