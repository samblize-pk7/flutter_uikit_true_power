import 'dart:developer';

import 'package:flutter/material.dart';

import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:google_fonts/google_fonts.dart';

List<String> _weekdayList = [
  'M',
  'T',
  'W',
  'T',
  'F',
  'S',
  'S',
];

class TodoManagerHomeView extends StatefulWidget {
  const TodoManagerHomeView({Key? key}) : super(key: key);

  @override
  State<TodoManagerHomeView> createState() => _TodoManagerHomeViewState();
}

class _TodoManagerHomeViewState extends State<TodoManagerHomeView> {
  bool hideMenu = false;
  int selectedDay = 2;
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
          primaryColor: Color(0xffEFAB3E),
          scaffoldBackgroundColor: Color(0xFFFDFDFD),
          buttonTheme: ButtonThemeData(buttonColor: Color(0xffEFAB3E)),
          colorScheme: ColorScheme.light().copyWith(primary: Color(0xFF050505)),
          textTheme: GoogleFonts.oxaniumTextTheme().copyWith()),
      child: Scaffold(
        body: SizedBox(
          height: double.infinity,
          child: Stack(
            children: [
              AnimatedPositioned(
                duration: Duration(milliseconds: 200),
                bottom: 0,
                top: 0,
                left: hideMenu ? -80 : 0,
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 30),
                  height: double.infinity,
                  width: 80,
                  color: Color(0xFF050505),
                  child: SafeArea(
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                        GestureDetector(
                          onTap: () => setState(() {
                            hideMenu = !hideMenu;
                          }),
                          child: Icon(
                            Feather.grid,
                            color: Colors.white70,
                            size: 28,
                          ),
                        ),
                        SizedBox(
                          height: 60,
                        ),
                        Expanded(
                          child: Center(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: List.generate(
                                7,
                                (i) => Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 8),
                                  child: Stack(
                                    children: [
                                      AnimatedPositioned(
                                          duration: Duration(milliseconds: 200),
                                          right: selectedDay == i ? -10 : -25,
                                          top: 10,
                                          child: Transform.rotate(
                                            angle: 3.14 / 4,
                                            child: Container(
                                              width: 20,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(3),
                                                color: Colors.white,
                                              ),
                                              height: 20,
                                              child: Center(
                                                child: Stack(
                                                  children: [
                                                    Positioned(
                                                      bottom: 3,
                                                      left: 3,
                                                      child: Container(
                                                        height: 8,
                                                        width: 8,
                                                        decoration: BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        50),
                                                            color: Color(
                                                                0xffEFAB3E)),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          )),
                                      Center(
                                        child: GestureDetector(
                                          onTap: () => setState(() {
                                            selectedDay = i;
                                          }),
                                          child: Material(
                                            elevation: 4,
                                            color: selectedDay == i
                                                ? Color(0xffEFAB3E)
                                                : Colors.grey[800],
                                            borderRadius:
                                                BorderRadius.circular(6),
                                            child: Container(
                                              child: Center(
                                                  child: Text(
                                                _weekdayList[i],
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    color: selectedDay == i
                                                        ? Colors.grey[900]
                                                        : Colors.white,
                                                    fontSize: 18),
                                              )),
                                              width: 40,
                                              height: 40,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        Icon(
                          Feather.settings,
                          color: Colors.white70,
                          size: 28,
                        )
                      ])),
                ),
              ),
              SafeArea(
                  child: Align(
                alignment: Alignment.topRight,
                child: AnimatedContainer(
                    duration: Duration(milliseconds: 200),
                    width: hideMenu
                        ? MediaQuery.of(context).size.width
                        : MediaQuery.of(context).size.width - 80,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: ListView(
                        // crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          SizedBox(
                            height: 30,
                          ),
                          Row(
                            textDirection: TextDirection.rtl,
                            children: [
                              Text(
                                '18',
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                    fontSize: 55, fontWeight: FontWeight.w900),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: const [
                                  Text(
                                    'Tues',
                                    style: TextStyle(color: Colors.black54),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    'Aug 20',
                                    style: TextStyle(color: Colors.black54),
                                  ),
                                ],
                              )
                            ],
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Text(
                            'Schedule',
                            textAlign: TextAlign.right,
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 45),
                          ),
                          Divider(height: 2)
                        ],
                      ),
                    )),
              )),
              AnimatedPositioned(
                duration: Duration(milliseconds: 200),
                left: hideMenu ? -34 : 24,
                bottom: 100,
                child: SafeArea(
                  child: Row(
                    children: [
                      AnimatedContainer(
                        duration: Duration(milliseconds: 200),
                        color: Colors.redAccent,
                      ),
                      Center(
                        child: Transform.rotate(
                          angle: 3.14 / 2,
                          child: ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  hideMenu = !hideMenu;
                                });
                              },
                              child: Text(
                                'Schedule',
                                style: TextStyle(letterSpacing: 1.2),
                              )),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
