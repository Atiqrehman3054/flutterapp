
import 'package:flutter/material.dart';
import 'package:pushnotification/YtoY.dart';
import 'package:pushnotification/newpage.dart';
import 'login.dart';
import 'booking.dart';
import 'newpage.dart';
import 'black&white.dart';
import 'Details.dart';
import 'Blur.dart';
import 'shadow.dart';
import 'package:get/get.dart';
import 'Filter.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      // initialRoute: '/Booking',
      // routes: {
      //   '/BW': (context) => BW(),
      //   '/login': (context) => login(),
      //   '/Booking': (context) => Booking(),
      //   '/Details': (context) => Details(),
      //   '/Newpage': (context) => Newpage(),
      //   '/MyApp': (context) => MyApp(),
      //   '/App': (context) => App(),
      //   '/Copy': (context) => Copy(),
      // },
      //


      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: Main()
    );
  }
}
 class Main extends StatelessWidget {
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         backgroundColor: Colors.red,
         title: Center(child: Text('Main page')),

       ),


       body: Container(
         child: Padding(
           padding: const EdgeInsets.only(left: 100),
           child: Column(
             mainAxisAlignment: MainAxisAlignment.center,
             crossAxisAlignment: CrossAxisAlignment.center,
             children: [
               Padding(
                 padding: const EdgeInsets.only(top: 20,
                 left: 20),
                 child: Material(
                   color: Colors.red,
                   borderRadius: BorderRadius.circular(26.0),
                   child: MaterialButton(


                     child: Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: Text('login button',
                       style: TextStyle(
                         fontWeight: FontWeight.bold,
                         fontSize: 20,
                         color: Colors.white,

                       ),
                       ),
                     ),
                       onPressed: (){

                       Get.to(login());

                   }),
                 ),
               ),
               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Material(
                   shadowColor: Colors.red,
                   color: Colors.red,
                   borderRadius: BorderRadius.circular(26.0),


                   child: MaterialButton(


                       child: Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: Text('BW',
                           style: TextStyle(
                             fontWeight: FontWeight.bold,
                             fontSize: 20,
                             color: Colors.white,

                           ),
                         ),
                       ),
                       onPressed: (){

                         Get.to(WidgetEditableImage());

                       }),
                 ),
               ),
               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Material(

                   color: Colors.red,
                   borderRadius: BorderRadius.circular(26.0),
                   child: MaterialButton(


                       child: Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: Text('Blur Image',
                           style: TextStyle(
                             fontWeight: FontWeight.bold,
                             fontSize: 20,
                             color: Colors.white,

                           ),
                         ),
                       ),
                       onPressed: (){

                         Get.to(Copy());

                       }),
                 ),
               ),
               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Material(

                   color: Colors.red,
                   borderRadius: BorderRadius.circular(26.0),
                   child: MaterialButton(


                       child: Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: Text('Shadow image',
                           style: TextStyle(
                             fontWeight: FontWeight.bold,
                             fontSize: 20,
                             color: Colors.white,

                           ),
                         ),
                       ),
                       onPressed: (){

                         Get.to(App());

                       }),
                 ),
               ),
               // Image.asset('assets/profile.jpg'),
               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Material(

                   color: Colors.red,
                   borderRadius: BorderRadius.circular(26.0),
                   child: MaterialButton(


                       child: Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: Text('Office',
                           style: TextStyle(
                             fontWeight: FontWeight.bold,
                             fontSize: 20,
                             color: Colors.white,

                           ),
                         ),
                       ),
                       onPressed: (){

                         Get.to(MyApp());

                       }),
                 ),
               ),
               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Material(
                   color: Colors.red,
                   borderRadius: BorderRadius.circular(26.0),
                   child: MaterialButton(


                       child: Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: Text('Booking',
                           style: TextStyle(
                             fontWeight: FontWeight.bold,
                             fontSize: 20,
                             color: Colors.white,

                           ),
                         ),
                       ),
                       onPressed: (){

                         Get.to(Booking());

                       }),
                 ),
               ),
               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Material(
                   borderRadius: BorderRadius.circular(30),
                   color: Colors.red,
                   child: MaterialButton(


                       child: Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: Text('Details',
                           style: TextStyle(
                             fontWeight: FontWeight.bold,
                             fontSize: 20,
                             color: Colors.white,

                           ),
                         ),
                       ),
                       onPressed: (){

                         Get.to(Details());

                       }),
                 ),
               ),
               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Material(
                   borderRadius: BorderRadius.circular(30),
                   color: Colors.red,
                   child: MaterialButton(


                       child: Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: Text('New Page',
                           style: TextStyle(
                             fontWeight: FontWeight.bold,
                             fontSize: 20,
                             color: Colors.white,

                           ),
                         ),
                       ),
                       onPressed: (){

                         Get.to(Newpage());

                       }),

                 ),
               ),
               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Material(
                   borderRadius: BorderRadius.circular(30),
                   color: Colors.red,
                   child: MaterialButton(


                       child: Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: Text('Y To Y',
                           style: TextStyle(
                             fontWeight: FontWeight.bold,
                             fontSize: 20,
                             color: Colors.white,

                           ),
                         ),
                       ),
                       onPressed: (){

                         Get.to(Name());

                       }),

                 ),
               ),



             ],
           ),
         ),
       ),

     );
   }
 }
