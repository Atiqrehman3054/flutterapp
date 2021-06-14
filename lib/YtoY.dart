import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:pushnotification/intro.dart';

class Name extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child:

         Scaffold(
           backgroundColor: Colors.red[900],
          body: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                    child: Material(
                      color: Colors.black87,
                      borderRadius: BorderRadius.circular(30),

                      child: MaterialButton(

                        child: Padding(
                          padding: const EdgeInsets.only(left: 120,right: 120),
                          child: Text('Log In',
                          style: TextStyle(
                            color: Colors.white
                          ),),
                        ),
                        onPressed: (){

                      },),
                    ),
                  ),
                Text('OR'
                , style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                  ),),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                  child: Material(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(30),

                    child: MaterialButton(

                      child: Padding(
                        padding: const EdgeInsets.only(left: 120,right: 120),
                        child: Text('Sign',
                          style: TextStyle(
                              color: Colors.white
                          ),),
                      ),
                      onPressed: (){
                               Get.to(Intro());
                      },),
                  ),
                ),
              ],
            ),

          ),
         )
    );
  }
}
