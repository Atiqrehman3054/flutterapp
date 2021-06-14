import 'package:flutter/material.dart';

import 'package:flutter/cupertino.dart';

class Booking extends StatefulWidget {
  // static String id ='Booking';
  @override
  _BookingState createState() => _BookingState();
}

class _BookingState extends State<Booking> {
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
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Container(
                  child: Material(
                    // elevation: 5,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30.0,vertical: 10),
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
                  )
              ),
            ),




            
            Padding(
              padding: const EdgeInsets.only(left: 30, top: 20),
              child: Text('When you need service',
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
                    child: Buttombutton(name: ('As Soon As Possible'),
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
                    child: Buttombutton(name: (''),

                    ),
                  ),
                )
              ],
            ),

            Column(

              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50,vertical: 250),
                  child: Buttombutton(name: ('Continue'),
                  ),
                )
              ],
            ),

            
          ],
        ),
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
          onPressed: (){print("click");},
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





