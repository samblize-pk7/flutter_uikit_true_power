import 'package:flutter/material.dart';
import 'package:flutter_uikit_true_power/modules/task_manager/model/avatar.dart';

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
