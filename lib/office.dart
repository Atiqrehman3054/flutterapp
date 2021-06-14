import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  // static String id ='MyApp';
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(
          children: [
            new Image.asset(
              'first.jpeg',
              width: 300,
              height: 400,
            ),
            Text('Thank You'),
            Text(
                'Your order has been successfully submitted, our professional will be available soon.'),
      Row(
        children: [
          Material(
            color: Colors.red,
            borderRadius: BorderRadius.circular(10),
            child: MaterialButton(
              child: Text(
                'My Bookings',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          )
        ],
      )
            ],
          ),
        ),
    );
  }
}
