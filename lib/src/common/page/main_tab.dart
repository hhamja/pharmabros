import 'package:flutter/material.dart';
import 'package:pharmabros/src/feature/home/page/home_page.dart';
import 'package:pharmabros/src/feature/my_info/page/my_info_page.dart';

class MainTab extends StatefulWidget {
  /// 메인 탭 정의
  const MainTab({super.key});

  @override
  State<MainTab> createState() => _MainTabState();
}

class _MainTabState extends State<MainTab> with SingleTickerProviderStateMixin {
  late TabController controller;
  int tabbarIndex = 0;

  void tabListener() {
    setState(() {
      tabbarIndex = controller.index;
    });
  }

  @override
  void initState() {
    super.initState();
    controller = TabController(
      length: 2,
      vsync: this,
      animationDuration: Duration.zero,
    );
    controller.addListener(tabListener);
  }

  @override
  void dispose() {
    controller.removeListener(tabListener);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        physics: const NeverScrollableScrollPhysics(),
        controller: controller,
        children: const [
          HomePage(),
          MyInfoPage(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: (int index) => controller.animateTo(index),
        backgroundColor: Colors.white,
        currentIndex: tabbarIndex,
        unselectedFontSize: 10,
        selectedFontSize: 10,
        items: [
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/icon/home_icon.png',
              height: 24,
              width: 24,
            ),
            activeIcon: Image.asset(
              'assets/icon/active_home.png',
              height: 24,
              width: 24,
            ),
            label: '홈',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/icon/flower_icon.png',
              height: 24,
              width: 24,
            ),
            activeIcon: Image.asset(
              'assets/icon/active_flower.png',
              height: 24,
              width: 24,
            ),
            label: '내 정보',
          ),
        ],
      ),
    );
  }
}
