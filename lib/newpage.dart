import 'package:flutter/material.dart';

import 'package:flutter/cupertino.dart';

class Newpage extends StatefulWidget {
  // static String id ='Newpage';
  @override
  _NewpageState createState() => _NewpageState();
}

class _NewpageState extends State<Newpage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Center(
            child: Text(
              'Book Service',
              style: TextStyle(
                color: Colors.red[900],
              ),
            ),
          ),
        ),
        body: ListView(children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Container(
                    child: Material(
                  // elevation: 5,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30.0, vertical: 10),
                    child: SizedBox(
                      width: 350.0,
                      height: 200.0,
                      child: TextField(
                        style: TextStyle(fontSize: 20.0),
                        maxLines: 40,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          fillColor: Colors.white,
                          filled: true,
                          hintText: 'Enter Your Text',
                        ),
                      ),
                    ),
                  ),
                )),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, top: 20),
                child: Text(
                  'When you need service',
                  style: TextStyle(
                    color: Colors.red[900],
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 50),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Buttombutton(
                        name: ('Schedule an order'),
                      ),
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 50),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Buttombutton(
                        name: ('As soon As possiable'),
                      ),
                    ),
                  )
                ],
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 3,
                          offset: Offset(0, 3),
                        ),
                      ]),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                    child: Column(
                      children: [
                        Text(
                          'when You like Us to come to your Address',
                          style: TextStyle(
                            color: Colors.red[900],
                            fontSize: 15.0,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 150),
                          child: Material(

                            color: Colors.red[900],
                            borderRadius: BorderRadius.circular(26.0),
                            child: MaterialButton(

                              child: new Text(

                                'Select data',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ),

                         // Padding(
                         //   padding: const EdgeInsets.only(top:20),
                         //   child: Container(
                         //     width: 200,
                         //     height: 1,
                         //     color: Colors.red,
                         //
                         //   ),
                         // ),

                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Divider(
                            thickness: 3,

                            color: Colors.red[900],
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Text(
                            'when You like Us to come to your Address',
                            style: TextStyle(
                              color: Colors.red[900],
                              fontSize: 15.0,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 150),
                          child: Material(

                            color: Colors.red[900],
                            borderRadius: BorderRadius.circular(26.0),
                            child: MaterialButton(

                              child: new Text(

                                'Select data',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                ),
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 50, vertical: 10),
                    child: Buttombutton(
                      name: ('Countniue'),
                    ),
                  )
                ],
              ),
            ],
          ),
        ]),
      ),
    );
  }
}

class Buttombutton extends StatelessWidget {
  const Buttombutton({this.name});

  final String name;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.red[900],
      borderRadius: BorderRadius.circular(10),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: MaterialButton(
          onPressed: () {
            print("click");
          },
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Text(
                  name,
                  style: TextStyle(
                    color: Colors.white,
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
