import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class App extends StatefulWidget {
  // static String id = 'App';
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(

      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey,
          title: Center(child: Text('black_white Image')),

        ),

        body: Padding(
          padding: const EdgeInsets.only(top: 0,left: 30, right: 30),
          child: Center(
            child: Container(

              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(1.0),
                    spreadRadius: 20,
                    blurRadius: 10,
                    offset: Offset(0, 7),
                  ),
                ],
              ),

              child: Image.asset('assets/profile.jpg'
              ),
            ),
          ),
        ),
      ),
    );
  }
}
