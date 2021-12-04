import 'package:animate_do/animate_do.dart';

import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_uikit_true_power/constants/my_assets.dart';
import 'package:flutter_uikit_true_power/modules/smart_house/sh_controller.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/state_manager.dart';

class SmartHouseWidgetView extends StatelessWidget {
  SmartHouseWidgetView({Key? key}) : super(key: key);
  final NavController controller = Get.put(NavController());

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          children: [
            SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    FadeInLeft(
                      child: Text(
                        'Home',
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                    ),
                    FadeInLeft(
                      delay: Duration(milliseconds: 100),
                      child: Text(
                        'Sajjad theory',
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                    )
                  ],
                ),
                FadeInRight(
                  delay: Duration(milliseconds: 150),
                  child: Stack(
                    children: [
                      Neumorphic(
                        style: NeumorphicStyle(
                            boxShape: NeumorphicBoxShape.circle(),
                            depth: 3,
                            intensity: .5),
                        child: CircleAvatar(
                          radius: 32,
                          backgroundImage: AssetImage(MyImageAssets.avatar),
                        ),
                      ),
                      Positioned(
                          right: 0,
                          child: Container(
                            width: 20,
                            height: 20,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.orange[700]),
                            child: Center(
                              child: Text(
                                '2',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          )),
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: FadeInDown(
                    delay: Duration(milliseconds: 200),
                    child: Neumorphic(
                      style: NeumorphicStyle(
                          shape: NeumorphicShape.flat,
                          boxShape: NeumorphicBoxShape.roundRect(
                              BorderRadius.circular(12)
                                  .copyWith(topLeft: Radius.circular(25))),
                          depth: 3,
                          intensity: .95,
                          lightSource: LightSource.topLeft,
                          color: Color(0xffE3EDF7)),
                      child: Container(
                        padding: EdgeInsets.all(30),
                        height: 140,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.tv,
                              size: 30,
                              color: Colors.grey[600],
                            ),
                            Text(
                              'Smart TV',
                              style: TextStyle(
                                  letterSpacing: 2,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey[600]),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: Center(
                    child: FadeInDown(
                      delay: Duration(milliseconds: 250),
                      child: GestureDetector(
                        onTap: () => controller.wifiToggle(),
                        child: Neumorphic(
                          style: NeumorphicStyle(
                              shape: NeumorphicShape.flat,
                              boxShape: NeumorphicBoxShape.roundRect(
                                  BorderRadius.circular(10)
                                      .copyWith(topRight: Radius.circular(25))),
                              depth: 3,
                              intensity: .95,
                              lightSource: LightSource.topLeft,
                              color: Color(0xffE3EDF7)),
                          child: Container(
                            padding: EdgeInsets.all(30),
                            height: 140,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Icon(
                                      Icons.wifi,
                                      color: Colors.grey[600],
                                      size: 30,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Neumorphic(
                                      style: NeumorphicStyle(
                                          shape: NeumorphicShape.convex,
                                          boxShape: NeumorphicBoxShape.roundRect(
                                              BorderRadius.circular(10).copyWith(
                                                  topRight: Radius.circular(25))),
                                          depth: -1,
                                          intensity: .85,
                                          lightSource: LightSource.topLeft,
                                          color: Color(0xffE3EDF7)),
                                      child: Obx(() => AnimatedContainer(
                                            duration: Duration(
                                              milliseconds: 200,
                                            ),
                                            width: 10,
                                            height: 10,
                                            decoration: BoxDecoration(
                                                color: controller.wifi.value
                                                    ? Colors.greenAccent[400]
                                                    : Colors.orange,
                                                borderRadius:
                                                    BorderRadius.circular(50)),
                                          )),
                                    )
                                  ],
                                ),
                                Text(
                                  'Wifi',
                                  style: TextStyle(
                                      fontSize: 15,
                                      letterSpacing: 2,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey[600]),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: FadeInLeft(
                    delay: Duration(milliseconds: 300),
                    child: Neumorphic(
                      style: NeumorphicStyle(
                          shape: NeumorphicShape.flat,
                          boxShape: NeumorphicBoxShape.roundRect(
                              BorderRadius.circular(12)
                                  .copyWith(bottomLeft: Radius.circular(25))),
                          depth: 3,
                          intensity: .95,
                          lightSource: LightSource.topLeft,
                          color: Color(0xffE3EDF7)),
                      child: Container(
                        padding: EdgeInsets.all(30),
                        height: 140,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.thermostat,
                              size: 30,
                              color: Colors.grey[600],
                            ),
                            Text(
                              'Temperature',
                              style: TextStyle(
                                  letterSpacing: 1.5,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey[600]),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: FadeInRight(
                    delay: Duration(milliseconds: 350),
                    child: Neumorphic(
                      style: NeumorphicStyle(
                          shape: NeumorphicShape.flat,
                          boxShape: NeumorphicBoxShape.roundRect(
                              BorderRadius.circular(10)
                                  .copyWith(bottomRight: Radius.circular(25))),
                          depth: 3,
                          intensity: .95,
                          lightSource: LightSource.topLeft,
                          color: Color(0xffE3EDF7)),
                      child: Container(
                        padding: EdgeInsets.all(30),
                        height: 140,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(
                                  Icons.add_circle_rounded,
                                  size: 30,
                                  color: Colors.grey[600],
                                ),
                                AnimatedContainer(
                                  duration: Duration(
                                    milliseconds: 200,
                                  ),
                                  width: 8,
                                  height: 8,
                                )
                              ],
                            ),
                            Text(
                              'Add More',
                              style: TextStyle(
                                  fontSize: 15,
                                  letterSpacing: 1.5,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey[600]),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 40,
            ),
            FadeInLeft(
              delay: Duration(milliseconds: 400),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Temperature',
                        style: TextStyle(
                          fontSize: 18,
                          letterSpacing: 1.5,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'This made by sajjad theory',
                        style: TextStyle(
                            fontSize: 14,
                            letterSpacing: 1.5,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey[600]),
                      ),
                    ],
                  ),
                  Obx(() => Text(
                        '${controller.temp.value.round()}°C',
                        style: TextStyle(
                            fontSize: 30,
                            letterSpacing: 1.5,
                            color: Colors.grey[600]),
                      ))
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            FadeInUp(delay: Duration(milliseconds: 500), child: NeuSlider())
          ],
        ),
      ),
    );
  }
}

class NeuSlider extends StatelessWidget {
  NeuSlider({
    Key? key,
  }) : super(key: key);

  final NavController controller = Get.put(NavController());
  @override
  Widget build(BuildContext context) {
    return Obx(() => NeumorphicSlider(
          height: 40,
          min: 18,
          max: 99,
          value: controller.temp.value,
          style: SliderStyle(
              depth: 2, accent: Colors.orange[600], variant: Colors.red[600]),
          thumb: Neumorphic(
            style: NeumorphicStyle(
                shape: NeumorphicShape.convex,
                boxShape:
                    NeumorphicBoxShape.roundRect(BorderRadius.circular(50)),
                depth: 2,
                intensity: .55,
                lightSource: LightSource.topLeft,
                color: Color(0xffE3EDF7)),
            child: CircleAvatar(
              maxRadius: 24,
              backgroundColor: Color(0xffE3EDF7),
              child: Icon(
                Icons.thermostat,
                color: Colors.black,
              ),
            ),
          ),
          onChanged: (value) {
            controller.setTemperature(value);
          },
        ));
  }
}
