import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class SmartHouseProfileTemperatureView extends StatefulWidget {
  const SmartHouseProfileTemperatureView({Key? key}) : super(key: key);

  @override
  State<SmartHouseProfileTemperatureView> createState() =>
      _SmartHouseProfileTemperatureViewState();
}

class _SmartHouseProfileTemperatureViewState
    extends State<SmartHouseProfileTemperatureView> {
  double height = 350;

  bool coolingMode = false;

//______________________________________
//
//   @Sajjad.Theory on Instagram
//______________________________________

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 40, vertical: 40),
          child: FadeInDown(
            duration: Duration(milliseconds: 1000),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Temperature',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      letterSpacing: 1.2),
                ),
                Text(
                  'This show the status of the house',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                      fontSize: 16,
                      letterSpacing: 1),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  FadeInDown(
                    duration: Duration(milliseconds: 1000),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: const [
                        Text(
                          '70',
                          style: TextStyle(
                              fontSize: 60,
                              letterSpacing: 1.5,
                              color: Colors.grey),
                        ),
                        Text(
                          '°C',
                          style: TextStyle(
                              fontSize: 35,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1.5,
                              color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  GestureDetector(
                    onTap: () {
                      // Navigator.of(context).pushReplacementNamed('/');
                    },
                    child: FadeInDown(
                      duration: Duration(milliseconds: 1000),
                      child: Neumorphic(
                        style: NeumorphicStyle(
                            shape: NeumorphicShape.flat,
                            boxShape: NeumorphicBoxShape.roundRect(
                                BorderRadius.circular(50)),
                            depth: -2,
                            intensity: .95,
                            lightSource: LightSource.topLeft,
                            color: Color(0xffE3EDF7)),
                        child: Container(
                          color: Colors.transparent,
                          padding: const EdgeInsets.all(20.0),
                          child: Icon(Feather.power,
                              size: 40, color: Colors.grey[600]),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  FadeInDown(
                    duration: Duration(milliseconds: 1000),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          coolingMode = !coolingMode;
                          height = coolingMode ? 180 : 350;
                        });
                      },
                      child: Neumorphic(
                        style: NeumorphicStyle(
                            shape: NeumorphicShape.flat,
                            boxShape: NeumorphicBoxShape.roundRect(
                                BorderRadius.circular(10)),
                            depth: coolingMode ? 2 : 0,
                            intensity: .95,
                            lightSource: LightSource.topLeft,
                            color: Color(0xffE3EDF7)),
                        child: Container(
                          color: Colors.transparent,
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            children: [
                              Icon(Feather.wind, color: Colors.grey[600]),
                              SizedBox(
                                height: 8,
                              ),
                              Text(
                                'Cooling mode',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 1.5,
                                    color: Colors.grey),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  FadeInDown(
                    duration: Duration(milliseconds: 1000),
                    child: Neumorphic(
                      style: NeumorphicStyle(
                          shape: NeumorphicShape.flat,
                          boxShape: NeumorphicBoxShape.roundRect(
                              BorderRadius.circular(10)),
                          depth: 2,
                          intensity: .95,
                          lightSource: LightSource.topLeft,
                          color: Color(0xffE3EDF7)),
                      child: Container(
                        color: Colors.transparent,
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          children: [
                            Icon(Feather.clock, color: Colors.grey[600]),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              '   Set Time    ',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 1.5,
                                  color: Colors.grey),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  FadeInDown(
                    duration: Duration(milliseconds: 1000),
                    child: Neumorphic(
                      style: NeumorphicStyle(
                          shape: NeumorphicShape.flat,
                          boxShape: NeumorphicBoxShape.roundRect(
                              BorderRadius.circular(10)),
                          depth: 0,
                          intensity: .95,
                          lightSource: LightSource.topLeft,
                          color: Color(0xffE3EDF7)),
                      child: Container(
                        color: Colors.transparent,
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          children: [
                            Icon(Icons.hot_tub_rounded,
                                color: Colors.grey[600]),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              'Hot tub',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 1.5,
                                  color: Colors.grey),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              FadeInRight(
                duration: Duration(milliseconds: 1000),
                child: Neumorphic(
                  style: NeumorphicStyle(
                      shape: NeumorphicShape.flat,
                      boxShape: NeumorphicBoxShape.roundRect(
                          BorderRadius.circular(50)),
                      depth: 2,
                      intensity: .95,
                      lightSource: LightSource.topLeft,
                      color: Color(0xffE3EDF7)),
                  child: Container(
                    height: 450,
                    color: Colors.transparent,
                    padding: const EdgeInsets.all(9.0),
                    child: Neumorphic(
                        style: NeumorphicStyle(
                            shape: NeumorphicShape.flat,
                            boxShape: NeumorphicBoxShape.roundRect(
                                BorderRadius.circular(50)),
                            depth: -4,
                            intensity: .95,
                            lightSource: LightSource.topLeft,
                            color: Color(0xffE3EDF7)),
                        child: Column(
                          verticalDirection: VerticalDirection.up,
                          children: [
                            Container(
                                width: 50,
                                color: Colors.transparent,
                                child: AnimatedContainer(
                                  height: height,
                                  duration: Duration(milliseconds: 500),
                                  color: coolingMode
                                      ? Colors.blueAccent
                                      : Colors.orange,
                                )),
                          ],
                        )),
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    ));
  }
}
