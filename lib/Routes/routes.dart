import 'package:flutter_uikit_true_power/main.dart';
import 'package:get/get_navigation/get_navigation.dart';


List<GetPage<dynamic>>? getRoutes = [
  GetPage(name: RoutesName.home, page: () => HomeView()),
  GetPage(name: RoutesName.firstApp, page: () => SeApp()),
  GetPage(name: RoutesName.secondApp , page: () => SeApp(), transition: Transition.zoom),
];

class RoutesName {
  RoutesName._();
  static const String home = '/';
  static const String firstApp = '/second';
  static const String secondApp = '/tho';
}
