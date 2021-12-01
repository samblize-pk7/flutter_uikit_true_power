import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class TaskWidget extends StatelessWidget {
  const TaskWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const int selectedDay = 3;
    return Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
      FadeInDown(
        duration: Duration(milliseconds: 400),
        delay: Duration(milliseconds: 400),
        child: Text(
          'Tasks',
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
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: FadeInDown(
            duration: Duration(milliseconds: 400),
          delay: Duration(milliseconds: 550),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(
                7,
                (i) => Container(
                      padding: EdgeInsets.symmetric(horizontal: 7, vertical: 4),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: selectedDay == i ? Color(0xffEFAB3E) : null,
                      ),
                      child: Column(
                        children: [
                          Text(
                            _data[i]['weekNum'],
                            style: TextStyle(
                                color: selectedDay == i
                                    ? Colors.white
                                    : Colors.grey),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            _data[i]['day'],
                            style: TextStyle(
                                color: selectedDay == i
                                    ? Colors.white
                                    : Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                        ],
                      ),
                    )),
          ),
        ),
      ),
      SizedBox(
        height: 20,
      ),
      Padding(
        padding: const EdgeInsets.only(left: 30, right: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ElasticInLeft(
              duration: Duration(milliseconds: 600),
              delay: Duration(milliseconds: 600),
              child: Task(
                  color: Colors.orange[300]!,
                  title: 'compiler user testing',
                  description: 'compilation date 20 Aug'),
            ),
            ElasticInLeft(
               duration: Duration(milliseconds: 600),
              delay: Duration(milliseconds: 700),
              child: Task(
                  color: Colors.blue[300]!,
                  title: 'compiler user testing',
                  description: 'compilation date 12 Nov'),
            ),
            ElasticInLeft(
              duration: Duration(milliseconds: 600),
              delay: Duration(milliseconds: 800),
              child: Task(
                  color: Colors.greenAccent,
                  title: 'change color pallet',
                  description: 'compilation date 11 Dec'),
            ),
            ElasticInLeft(
              duration: Duration(milliseconds: 600),
              delay: Duration(milliseconds: 900),
              child: Task(
                  color: Colors.purple[200]!,
                  title: 'use Firebase in Project',
                  description: 'compilation date 25 Aug'),
            ),
            ElasticInLeft(
                 duration: Duration(milliseconds: 600),
              delay: Duration(milliseconds: 1000),
              child: Task(
                  color: Colors.pink[200]!,
                  title: 'Analyzing data',
                  description: 'compilation date 27 Aug'),
            ),
            ElasticInLeft(
                 duration: Duration(milliseconds: 600),
              delay: Duration(milliseconds: 1100),
              child: Task(
                  color: Colors.cyan[300]!,
                  title: 'Run the server',
                  description: 'compilation date 5 May'),
            ),
            Task(
                color: Colors.tealAccent[400]!,
                title: 'compiler user testing',
                description: 'compilation date 20 Aug'),
            Task(
                color: Colors.pink[300]!,
                title: 'Do all the mini task',
                description: 'compilation date 20 Aug'),
            Task(
                color: Colors.orange[300]!,
                title: 'complete the project',
                description: 'compilation date 2 Oct'),
          ],
        ),
      )
    ]);
  }
}

class Task extends StatefulWidget {
  final Color color;
  final String title;
  final String description;
  const Task({
    Key? key,
    required this.color,
    required this.title,
    required this.description,
  }) : super(key: key);

  @override
  _TaskState createState() => _TaskState();
}

class _TaskState extends State<Task> {
  bool? checkBoxValue = false;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(duration: Duration(milliseconds: 300),
      padding: EdgeInsets.all(15),
      margin: EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: checkBoxValue! ? widget.color.withOpacity(.2) : widget.color),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.title,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17 ,decoration:checkBoxValue!? TextDecoration.lineThrough:null),
              ),
              SizedBox(
                height: 8,
              ),
              Text(widget.description),
            ],
          ),
          Checkbox(
            value: checkBoxValue,
            onChanged: (v) => setState(() => checkBoxValue = v),
          )
        ],
      ),
    );
  }
}

List<dynamic> _data = [
  {'day': '15', 'weekNum': 'S'},
  {'day': '16', 'weekNum': 'S'},
  {'day': '17', 'weekNum': 'M'},
  {'day': '18', 'weekNum': 'T'},
  {'day': '19', 'weekNum': 'W'},
  {'day': '20', 'weekNum': 'T'},
  {'day': '21', 'weekNum': 'F'},
];
