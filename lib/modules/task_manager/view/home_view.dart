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

class TaskManagerHomeView extends StatefulWidget {
  const TaskManagerHomeView({Key? key}) : super(key: key);

  @override
  State<TaskManagerHomeView> createState() => _TaskManagerHomeViewState();
}

class _TaskManagerHomeViewState extends State<TaskManagerHomeView> {
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
                          Divider(height: 2),
                          SizedBox(
                            height: 20,
                          ),
                          ScheduleTaskItem(
                            color: Colors.red[400]!,
                            title: 'Project Setup',
                            description: 'Skype meeting',
                            assignPeople: [
                              AvatarList.peopleList[2],
                              AvatarList.peopleList[1],
                            ],
                            timeFrom: '08:30',
                            timeTo: '09:30',
                          ),
                          ScheduleTaskItem(
                            color: Colors.blue[300]!,
                            title: 'Add design',
                            description: 'checking the UI',
                            assignPeople: [
                              AvatarList.peopleList[3],
                            ],
                            timeFrom: '10:40',
                            timeTo: '11:30',
                          ),
                          ScheduleTaskItem(
                            color: Colors.orange[300]!,
                            title: 'Lunch Details',
                            description: 'checking with the team',
                            assignPeople: [
                              AvatarList.peopleList[4],
                            ],
                            timeFrom: '14:50',
                            timeTo: '15:30',
                          ),
                          ScheduleTaskItem(
                            color: Colors.green[300]!,
                            title: 'Add design',
                            description: 'checking the UI',
                            assignPeople: [
                              AvatarList.peopleList[4],
                              AvatarList.peopleList[3],
                              AvatarList.peopleList[2],
                            ],
                            timeFrom: '12:00',
                            timeTo: '14:20',
                          ),
                          ScheduleTaskItem(
                            color: Colors.purple[300]!,
                            title: 'Add design',
                            description: 'checking the UI',
                            assignPeople: [
                              AvatarList.peopleList[3],
                              AvatarList.peopleList[1],
                            ],
                            timeFrom: '16:20',
                            timeTo: '18:00',
                          ),
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

class ScheduleTaskItem extends StatelessWidget {
  final Color color;
  final String title;
  final String description;
  final List<AvatarPeople> assignPeople;
  final String timeFrom;
  final String timeTo;

  const ScheduleTaskItem({
    Key? key,
    required this.color,
    required this.title,
    required this.description,
    required this.assignPeople,
    required this.timeFrom,
    required this.timeTo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _assignedPeople = '';
    for (var e in assignPeople) {
      _assignedPeople += e.name + ', ';
    }

    return Padding(
      padding: const EdgeInsets.only(top: 10, bottom: 10),
      child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          textDirection: TextDirection.rtl,
          children: [
            Expanded(
                child: Container(
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12), color: color),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              title,
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            Icon(
                              Icons.chevron_right_rounded,
                              size: 26,
                            ),
                          ],
                        ),
                        Text(description,
                            textAlign: TextAlign.left, style: TextStyle()),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Stack(children: [
                              SizedBox(
                                width: 30 + assignPeople.length * 15,
                                height: 40,
                              ),
                              ...List.generate(
                                assignPeople.length,
                                (i) => Positioned(
                                  left: i * 20,
                                  child: CircleAvatar(
                                      backgroundImage:
                                          AssetImage(assignPeople[i].avtImage)),
                                ),
                              ),
                            ]),
                            SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              child: Text(
                                _assignedPeople,
                                maxLines: 3,
                                softWrap: true,
                                style: TextStyle(fontSize: 13),
                              ),
                            )
                          ],
                        )
                      ],
                    ))),
            SizedBox(
              width: 10,
            ),
            Column(
              children: [
                SizedBox(
                  height: 5,
                ),
                Text(
                  timeFrom,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  timeTo,
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.black54),
                ),
              ],
            ),
            SizedBox(
              width: 5,
            )
          ]),
    );
  }
}

class AvatarPeople {
  final String name;
  final String avtImage;

  AvatarPeople(this.name, this.avtImage);
}

class AvatarList {
  AvatarList._internal();

//--------------- Here ----------------------
  static List<AvatarPeople> peopleList = [
    AvatarPeople(
      'julian wan',
      'assets/images/Avatars/julian-wan.jpg',
    ),
    AvatarPeople(
      'kirill balobanov',
      'assets/images/Avatars/kirill-balobanov.jpg',
    ),
    AvatarPeople(
      'max mclaren',
      'assets/images/Avatars/leio-mclaren.jpg',
    ),
    AvatarPeople(
      'michael dam',
      'assets/images/Avatars/michael-dam.jpg',
    ),
    AvatarPeople(
      'vicky hladynets',
      'assets/images/Avatars/vicky-hladynets.jpg',
    ),
  ];
}
