import 'package:flutter/cupertino.dart';
import 'package:flutter_uikit_true_power/main.dart';
import 'package:flutter_uikit_true_power/modules/smart_house/sh_wrapper.dart';
import 'package:flutter_uikit_true_power/modules/task_manager/view/home_view.dart';
import 'package:get/get_navigation/get_navigation.dart';

@immutable
class RoutesName {
  RoutesName._internal();
  static final RoutesName _singleton = RoutesName._internal();
  factory RoutesName() {
    return _singleton;
  }
//--------------- Pages ----------------------

  List<GetPage<dynamic>>? get routes => _routes;
  final List<GetPage<dynamic>>? _routes = [
    GetPage(name: RoutesName.home, page: () => HomeView()),
    GetPage(
        name: RoutesName.smartHouseApp.base,
        page: () => SmartHouseWrapper(),
        children: const []),
    GetPage(
        name: RoutesName.todoManager.base,
        page: () => TaskManagerHomeView(),
        children: const []),
  ];
//--------------- Routes Name ----------------------

  static const String home = '/';
  
  static _SmartHomeApp smartHouseApp = _SmartHomeApp();
  static _TodoManager todoManager = _TodoManager();
}

@immutable
class _SmartHomeApp {
  const _SmartHomeApp._internal();
  static final _SmartHomeApp _singleton = _SmartHomeApp._internal();
  factory _SmartHomeApp() {
    return _singleton;
  }
//--------------- Here ----------------------

  final String base = '/Smart-house';
}
@immutable
class _TodoManager {
  const _TodoManager._internal();
  static final _TodoManager _singleton = _TodoManager._internal();
  factory _TodoManager() {
    return _singleton;
  }
//--------------- Here ----------------------

  final String base = '/Todo-manager';
}
