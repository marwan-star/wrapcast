import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wrapcast/core/constants/assets.dart';
import 'package:wrapcast/core/theme/color_pallete.dart';
import 'package:wrapcast/features/chats/presentation/chat_page.dart';
import 'package:wrapcast/features/home/presentation/pages/home_page.dart';
import 'package:wrapcast/features/notification/presentation/notification_page.dart';
import 'package:wrapcast/features/search/presentation/pages/search_page.dart';
import 'package:wrapcast/features/world/presentation/pages/world_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedPage = 0;
  final List<Widget> _pages = [
    HomePage(),
    SearchPage(),
    WorldPage(),
    NotificationPage(),
    ChatPage(),
  ];

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
            padding: const EdgeInsets.all(20),
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
    return Expanded(
      child: GestureDetector(
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
            isSelected
                ? ColorPallete.aButtonColor
                : ColorPallete.aColorWhite_25,
            BlendMode.srcIn,
          ),
        ),
      ),
    );
  }
}
