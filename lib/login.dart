import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class login extends StatefulWidget {
  // static String id = 'login';
  @override
  _loginState createState() => _loginState();
}

// ignore: camel_case_types
class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: [


           Column(

            children: [
                // Image(image: AssetImage(''))
               Image.asset(
                'assets/off.PNG',
                width: 400,
                height: 400,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 15),
                child: Text('Thank you',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.red[900],
                    fontSize: 30.0,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 65, vertical: 20),
                child: Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Text(
                      'Your order has been successfully submitted, our professional will be available soon.'
                          ,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,

                    ),
                       ),
                ),
              ),

            ],
          ),
            Padding(
              padding: const EdgeInsets.only(top: 210),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Buttombutton(name: ('Mybutton'),),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20,
                  left: 20),
              child: MaterialButton(


                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('blur button',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        backgroundColor: Colors.black,
                        color: Colors.white,

                      ),
                    ),
                  ),
                  onPressed: (){

                    Get.back();

                  }),
            ),


                  ],
        ),
      ),
    );



    // return SafeArea(
    //   child: Scaffold(
    //     backgroundColor: Colors.red,
    //
    //
    //     body: Padding(
    //       padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
    //       child: Container(
    //         child: Column(
    //           mainAxisAlignment: MainAxisAlignment.center,
    //           crossAxisAlignment: CrossAxisAlignment.start,
    //           children: [
    //            // new Image(image: AssetImage('assets/profile.png')),
    //              Padding(
    //                padding: const EdgeInsets.only(left: 35),
    //                child: Image.asset('assets/profile.PNG',
    //                 width: 300.0,
    //                 height: 200.0,
    //             ),
    //              ),
    //             Center(
    //                 child: Text(
    //               'Login',
    //               style: TextStyle(
    //                 color: Colors.white,
    //                 fontWeight: FontWeight.bold,
    //                 fontSize: 20,
    //               ),
    //             )),
    //             Padding(
    //               padding: const EdgeInsets.only(left: 20),
    //               child: Text('Name',
    //                 style: TextStyle(
    //                   color: Colors.white,
    //                   fontWeight: FontWeight.bold,
    //                   fontSize: 15,
    //                 ),),
    //             ),
    //             Padding(
    //               padding: const EdgeInsets.all(8.0),
    //               child: TextField(
    //                 decoration: InputDecoration(
    //                     filled: true,
    //                     fillColor: Colors.white,
    //                     border: OutlineInputBorder(
    //                       borderRadius: BorderRadius.circular(30.0),
    //                     )),
    //               ),
    //             ),
    //             Padding(
    //               padding: const EdgeInsets.only(left: 20),
    //               child: Text('password',
    //
    //                   style: TextStyle(
    //                     color: Colors.white,
    //                     fontWeight: FontWeight.bold,
    //                     fontSize: 15,
    //                   ),),
    //             ),
    //             Padding(
    //               padding: const EdgeInsets.all(8.0),
    //               child: TextField(
    //                 decoration: InputDecoration(
    //                     fillColor: Colors.white,
    //                     filled: true,
    //                     border: OutlineInputBorder(
    //                       borderRadius: BorderRadius.circular(30.0),
    //                     )),
    //               ),
    //             ),
    //             Padding(
    //               padding: const EdgeInsets.only(left: 30),
    //               child: Material(
    //                 color: Colors.black,
    //                 borderRadius: BorderRadius.circular(30.0),
    //
    //                 child: MaterialButton(
    //                   child: Padding(
    //                     padding: const EdgeInsets.symmetric(horizontal: 120),
    //                     child: Text('login',
    //                     style: TextStyle(
    //                       color: Colors.white,
    //                       fontWeight: FontWeight.bold,
    //
    //                     ),),
    //                   ),
    //
    //
    //                 ),
    //               ),
    //             )
    //           ],
    //         ),
    //       ),
    //     ),
    //   ),
    // );
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
                padding: const EdgeInsets.only(left: 100),
                child: Text(
                  '',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 40),
                child: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white,
                  size: 24.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
