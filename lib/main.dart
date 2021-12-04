import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_uikit_true_power/config/Routes/routes.dart';
import 'package:flutter_uikit_true_power/constants/my_assets.dart';

import 'package:flutter_uikit_true_power/modules/smart_house/bottom_navigator_wrapper.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:get/get.dart';
import 'package:sliding_clipped_nav_bar/sliding_clipped_nav_bar.dart';


void main() => runApp(const MyApp());

List<String> appImage = [
  MyImageAssets.smartHouse,
  MyImageAssets.todoApp,
];
List<String> appRoute = [
  RoutesName.smartHouseApp,
  RoutesName.todoManager,
];

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter true power',
      home: SmartHouseWrapper(),
      initialRoute: '/',
      getPages: RoutesName().routes,
    );
  }
}

class MainView extends StatefulWidget {
  const MainView({Key? key}) : super(key: key);

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  int _selectedIndex = 1;
  late PageController pageController =
      PageController(initialPage: _selectedIndex);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white10,
      bottomNavigationBar: SlidingClippedNavBar.colorful(
        backgroundColor: Colors.grey[900]!,
        onButtonPressed: (index) {
          setState(() {
            _selectedIndex = index;
          });
          pageController.animateToPage(_selectedIndex,
              duration: const Duration(milliseconds: 400),
              curve: Curves.easeOutQuad);
        },
        iconSize: 30,
        selectedIndex: _selectedIndex,
        barItems: [
          BarItem(
            icon: Feather.package,
            title: 'package',
            activeColor: Colors.blue,
            inactiveColor: Colors.blue,
          ),
          BarItem(
            icon: Feather.home,
            title: 'Home',
            activeColor: Colors.red,
            inactiveColor: Colors.red,
          ),
          BarItem(
            icon: Feather.user,
            title: 'Profile',
            activeColor: Colors.purple,
            inactiveColor: Colors.purple,
          ),
        ],
      ),
      body: PageView(
        controller: pageController,
        physics: NeverScrollableScrollPhysics(),
        children: const [
          Package(),
          Home(),
          Profile(),
        ],
      ),
    );
  }
}

class Profile extends StatelessWidget {
  const Profile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 300,
        child: Swiper(
          scrollDirection: Axis.vertical,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              color: Colors.amber,
              child: Center(child: Text('swipe')),
            );
          },
          itemCount: 3,
          pagination: SwiperPagination.rect,
          layout: SwiperLayout.STACK,
          itemHeight: 200,
          itemWidth: 300,
        ),
      ),
    );
  }
}

class Home extends StatelessWidget {
  const Home({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: appImage.length,
      itemBuilder: (_, index) {
        return GestureDetector(
          onTap: () => Get.toNamed(appRoute[index]),
          child: Container(
            margin: EdgeInsets.symmetric(vertical: 5),
            child: Image.asset(appImage[index]),
          ),
        );
      },
    );
  }
}

class Package extends StatelessWidget {
  const Package({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child:
          ElevatedButton(onPressed: () {}, child: Text('Flight booking app')),
    );
  }
}
