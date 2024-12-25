import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:twitter_clone_app/feature/home/view/home_screen_page.dart';
import 'package:twitter_clone_app/feature/home/view/search.dart';

class MainScreens extends StatefulWidget {
  const MainScreens({super.key});

  @override
  State<MainScreens> createState() => _MainScreensState();
}

class _MainScreensState extends State<MainScreens> {
  int currentTab = 0;
  List screens = const [
    HomeScreenPage(),
    Search(),
    Scaffold(),
    Scaffold(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          border: Border(
            top: BorderSide(color: Colors.grey, width: 0.5),
          ),
        ),
        child: BottomAppBar(
          height: 70,
          color: Colors.white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () => setState(() {
                  currentTab = 0;
                }),
                icon: SvgPicture.asset(
                  'assets/svgs/home_outlined.svg',
                  width: 50,
                  height: 50,
                ),
              ),
              IconButton(
                onPressed: () => setState(() {
                  currentTab = 1;
                }),
                icon: SvgPicture.asset(
                  'assets/svgs/search.svg',
                  width: 50,
                  height: 50,
                ),
              ),
              IconButton(
                onPressed: () => setState(() {
                  currentTab = 2;
                }),
                icon: SvgPicture.asset(
                  'assets/svgs/notif_outlined.svg',
                  width: 50,
                  height: 50,
                ),
              ),
              IconButton(
                onPressed: () => setState(() {
                  currentTab = 3;
                }),
                icon: SvgPicture.asset(
                  'assets/svgs/message.svg',
                  width: 50,
                  height: 50,
                ),
              ),
            ],
          ),
        ),
      ),
      body: screens[currentTab],
    );
  }
}
