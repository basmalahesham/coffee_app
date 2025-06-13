import 'package:coffee_flutter_app/core/theming/colors.dart';
import 'package:coffee_flutter_app/features/home/presentation/views/home_view.dart';
import 'package:coffee_flutter_app/generated/assets.dart';
import 'package:flutter/material.dart';

class HomeLayout extends StatefulWidget {
  const HomeLayout({super.key});

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  int selectedIndex = 0;
  List<Widget> screenWidgets = [
    HomeView(),
    Container(),
    Container(),
    Container(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screenWidgets[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage(Assets.imagesHome)),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage(Assets.imagesLove)),
            label: 'love',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage(Assets.imagesBag)),
            label: 'bag',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage(Assets.imagesNotification)),
            label: 'notification',
          ),
        ],
        backgroundColor: Colors.white,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        selectedIconTheme: const IconThemeData(
          color: ColorsManager.kPrimaryColor,
          size: 24,
        ),
        unselectedIconTheme: const IconThemeData(
          color: ColorsManager.kSecondaryColor,
          size: 24,
        ),
      ),
    );
  }
}
