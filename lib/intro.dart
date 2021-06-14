import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neat_and_clean_calendar/flutter_neat_and_clean_calendar.dart';
import 'package:get/get.dart';
import 'package:pushnotification/Category.dart';
import 'package:pushnotification/package.dart';
import 'package:pushnotification/sport.dart';
import 'calendar.dart';

class Intro extends StatefulWidget {
  @override
  _IntroState createState() => _IntroState();
}

class _IntroState extends State<Intro> {
  @override
  Widget build(BuildContext context) {
    List<String> _locations = ['A', 'B', 'C', 'D']; // Option 2
    String _selectedLocation;

    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.grey[800],
      appBar: AppBar(
        backgroundColor: Colors.grey[800],
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 140),
            child: Image.asset(
              'assets/anny.PNG',
              height: 300,
              width: 300,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 160),
            child: Text(
              'Find The High School and College'
              ' Trainer In Your Area',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  letterSpacing: 2),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
            child: Material(
              borderRadius: BorderRadius.circular(30),
              child: DropdownButton(
                hint: Padding(
                  padding: const EdgeInsets.only(left: 50),
                  child: Text(
                    'FootBall',
                    style: TextStyle(),
                  ),
                ), // Not necessary for Option 1
                value: _selectedLocation,
                onChanged: (newValue) {
                  setState(() {
                    _selectedLocation = newValue;
                  });
                },
                items: _locations.map((location) {
                  return DropdownMenuItem(
                    child: new Text(location),
                    value: location,
                  );
                }).toList(),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 0),
            child: Material(
              borderRadius: BorderRadius.circular(30),
              child: DropdownButton(
                hint: Padding(
                  padding: const EdgeInsets.only(left: 50),
                  child: Text(
                    'LA',
                    style: TextStyle(),
                  ),
                ), // Not necessary for Option 1
                value: _selectedLocation,
                onChanged: (newValue) {
                  setState(() {
                    _selectedLocation = newValue;
                  });
                },
                items: _locations.map((location) {
                  return DropdownMenuItem(
                    child: new Text(location),
                    value: location,
                  );
                }).toList(),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
            child: Material(
              color: Colors.red,
              borderRadius: BorderRadius.circular(26),
              child: MaterialButton(
                child: Text(
                  'Find Your TRAINER',
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: (){
                    Get.to(Package());
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 50),
            child: Row(
              children: [
                Material(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.red,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 25),
                    child: MaterialButton(
                        child: Icon(
                          Icons.account_balance_outlined,
                          color: Colors.white,
                          size: 60,
                        ),
                        onPressed: () {
                          Get.to(Category());
                        }),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Material(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.red,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 25),
                      child: MaterialButton(
                          child: Icon(
                            Icons.ac_unit_rounded,
                            color: Colors.white,
                            size: 60,
                          ),
                          onPressed: () {
                            Get.to(Sport());
                          }),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 45, vertical: 19),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(10)),

                  // decoration: BoxDecoration(

                  //   borderRadius: BorderRadius.circular(20),

                  // ),

                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 20),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Icon(
                            Icons.account_balance_outlined,
                            color: Colors.white,
                            size: 40,
                          ),
                        ),
                        Text(
                          'Academics',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 20),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Icon(
                            Icons.adjust_rounded,
                            color: Colors.white,
                            size: 40,
                          ),
                        ),
                        Text(
                          'Sports',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          Container(
            color: Colors.red,
            child: Column(
              children: [
                Text(
                  'Featured',
                  style: TextStyle(
                      fontSize: 40,
                      color: Colors.grey[850],
                      fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30, left: 150),
                  child: Text(
                    'Trainer',
                    style: TextStyle(
                        fontSize: 40,
                        color: Colors.white54,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,

                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Stack(
                        children: [
                           Container(
                            decoration: BoxDecoration(

                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Positioned(
                              height: 300,
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: CircleAvatar(
                                      maxRadius: 60,
                                      backgroundImage: AssetImage('assets/off.PNG'),
                                    ),
                                  ),



                                  Material(
                                    child: MaterialButton(
                                        child: Text(
                                          'James White',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        onPressed: (){
                                      Get.to(Package());

                                    }),
                                  ),
                                  Text(
                                    'Football',
                                    style: TextStyle(),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Stack(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Positioned(
                              height: 300,
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(0.0),
                                    child: CircleAvatar(
                                      maxRadius: 50,
                                      backgroundImage: AssetImage('assets/off.PNG'),
                                    ),
                                  ),
                                  MaterialButton(
                                    child: Text(
                                      'James White',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    onPressed: (){
                                      Get.to(CalendarScreen());
                                    },
                                  ),
                                  Text(
                                    'Football',
                                    style: TextStyle(),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Stack(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Positioned(
                              height: 300,
                              child: Column(
                                children: [
                                  CircleAvatar(
                                    maxRadius: 40,
                                    backgroundImage: AssetImage('assets/off.PNG'),
                                  ),
                                  Text(
                                    'James White',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    'Football',
                                    style: TextStyle(),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 30, right: 150),
                  child: Text(
                    'Academics',
                    style: TextStyle(
                        fontSize: 40,
                        color: Colors.white54,
                        fontWeight: FontWeight.bold),
                  ),
                ),


                Padding(
                  padding: const EdgeInsets.only(top: 20,bottom: 40),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,

                    children: [

                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Stack(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Positioned(
                                height: 300,
                                child: Column(
                                  children: [
                                    CircleAvatar(
                                      maxRadius: 40,
                                      backgroundImage: AssetImage('assets/off.PNG'),
                                    ),
                                    Text(
                                      'James White',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      'Football',
                                      style: TextStyle(),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Stack(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Positioned(
                                height: 300,
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(0.0),
                                      child: CircleAvatar(
                                        maxRadius: 50,
                                        backgroundImage: AssetImage('assets/off.PNG'),
                                      ),
                                    ),
                                    Text(
                                      'James White',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      'Football',
                                      style: TextStyle(),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Stack(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Positioned(
                                height: 300,
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: CircleAvatar(
                                        maxRadius: 60,
                                        backgroundImage: AssetImage('assets/off.PNG'),
                                      ),
                                    ),
                                    Text(
                                      'James White',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      'Football',
                                      style: TextStyle(),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),

                )

              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 110,vertical: 30),
            child: Text('Community Benefits',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.white,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 10),
            child: Column(
       mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [


                Text('-high quailty youth trainer verifed reviews '
                    'in person and online training',
                style: TextStyle(
                  color: Colors.white,

                ),),
                Text('-simple scheduling with unique calnder system',
                  style: TextStyle(
                    color: Colors.white,
                  )
                  ),
                Text('-secure and enconvent y2y chat paltform',
                  style: TextStyle(
                    color: Colors.white,
                  )
                  ),
                Text('-automate reminder each training'
                '-Easy payment mathod no need cash use paypal acounts',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                ),

              ],
            ),
          )
        ],
      ),
    ));
  }
}
