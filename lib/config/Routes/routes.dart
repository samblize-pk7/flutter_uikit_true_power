import 'package:flutter/cupertino.dart';
import 'package:flutter_uikit_true_power/main.dart';
import 'package:flutter_uikit_true_power/modules/smart_house/bottom_navigator_wrapper.dart';
import 'package:flutter_uikit_true_power/modules/task_manager/view/home_view.dart';
import 'package:get/get_navigation/get_navigation.dart';

@immutable
class RoutesName {
  RoutesName._internal();
  static final RoutesName _singleton = RoutesName._internal();
  factory RoutesName() {
    return _singleton;
  }
//--------------- Routes ----------------------
  List<GetPage<dynamic>>? get routes => _routes;
  final List<GetPage<dynamic>>? _routes = [
    GetPage(name: RoutesName.home, page: () => MainView()),
    GetPage(
        name: RoutesName.smartHouseApp,
        page: () => SmartHouseWrapper(),
        children: const []),
    GetPage(
        name: RoutesName.todoManager,
        page: () => TaskManagerHomeView(),
        children: const []),
  ];

//--------------- Routes Name ----------------------
  static const String home = '/';

// these are the Home page views
  static String smartHouseApp = '/Smart-house';
  static String todoManager = '/Todo-manager';
  static String netflixMovieApp = '/netflix-movie';
}
