import 'package:flutter/material.dart';
import 'package:pharmabros/src/config/const/color_util.dart';

class SplashPage extends StatefulWidget {
  /// 맨처음 스플래시 페이지
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();

    // 3s -> Home
    Future.delayed(const Duration(seconds: 2), () async {
      Navigator.pushReplacementNamed(
        context,
        '/main_tab',
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: ColorUtil.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "야생학습으로 성장한 개발자",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              "김민석",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
