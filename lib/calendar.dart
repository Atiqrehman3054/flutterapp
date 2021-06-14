import 'package:flutter/material.dart';
import 'package:flutter_neat_and_clean_calendar/flutter_neat_and_clean_calendar.dart';

import 'package:expandable/expandable.dart';
import 'package:get/get.dart';

import 'profile_1_screen.dart';


import 'package:pushnotification/package.dart';
import 'Details.dart';

// import 'package:get/get.dart';

class CalendarScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CalendarScreenState();
  }
}

class _CalendarScreenState extends State<CalendarScreen> {
  final Map<DateTime, List<NeatCleanCalendarEvent>> _events = {
    DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day): [
      NeatCleanCalendarEvent('Event A',
          startTime: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day, 10, 0),
          endTime: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day, 12, 0),
          description: 'A special event',
          color: Colors.blue[700]),
    ],
    DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day + 2):
        [
      NeatCleanCalendarEvent('Event B',
          startTime: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day + 2, 10, 0),
          endTime: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day + 2, 12, 0),
          color: Colors.orange),
      NeatCleanCalendarEvent('Event C',
          startTime: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day + 2, 14, 30),
          endTime: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day + 2, 17, 0),
          color: Colors.red),
    ],
    DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day + 3):
        [
      NeatCleanCalendarEvent('Event B',
          startTime: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day + 2, 10, 0),
          endTime: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day + 2, 12, 0),
          color: Colors.orange),
      NeatCleanCalendarEvent('Event C',
          startTime: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day + 2, 14, 30),
          endTime: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day + 2, 17, 0),
          color: Colors.red),
      NeatCleanCalendarEvent('Event D',
          startTime: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day + 2, 14, 30),
          endTime: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day + 2, 17, 0),
          color: Colors.amber),
      NeatCleanCalendarEvent('Event E',
          startTime: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day + 2, 14, 30),
          endTime: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day + 2, 17, 0),
          color: Colors.deepOrange),
      NeatCleanCalendarEvent('Event F',
          startTime: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day + 2, 14, 30),
          endTime: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day + 2, 17, 0),
          color: Colors.green),
      NeatCleanCalendarEvent('Event G',
          startTime: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day + 2, 14, 30),
          endTime: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day + 2, 17, 0),
          color: Colors.indigo),
      NeatCleanCalendarEvent('Event H',
          startTime: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day + 2, 14, 30),
          endTime: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day + 2, 17, 0),
          color: Colors.brown),
    ],
  };

  @override
  void initState() {
    super.initState();
    // Force selection of today on first load, so that the list of today's events gets shown.
    _handleNewDate(DateTime(
        DateTime.now().year, DateTime.now().month, DateTime.now().day));
  }

  List<_SalesData> data = [
    _SalesData('Jan', 35),
    _SalesData('Feb', 28),
    _SalesData('Mar', 34),
    _SalesData('Apr', 32),
    _SalesData('May', 40)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Material(
            color: Colors.red,
            borderRadius: BorderRadius.circular(10),
            child: MaterialButton(
              child: Text(
                'Packages 4',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
              onPressed: () {
                Get.to(Profile1Screen());
              },
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.grey,
            ),
            height: 450,
            width: MediaQuery.of(context).size.width,
            child: Calendar(
              bottomBarColor: Colors.red,
              startOnMonday: true,
              weekDays: ['Mo', 'Di', 'Mi', 'Do', 'Fr', 'Sa', 'So'],
              events: _events,
              isExpandable: true,
              eventDoneColor: Colors.green,
              selectedColor: Colors.red,
              todayColor: Colors.blue,
              eventColor: Colors.grey,
              locale: 'de_DE',
              todayButtonText: 'Heute',
              expandableDateFormat: 'EEEE, dd. MMMM yyyy',
              dayOfWeekStyle: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w800,
                  fontSize: 11),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 150, vertical: 20),
          child: Text(
            'Training',
            style: kTextStyle.copyWith(),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 90, vertical: 20),
          child: Text(
            'UpComing Training',
            style: kTextStyle.copyWith(
              color: Colors.red,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: ListView.builder(
            itemCount: 2,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context, index){
              return Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Container(
                  decoration: kBoxDecoration(),

                  child: ExpandablePanel(
                      header: Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 30),
                                child: Text(
                                  '#Trainee',
                                  style: kTextStyle.copyWith(
                                      color: Colors.red, fontSize: 17),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 50),
                                child: Text(
                                  'Package',
                                  style: kTextStyle.copyWith(
                                      color: Colors.red, fontSize: 17),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 50),
                                child: Text(
                                  'Date',
                                  style: kTextStyle.copyWith(
                                      color: Colors.red, fontSize: 17),
                                ),
                              ),
                            ],
                          )),
                      expanded: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 0),
                            child: Container(
                              color: Colors.grey[350],
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(right: 50, left: 20),
                                    child: Text(
                                      'Kane jims',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold, fontSize: 15),
                                    ),
                                  ),
                                  Text(
                                    '30 Minutes',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold, fontSize: 15),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 50),
                                    child: Text(
                                      '12-May-2021',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold, fontSize: 15),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 150,vertical: 10),
                                  child: Text(
                                    'Timing',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15,
                                        color: Colors.red),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 120, vertical: 10 ),
                            child: Container(
                              color: Colors.grey[350],
                              child: Padding(
                                padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 1),
                                child: Row(
                                  children: [
                                    Text(
                                      '4:00 AM - ',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold, fontSize: 15),
                                    ),
                                    Text(
                                      '4:30 Am',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold, fontSize: 15),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Center(
                            child: Icon(Icons.mark_as_unread, size: 40,),
                          )
                        ],
                      )),
                ),
              );
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 90, vertical: 20),
          child: Text(
            'Confirmed Trainings',
            style: kTextStyle.copyWith(
              color: Colors.black,
            ),
          ),
        ),


      ],
    ));

  }

  void _handleNewDate(date) {
    print('Date selected: $date');
  }
}

class _SalesData {
  _SalesData(this.year, this.sales);

  final String year;
  final double sales;
}
