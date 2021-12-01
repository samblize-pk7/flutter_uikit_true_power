import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_uikit_true_power/modules/task_manager/model/avatar.dart';
import 'package:flutter_uikit_true_power/modules/task_manager/view/schedule_task_item_widget.dart';

class ScheduleWidget extends StatelessWidget {
  const ScheduleWidget({Key? key}) : super(key: key);

//______________________________________
//
//NOTE:  @Sajjad.Theory on Instagram
//______________________________________ 
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FadeInDown(
          duration: Duration(milliseconds: 400),
          delay: Duration(milliseconds: 400),
          child: Text(
            'Schedule',
            textAlign: TextAlign.right,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 45),
          ),
        ),
        FadeInDown(
            duration: Duration(milliseconds: 400),
            delay: Duration(milliseconds: 450),
            child: Divider(height: 2)),
        SizedBox(
          height: 20,
        ),
        FadeInDown(
          delay: Duration(milliseconds: 500),
          child: Column(
            children: [
              ElasticInRight(
                delay: Duration(milliseconds: 400),
                child: ScheduleTaskItem(
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
              ),
              ElasticInRight(
                delay: Duration(milliseconds: 600),
                child: ScheduleTaskItem(
                  color: Colors.blue[300]!,
                  title: 'Add design',
                  description: 'checking the UI',
                  assignPeople: [
                    AvatarList.peopleList[3],
                  ],
                  timeFrom: '10:40',
                  timeTo: '11:30',
                ),
              ),
              ElasticInRight(
                delay: Duration(milliseconds: 800),
                child: ScheduleTaskItem(
                  color: Colors.orange[300]!,
                  title: 'Lunch Details',
                  description: 'checking with the team',
                  assignPeople: [
                    AvatarList.peopleList[4],
                  ],
                  timeFrom: '14:50',
                  timeTo: '15:30',
                ),
              ),
              ElasticInRight(
                delay: Duration(milliseconds: 1000),
                child: ScheduleTaskItem(
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
              ),
              ElasticInRight(
                delay: Duration(milliseconds: 1300),
                child: ScheduleTaskItem(
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
              ),
            ],
          ),
        ),
      ],
    );
  }
}
