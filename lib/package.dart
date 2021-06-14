import 'package:flutter/material.dart';
import 'Details.dart';
import 'package:expandable/expandable.dart';

class Package extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.grey[850],
            title: Center(
              child: Text('YTOY'),
            ),
          ),
          body: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 20, vertical: 25),
                child: Container(
                  decoration: kBoxDecoration(),

                  // decoration: BoxDecoration(
                  //   borderRadius: BorderRadius.all(Radius.circular(10)),
                  //   boxShadow: [
                  //     BoxShadow(
                  //       color: Colors.grey.withOpacity(0.5),
                  //       spreadRadius: 7,
                  //         blurRadius: 5,
                  //       offset: Offset(0,5),
                  //     )
                  //   ],
                  //
                  // ),

                  child: Row(
                    children: [
                      Padding(
                        padding:
                        const EdgeInsets.only(right: 0, top: 10, bottom: 10),
                        child: Image.asset(
                          'assets/profile.jpg',
                          height: 150,
                          width: 150,
                          scale: 10,
                          filterQuality: FilterQuality.low,
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 20),
                            child: Text(
                              'James White',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                          ),
                          Text('Football'),
                          Text('17 Years Of exprience'),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text('Package', style: kTextStyle),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 20, vertical: 20),
                child: Container(
                  decoration: kBoxDecoration(),
                  child: ExpandablePanel(header: Padding(
                    padding: const EdgeInsets.only(left: 60),
                    child: Text('30 Minutes Training', style: kTextStyle),
                  ), expanded: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  right: 140, left: 20),
                              child: Text(
                                'Date',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 15),
                              ),
                            ),
                            Text(
                              'Price',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 50),
                              child: Text(
                                'Trainees',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 15),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  right: 90, left: 20),
                              child: Text(
                                '4/13/2021',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 15),
                              ),
                            ),
                            Text(
                              '5D',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 80),
                              child: Text(
                                '1',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 15),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Container(
                          color: Colors.grey[350],
                          child: Row(
                            children: [
                              Padding(
                                padding:
                                const EdgeInsets.only(right: 90, left: 110),
                                child: Text(
                                  'From',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15),
                                ),
                              ),
                              Text(
                                'To',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 15),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        color: Colors.grey[350],
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  right: 70, left: 110),
                              child: Text(
                                '7:00 AM',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 15),
                              ),
                            ),
                            Text(
                              '8:00 Am',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            ),
                          ],
                        ),
                      ),
                      Center(
                          child: Icon(
                            Icons.arrow_drop_up,
                            size: 40,
                          )),

                    ],
                  )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 20, vertical: 0),
                child: Container(
                  decoration: kBoxDecoration(),
                  child: Column(
                    children: [
                      ExpandablePanel(
                        header: Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text(
                              '30 Minutes Group Training', style: kTextStyle),
                        ),
                        expanded: Column(
                          children: [
                            Center(
                                child: Icon(
                                  Icons.arrow_drop_down_sharp,
                                  size: 40,
                                )),
                          ],
                        ),
                      ),

                    ],
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 20, vertical: 20),
                child: Container(
                  decoration: kBoxDecoration(),
                  child: ExpandablePanel(header: Padding(
                    padding: const EdgeInsets.only(left: 100),
                    child: Text(
                      '1 Hour  Training',
                      style: kTextStyle.copyWith(
                        fontSize: 25,
                      ),
                    ),
                  ),  expanded:   Center(
                      child: Icon(
                        Icons.arrow_drop_down_sharp,
                        size: 40,
                      )), ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 20, vertical: 20),
                child: Container(
                  decoration: kBoxDecoration(),
                  child: ExpandablePanel(header: Padding(
                    padding: const EdgeInsets.only(left: 50),
                    child: Text(
                      '1 Hour Group Training',
                      style: kTextStyle.copyWith(
                        fontSize: 25,
                      ),
                    ),
                  ),  expanded:   Center(
                      child: Icon(
                        Icons.arrow_drop_down_sharp,
                        size: 40,
                      )), ),
                ),
              ),
            ],
          ),
        ));
  }
}

const kTextStyle = TextStyle(
  fontSize: 25,
  fontWeight: FontWeight.bold,
  color: Colors.black,
);
