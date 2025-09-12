import 'package:bottom_navbar_with_indicator/bottom_navbar_with_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wrapcast/core/constants/assets.dart';
import 'package:wrapcast/core/theme/color_pallete.dart';
import 'package:wrapcast/features/home/presentation/pages/home_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedPage = 0;
  final bool _isSelected = false;
  final List<Widget> _pages = [
    HomePage(),
    Text('Search'),
    Text('world'),
    Text('notification'),
    Text('chats'),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(index: _selectedPage, children: _pages),
      bottomNavigationBar: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            border: Border(
              top: BorderSide(
                color: ColorPallete.aColorPurpleDay_20,
                width: 0.5,
              ),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                bottomNavItemOnTap(TAppAssets.home, 0),
                bottomNavItemOnTap(TAppAssets.search, 1),
                bottomNavItemOnTap(TAppAssets.world, 2),
                bottomNavItemOnTap(TAppAssets.notification, 3),
                bottomNavItemOnTap(TAppAssets.chats, 4),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget bottomNavItemOnTap(String icon, int index) {
    final isSelected = _selectedPage == index;
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedPage = index;
        });
      },
      child: SvgPicture.asset(
        icon,
        width: 20,
        height: 20,
        colorFilter: ColorFilter.mode(
          isSelected ? ColorPallete.aButtonColor : ColorPallete.aColorWhite_25,
          BlendMode.srcIn,
        ),
      ),
    );
  }
}
