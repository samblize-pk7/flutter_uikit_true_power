import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_uikit_true_power/Modules/flight_booking_app/view/fb_login_view.dart';


import 'package:ionicons/ionicons.dart';

enum PassengerType { AD, CH, IN }
enum TicketType { oneWay, roundTrip }

class FBSearchFlightView extends StatefulWidget {
  const FBSearchFlightView({Key? key}) : super(key: key);

  @override
  State<FBSearchFlightView> createState() => _FBSearchFlightViewState();
}

class _FBSearchFlightViewState extends State<FBSearchFlightView> {
  int _passengers = 2;
  PassengerType _passengerType = PassengerType.AD;
  TicketType _ticketType = TicketType.oneWay;
  @override
  Widget build(BuildContext context) {
    final EdgeInsets _padding =
        EdgeInsets.symmetric(horizontal: 20, vertical: 8);
    return Theme(
      data: fbPinkThemData,
      child: Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          elevation: 0,
        ),
        body: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 305,
                  child: Stack(
                    children: [
                      Container(
                        height: 270,
                        color: Colors.indigo[900],
                        child: Stack(children: [
                          Positioned(
                            left: 5,
                            child: Opacity(
                              opacity: .12,
                              child: Image.asset(
                                'assets/images/flight_booking/globe-white.png',
                                width: MediaQuery.of(context).size.width * 1.4,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width,
                            child: Column(
                              children: [
                                Stack(children: [
                                  Center(
                                    child: Image.asset(
                                      'assets/images/flight_booking/flight-2.png',
                                    ),
                                  ),
                                  Positioned(
                                      top: 40,
                                      width: MediaQuery.of(context).size.width,
                                      child: Center(
                                        child: Text(
                                          '11h 10m',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 11,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      )),
                                ]),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 40, vertical: 5),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: const [
                                          Text(
                                            'Departure from',
                                            style: TextStyle(
                                                color: Colors.white70,
                                                fontSize: 12),
                                          ),
                                          Text(
                                            'DAC',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 22,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Text(
                                            'Dhaka',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 12),
                                          ),
                                        ],
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: const [
                                          Text(
                                            'Arrival at',
                                            style: TextStyle(
                                                color: Colors.white70,
                                                fontSize: 12),
                                          ),
                                          Text(
                                            'SIN',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 22,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Text(
                                            'Singapore',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 12),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                Opacity(
                                  opacity: .8,
                                  child: Center(
                                    child: Image.asset(
                                      'assets/images/flight_booking/line.png',
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ]),
                      ),
                      Positioned(
                          bottom: 10,
                          width: MediaQuery.of(context).size.width,
                          child: Container(
                              margin: EdgeInsets.symmetric(horizontal: 30),
                              height: 55,
                              decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(0.1),
                                      spreadRadius: 1,
                                      blurRadius: 12,
                                      offset: Offset(
                                          2, 4), // changes position of shadow
                                    ),
                                  ],
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(30)),
                              child: Stack(
                                children: [
                                  AnimatedPositioned(
                                    duration: Duration(milliseconds: 200),
                                    left: _ticketType == TicketType.oneWay
                                        ? 0
                                        : (MediaQuery.of(context).size.width -
                                                60) /
                                            2,
                                    top: 5,
                                    width: (MediaQuery.of(context).size.width -
                                            60) /
                                        2,
                                    child: Container(
                                      margin:
                                          EdgeInsets.symmetric(horizontal: 5),
                                      height: 45,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(30),
                                        color: Colors.pink[400],
                                      ),
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                          child: GestureDetector(
                                        onTap: () => setState(() {
                                          _ticketType = TicketType.oneWay;
                                        }),
                                        child: Container(
                                          margin: EdgeInsets.symmetric(
                                              horizontal: 5),
                                          height: 45,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(30),
                                            // color: Colors.pink[400],
                                          ),
                                          child: Center(
                                            child: Text(
                                              'One Way',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                color: _ticketType ==
                                                        TicketType.oneWay
                                                    ? Colors.white
                                                    : Colors.grey[900],
                                                fontSize: 16,
                                              ),
                                            ),
                                          ),
                                        ),
                                      )),
                                      Expanded(
                                          child: GestureDetector(
                                        onTap: () => setState(() {
                                          _ticketType = TicketType.roundTrip;
                                        }),
                                        child: Container(
                                          margin: EdgeInsets.symmetric(
                                              horizontal: 5),
                                          child: Center(
                                            child: Text(
                                              'Round Trip',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                color: _ticketType ==
                                                        TicketType.roundTrip
                                                    ? Colors.white
                                                    : Colors.grey[900],
                                                fontSize: 16,
                                              ),
                                            ),
                                          ),
                                        ),
                                      )),
                                    ],
                                  ),
                                ],
                              )))
                    ],
                  ),
                ),
                Padding(
                  padding: _padding,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(4),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          spreadRadius: 1,
                          blurRadius: 10,
                          offset: Offset(2, 4), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Ionicons.today_outline,
                          color: Colors.grey,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                            height: 35,
                            width: 1,
                            color: Colors.grey[300],
                          ),
                        ),
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                'Select',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                'Travel Date',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 12,
                                ),
                              )
                            ])
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: _padding,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(4),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          spreadRadius: 1,
                          blurRadius: 10,
                          offset: Offset(2, 4), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              Ionicons.woman_outline,
                              color: Colors.grey,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Container(
                                height: 35,
                                width: 1,
                                color: Colors.grey[300],
                              ),
                            ),
                            Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Business class',
                                    style: TextStyle(
                                        color: Colors.pink[400],
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    'Comfortable',
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 12,
                                    ),
                                  )
                                ])
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Ionicons.people_outline,
                                  color: Colors.grey,
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Container(
                                    height: 35,
                                    width: 1,
                                    color: Colors.grey[300],
                                  ),
                                ),
                                Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Passengers',
                                        style: TextStyle(
                                            color: Colors.pink[400],
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        'Adults (12Y+)',
                                        style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 12,
                                        ),
                                      )
                                    ]),
                              ],
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Expanded(
                              child: SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                reverse: true,
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 5),
                                      child: GestureDetector(
                                        onTap: () => setState(() {
                                          _passengerType = PassengerType.AD;
                                        }),
                                        child: CircleAvatar(
                                          backgroundColor:
                                              _passengerType == PassengerType.AD
                                                  ? Colors.pink[400]
                                                  : Colors.grey[400],
                                          child: Text(
                                            'AD',
                                            style: TextStyle(
                                                fontSize: 14,
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 5),
                                      child: GestureDetector(
                                        onTap: () => setState(() {
                                          _passengerType = PassengerType.CH;
                                        }),
                                        child: CircleAvatar(
                                          backgroundColor:
                                              _passengerType == PassengerType.CH
                                                  ? Colors.pink[400]
                                                  : Colors.grey[400],
                                          child: Text(
                                            'CH',
                                            style: TextStyle(
                                                fontSize: 14,
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 5),
                                      child: GestureDetector(
                                        onTap: () => setState(() {
                                          _passengerType = PassengerType.IN;
                                        }),
                                        child: CircleAvatar(
                                          backgroundColor:
                                              _passengerType == PassengerType.IN
                                                  ? Colors.pink[400]
                                                  : Colors.grey[400],
                                          child: Text(
                                            'IN',
                                            style: TextStyle(
                                                fontSize: 14,
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Ionicons.chevron_back,
                              color: Colors.grey,
                            ),
                            ...List.generate(
                                5,
                                (int index) => GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          _passengers = index + 1;
                                        });
                                        print(_passengers);
                                      },
                                      child: AnimatedContainer(
                                        duration: Duration(milliseconds: 200),
                                        width: 30,
                                        height: 30,
                                        margin:
                                            EdgeInsets.symmetric(horizontal: 3),
                                        decoration: BoxDecoration(
                                            border: _passengers - 1 == index
                                                ? Border.all(
                                                    color: Colors.pink[400]!)
                                                : null,
                                            borderRadius:
                                                BorderRadius.circular(50)),
                                        child: Center(
                                          child: Text(
                                            (index + 1).toString(),
                                            style: TextStyle(
                                                color: _passengers - 1 == index
                                                    ? Colors.pink[400]
                                                    : null),
                                          ),
                                        ),
                                      ),
                                    )),
                            Icon(
                              Ionicons.chevron_forward,
                              color: Colors.grey,
                            ),
                          ],
                        ),
                      
                      ],
                    ),
                  ),
                ),  Padding(
                  padding: _padding,
                  child: Row(
                            children: [
                              Expanded(
                                  child: Container(padding: EdgeInsets.symmetric(vertical: 12),
                                decoration: BoxDecoration(
                                    color: Colors.pink[400],
                                    borderRadius: BorderRadius.circular(30)),
                                child: Center(
                                  child: Text('Search Flight',style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold),),
                                ),
                              ))
                            ],
                          ),
                )
              ]),
        ),
      ),
    );
  }
}
