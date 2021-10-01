import 'package:flutter/material.dart';

import 'package:flutter_uikit_true_power/Routes/routes.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:get/get.dart';
import 'package:sliding_clipped_nav_bar/sliding_clipped_nav_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter true power',
      theme: ThemeData.dark(),
      initialRoute: '/',
      getPages: getRoutes,
    );
  }
}

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int _selectedIndex = 0;
  late PageController _pageController =
      PageController(initialPage: _selectedIndex);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: SlidingClippedNavBar.colorful(
        backgroundColor: Colors.grey[900]!,
        onButtonPressed: (index) {
          setState(() {
            _selectedIndex = index;
          });
          _pageController.animateToPage(_selectedIndex,
              duration: const Duration(milliseconds: 400),
              curve: Curves.easeOutQuad);
        },
        iconSize: 30,
        selectedIndex: _selectedIndex,
        barItems: [
          BarItem(
            icon: Feather.home,
            title: 'Home',
            activeColor: Colors.amber,
            inactiveColor: Colors.red,
          ),
          BarItem(
            icon: Icons.search_rounded,
            title: 'Search',
            activeColor: Colors.red,
            inactiveColor: Colors.green,
          ),
          BarItem(
            icon: Feather.cloud_lightning,
            title: 'Energy',
            activeColor: Colors.green,
            inactiveColor: Colors.blue,
          ),
          BarItem(
            icon: Feather.user,
            title: 'Settings',
            activeColor: Colors.purple,
            inactiveColor: Colors.brown,
          ),
        ],
      ),
      body: PageView(
        controller: _pageController,
        physics: NeverScrollableScrollPhysics(),
        children: [
          Center(
            child: ElevatedButton(
                onPressed: () {
                  Get.toNamed(
                    RoutesName.fbLogin,
                  );
                },
                child: Text('Flight booking app')),
          ),
          Center(
            child: GestureDetector(
                onTap: () {
                  Get.to(() => SeApp());
                },
                child: Text('profile')),
          ),
          Center(
            child: GestureDetector(
                onTap: () {
                  Get.to(() => SeApp());
                },
                child: Text('baby')),
          ),
          Center(
            child: GestureDetector(
                onTap: () {
                  Get.to(() => SeApp());
                },
                child: Text('setting')),
          ),
        ],
      ),
    );
  }
}

class SeApp extends StatelessWidget {
  final String title;
  const SeApp({Key? key, this.title = 'null'}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Theme(
        data: ThemeData.light(),
        child: Scaffold(
          appBar: AppBar(
            title: Text(title),
          ),
          body: Center(child: Text('Hello')),
        ));
  }
}
