import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_uikit_true_power/config/themes/themdata_settings.dart';
import 'package:flutter_uikit_true_power/modules/smart_house/sh_controller.dart';
import 'package:flutter_uikit_true_power/modules/smart_house/sh_profile_temp_view.dart';
import 'package:flutter_uikit_true_power/modules/smart_house/sh_widget_view.dart';

import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';



class SmartHouseWrapper extends StatelessWidget {
  SmartHouseWrapper({Key? key}) : super(key: key);

  final NavController controller = Get.put(NavController());
  @override
  Widget build(BuildContext context) {
    List<Widget> page = [
     SmartHouseWidgetView(),
     SmartHouseProfileTemperatureView(),
      Center(
        child: Text('setting'),
      ),
      Center(
        child: Text('ring'),
      ),
    ];
    return Theme(
      data: neomorphs,
      child: Scaffold(
        body: Obx(() => SafeArea(
                child: PageView(
              physics: NeverScrollableScrollPhysics(),
              controller: controller.pageController.value,
              children: page,
            ))),
        bottomNavigationBar: NeuNavbar(),
      ),
    );
  }
}


class NeuNavbar extends StatelessWidget {
  const NeuNavbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          neuItem(icon: Icons.now_widgets_sharp, index: 0),
          neuItem(icon: Icons.person, index: 1),
          neuItem(icon: Icons.settings, index: 2),
          neuItem(icon: Icons.notifications, index: 3)
        ],
      ),
    );
  }

  Widget neuItem({required IconData icon, required int index}) {
    return GetX<NavController>(
        init: NavController(),
        builder: (_) {
          double targetValue = _.currentIndex.value == index ? -4 : 4;
          return TweenAnimationBuilder(
              duration: Duration(milliseconds: 50),
              tween: Tween<double>(begin: 4, end: targetValue),
              builder: (context, double depth, child) {
                return Neumorphic(
                    style: NeumorphicStyle(
                        shape: NeumorphicShape.flat,
                        boxShape: NeumorphicBoxShape.roundRect(
                            BorderRadius.circular(12)),
                        depth: depth,
                        intensity: .95,
                        lightSource: LightSource.topLeft,
                        color: Color(0xffE3EDF7)),
                    child: GestureDetector(
                      onTap: () => _.setCurrentIndex(index),
                      child: Container(
                        color: Colors.transparent,
                        padding: const EdgeInsets.all(14.0),
                        child: Icon(
                          icon,
                          color: _.currentIndex.value == index
                              ? Colors.grey[900]
                              : Colors.grey[600],
                        ),
                      ),
                    ));
              });
        });
  }
}


