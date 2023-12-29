import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tec_jet_machine/controller/navigation_provider.dart';
import 'package:tec_jet_machine/view/pages/discover_page.dart';
import 'package:tec_jet_machine/view/pages/home_page.dart';
import 'package:tec_jet_machine/view/pages/profile_page.dart';

class CommonBottomBar extends ConsumerWidget {
  CommonBottomBar({super.key});
  final PageController pageController = PageController();
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: PageView(
        controller: pageController,
        onPageChanged: (value) {
          ref.read(indexProvider.notifier).state = value;
        },
        children: const [
          HomePage(),
          DiscoverPage(),
          ProfilePage(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: const Color(0xffFA6A02),
        unselectedItemColor: const Color(0xff9F9F9F),
        onTap: (value) {
          pageController.animateToPage(
            value,
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeIn,
          );
        },
        currentIndex: ref.watch(indexProvider),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "home",
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.circle_grid_3x3),
            label: "Discover",
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.profile_circled),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
