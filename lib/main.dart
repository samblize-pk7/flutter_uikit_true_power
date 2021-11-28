import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_uikit_true_power/config/Routes/routes.dart';
import 'package:flutter_uikit_true_power/constants/my_assets.dart';

import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:get/get.dart';
import 'package:sliding_clipped_nav_bar/sliding_clipped_nav_bar.dart';
import 'package:scroll_snap_list/scroll_snap_list.dart';

void main() {
  runApp(const MyApp());
}

List<String> appImage = [
  MyImageAssets.smartHouse,
  MyImageAssets.todoApp,
];
List<String> appRoute = [
  RoutesName.smartHouseApp.base,
  RoutesName.todoManager.base,
  
];


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
      getPages: RoutesName().routes,
    );
  }
}

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int _selectedIndex = 1;
  late PageController pageController =
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
          pageController.animateToPage(_selectedIndex,
              duration: const Duration(milliseconds: 400),
              curve: Curves.easeOutQuad);
        },
        iconSize: 30,
        selectedIndex: _selectedIndex,
        barItems: [
          BarItem(
            icon: Feather.cloud_lightning,
            title: 'Energy',
            activeColor: Colors.green,
            inactiveColor: Colors.blue,
          ),
          BarItem(
            icon: Feather.home,
            title: 'Home',
            activeColor: Colors.amber,
            inactiveColor: Colors.red,
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
        controller: pageController,
        physics: NeverScrollableScrollPhysics(),
        children: [
          Center(
            child: ElevatedButton(
                onPressed: () {}, child: Text('Flight booking app')),
          ),
          ListView.builder(
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
          ),
          Center(
            child: GestureDetector(
              onTap: () {
                Get.to(() => SeApp());
              },
              child: Container(
                height: 120,
                child: Expanded(
                  child: ScrollSnapList(
                    scrollDirection: Axis.vertical,
                    onItemFocus: (index) {},
                    itemSize: 100,
                    dynamicItemSize: true,
                    dynamicItemOpacity: .5,
                    itemBuilder: (_, int index) {
                      return Card(
                        child: Center(
                          child: Container(
                            padding: const EdgeInsets.all(20.0),
                            height: 100,
                            child: Text('sdsd'),
                          ),
                        ),
                      );
                    },
                    itemCount: 10,
                    reverse: true,
                  ),
                ),
              ),
            ),
          ),
          Center(
            child: Container(
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
