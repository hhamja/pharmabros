import 'package:flutter/material.dart';
import 'package:pharmabros/src/config/const/color_util.dart';
import 'package:pharmabros/src/config/const/page_side.dart';

class HomePage extends StatelessWidget {
  /// 홈페이지
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: ColorUtil.white,
        title: Container(
          width: MediaQuery.of(context).size.width,
          margin: const EdgeInsets.symmetric(
            vertical: 8,
            horizontal: PAGE_SIDE,
          ),
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(8),
            ),
          ),
          child: null,
        ),
      ),
      body: Container(),
    );
  }
}
