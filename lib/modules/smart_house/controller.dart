import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';

class NavController extends GetxController {
  RxInt currentIndex = 1.obs;
  var pageController = PageController(initialPage: 1).obs;
  var wifi = false.obs;
  RxDouble temp = 34.00.obs;
  void setCurrentIndex(index) {
    currentIndex.value = index;
    pageController.value.animateToPage(index,
        duration: Duration(milliseconds: 300), curve: Curves.decelerate);
  }

  void setTemperature(double value) {
    temp.value = value;
  }
  void wifiToggle() {
    wifi.value = !wifi.value;
  }
}
