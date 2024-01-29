import 'package:flutter/material.dart';
import 'package:furnitture_store_app/feature/favorites/favorites_screen.dart';
import 'package:furnitture_store_app/feature/home/furnitures_screen.dart';
import 'package:furnitture_store_app/feature/notifications/notification_screen.dart';
import 'package:furnitture_store_app/feature/profile/profile_screen.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndexx = 0;
  final PageController _pageController = PageController();

  List<Widget> screens = [
    const Furniturescreen(),
    const FavoritesScreen(),
    const NotificationsScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: screens,
        onPageChanged: (value) {
          setState(() {
            currentIndexx = value;
          });
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.shifting,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey,
          currentIndex: currentIndexx,
          onTap: (value) {
            _pageController.animateToPage(
              value,
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeInOut,
            );
            setState(() {
              currentIndexx = value;
            });
          },
          items: [
            BottomNavigationBarItem(
              label: 'home',
              icon: SvgPicture.asset(
                'assets/svg/home.svg',
              ),
              activeIcon: SvgPicture.asset(
                'assets/svg/home-fill.svg',
              ),
            ),
            //
            BottomNavigationBarItem(
              label: 'bookmark',
              icon: SvgPicture.asset(
                'assets/svg/bookmarker.svg',
              ),
              activeIcon: SvgPicture.asset(
                'assets/svg/bookmarker-fill.svg',
              ),
            ),
            //
            BottomNavigationBarItem(
              label: 'notification',
              icon: SvgPicture.asset(
                'assets/svg/bell.svg',
              ),
              activeIcon: SvgPicture.asset(
                'assets/svg/bell-fill.svg',
              ),
            ),
            //
            BottomNavigationBarItem(
              label: 'profile',
              icon: SvgPicture.asset(
                'assets/svg/bi_person.svg',
              ),
              activeIcon: SvgPicture.asset(
                'assets/svg/bi_person-fill.svg',
              ),
            ),
          ]),
    );
  }
}
