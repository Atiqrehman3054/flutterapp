import 'package:flutter/material.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/cupertino.dart';
import 'Address.dart';
import 'Details.dart';
import 'Category.dart';
import 'package:get/get.dart';

import 'package:flutter/material.dart';
import 'package.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class Sport extends StatefulWidget {
  @override
  _SportState createState() => _SportState();
}

class _SportState extends State<Sport> {
  int _groupValue = -1;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[850],
        appBar: AppBar(
          backgroundColor: Colors.grey[850],
          title: Text('y2y'),
        ),
        body: ListView(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          children: [
            Container(
              child: Column(
                children: [

                  Padding(
                    padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: ExpandablePanel(
                        header: Text(''),
                        collapsed: Container(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 150),
                            child: Text('Category '),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: ExpandablePanel(
                        header: Text(''),
                        collapsed: Container(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 150),
                            child: Text('name '),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        Container(
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Expanded(
                                    flex: 3,
                                    child: RadioListTile(
                                      value: 0,
                                      groupValue: _groupValue,
                                      title: Text("Inpreson",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      onChanged: (newValue) =>
                                          setState(() => _groupValue = newValue),
                                      activeColor: Colors.white,
                                      selected: false,
                                    ),
                                  ),
                                  Expanded(
                                    flex: 3,
                                    child: RadioListTile(
                                      value: 1,
                                      groupValue: _groupValue,
                                      title: Text(
                                        "Online",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      onChanged: (newValue) =>
                                          setState(() => _groupValue = newValue),
                                      activeColor: Colors.white,
                                      selected: false,
                                    ),
                                  ),
                                  Expanded(
                                    flex: 3,
                                    child: RadioListTile(
                                      value: 2,
                                      groupValue: _groupValue,
                                      title: Text(
                                        "Both",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      onChanged: (newValue) =>
                                          setState(() => _groupValue = newValue),
                                      activeColor: Colors.white,
                                      selected: false,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                    child: Material(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(26),
                      child: MaterialButton(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 70),
                          child: Text(
                            'Find Your TRAINER',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        onPressed: (){

                        },
                      ),
                    ),
                  ),

                  Text(
                    'Sport',
                    style: kTextStyle.copyWith(
                      color: Colors.white,
                    ),
                  ),

                // ListView.builder(
                //   itemCount: 5,
                //     shrinkWrap: true,
                //     physics: NeverScrollableScrollPhysics(),
                //     itemBuilder: (context, index){
                //     return ;
                //     }
                //     ),



                  ListView.builder(
                    itemCount: 5,
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemBuilder:(context, index){

                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25,vertical: 15),
                        child: Container(
                          decoration: kBoxDecoration(),
                          child: Column(
                            children: [

                              Padding(
                                padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 15),
                                child: Row(
                                  children: [
                                    CircleAvatar(

                                      backgroundImage: AssetImage('assets/profile.jpg',
                                      ),

                                      maxRadius: 60,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 10,bottom: 30),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [

                                          Text('James White',
                                            style: kTextStyle.copyWith(

                                            ),),
                                          Text('Football'),
                                          Text('Experince 17 Years'),
                                          Row(
                                            children: [
                                              Icon(Icons.star,
                                                color: Colors.yellow,),
                                              Icon(Icons.star,
                                                color: Colors.yellow,),
                                              Icon(Icons.star,
                                                color: Colors.yellow,),
                                              Icon(Icons.star,
                                                color: Colors.yellow,),


                                            ],
                                          )
                                        ],

                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 270,top: 20,
                                    bottom:5),
                                child: Text('Bio',style: kTextStyle),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 20),
                                child: Text('The UEFA Champions League (abbreviated as UCL) is an annual '
                                    'club football competition organised by the Union of European'
                                    ' Football Associations (UEFA) and contested by top-division'

                                    'club competition in European football, played by the national'
                                    ' league champions (and, for some nations, one o'
                                    'r more runners-up) of their national associations.'),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 0),
                                child: Text(
                                  'Find Your TRAINER',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 5),
                                child: Material(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(26),
                                  child: MaterialButton(
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 70),
                                      child: Text(
                                        'Profile',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                    onPressed: (){

                                    },
                                  ),
                                ),
                              ),

                            ],
                          ),
                        ),
                      );

                  }),

                // ,
                //
                //   Padding(
                //     padding: const EdgeInsets.symmetric(horizontal: 25,vertical: 15),
                //     child: Container(
                //       decoration: kBoxDecoration(),
                //       child: Column(
                //         children: [
                //
                //           Padding(
                //             padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 15),
                //             child: Row(
                //               children: [
                //                 CircleAvatar(
                //
                //                   backgroundImage: AssetImage('assets/profile.jpg',
                //                   ),
                //
                //                   maxRadius: 60,
                //                 ),
                //                 Padding(
                //                   padding: const EdgeInsets.only(left: 10,bottom: 30),
                //                   child: Column(
                //                     crossAxisAlignment: CrossAxisAlignment.start,
                //                     children: [
                //
                //                       Text('James White',
                //                         style: kTextStyle.copyWith(
                //
                //                         ),),
                //                       Text('Football'),
                //                       Text('Experince 17 Years'),
                //                       Row(
                //                         children: [
                //                           Icon(Icons.star,
                //                             color: Colors.yellow,),
                //                           Icon(Icons.star,
                //                             color: Colors.yellow,),
                //                           Icon(Icons.star,
                //                             color: Colors.yellow,),
                //                           Icon(Icons.star,
                //                             color: Colors.yellow,),
                //
                //
                //                         ],
                //                       )
                //                     ],
                //
                //                   ),
                //                 )
                //               ],
                //             ),
                //           ),
                //           Padding(
                //             padding: const EdgeInsets.only(right: 270,top: 20,
                //                 bottom:5),
                //             child: Text('Bio',style: kTextStyle),
                //           ),
                //           Padding(
                //             padding: const EdgeInsets.symmetric(horizontal: 20),
                //             child: Text('The UEFA Champions League (abbreviated as UCL) is an annual '
                //                 'club football competition organised by the Union of European'
                //                 ' Football Associations (UEFA) and contested by top-division'
                //
                //                 'club competition in European football, played by the national'
                //                 ' league champions (and, for some nations, one o'
                //                 'r more runners-up) of their national associations.'),
                //           ),
                //           Padding(
                //             padding: const EdgeInsets.symmetric(horizontal: 0),
                //             child: Text(
                //               'Find Your TRAINER',
                //               style: TextStyle(color: Colors.white),
                //             ),
                //           ),
                //           Padding(
                //             padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 5),
                //             child: Material(
                //               color: Colors.red,
                //               borderRadius: BorderRadius.circular(26),
                //               child: MaterialButton(
                //                 child: Padding(
                //                   padding: const EdgeInsets.symmetric(horizontal: 70),
                //                   child: Text(
                //                     'Profile',
                //                     style: TextStyle(color: Colors.white),
                //                   ),
                //                 ),
                //                 onPressed: (){
                //
                //                 },
                //               ),
                //             ),
                //           ),
                //         ],
                //       ),
                //     ),
                //   ),
                //   Padding(
                //     padding: const EdgeInsets.symmetric(horizontal: 25,vertical: 15),
                //     child: Container(
                //       decoration: kBoxDecoration(),
                //       child: Column(
                //         children: [
                //
                //           Padding(
                //             padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 15),
                //             child: Row(
                //               children: [
                //                 CircleAvatar(
                //
                //                   backgroundImage: AssetImage('assets/profile.jpg',
                //                   ),
                //
                //                   maxRadius: 60,
                //                 ),
                //                 Padding(
                //                   padding: const EdgeInsets.only(left: 10,bottom: 30),
                //                   child: Column(
                //                     crossAxisAlignment: CrossAxisAlignment.start,
                //                     children: [
                //
                //                       Text('James White',
                //                         style: kTextStyle.copyWith(
                //
                //                         ),),
                //                       Text('Football'),
                //                       Text('Experince 17 Years'),
                //                       Row(
                //                         children: [
                //                           Icon(Icons.star,
                //                             color: Colors.yellow,),
                //                           Icon(Icons.star,
                //                             color: Colors.yellow,),
                //                           Icon(Icons.star,
                //                             color: Colors.yellow,),
                //                           Icon(Icons.star,
                //                             color: Colors.yellow,),
                //
                //
                //                         ],
                //                       )
                //                     ],
                //
                //                   ),
                //                 )
                //               ],
                //             ),
                //           ),
                //           Padding(
                //             padding: const EdgeInsets.only(right: 270,top: 20,
                //                 bottom:5),
                //             child: Text('Bio',style: kTextStyle),
                //           ),
                //           Padding(
                //             padding: const EdgeInsets.symmetric(horizontal: 20),
                //             child: Text('The UEFA Champions League (abbreviated as UCL) is an annual '
                //                 'club football competition organised by the Union of European'
                //                 ' Football Associations (UEFA) and contested by top-division'
                //
                //                 'club competition in European football, played by the national'
                //                 ' league champions (and, for some nations, one o'
                //                 'r more runners-up) of their national associations.'),
                //           ),
                //           Padding(
                //             padding: const EdgeInsets.symmetric(horizontal: 0),
                //             child: Text(
                //               'Find Your TRAINER',
                //               style: TextStyle(color: Colors.white),
                //             ),
                //           ),
                //           Padding(
                //             padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 5),
                //             child: Material(
                //               color: Colors.red,
                //               borderRadius: BorderRadius.circular(26),
                //               child: MaterialButton(
                //                 child: Padding(
                //                   padding: const EdgeInsets.symmetric(horizontal: 70),
                //                   child: Text(
                //                     'Profile',
                //                     style: TextStyle(color: Colors.white),
                //                   ),
                //                 ),
                //                 onPressed: (){
                //
                //                 },
                //               ),
                //             ),
                //           ),
                //         ],
                //       ),
                //     ),
                //   ),
                //   Padding(
                //     padding: const EdgeInsets.symmetric(horizontal: 25,vertical: 15),
                //     child: Container(
                //       decoration: kBoxDecoration(),
                //       child: Column(
                //         children: [
                //
                //           Padding(
                //             padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 15),
                //             child: Row(
                //               children: [
                //                 CircleAvatar(
                //
                //                   backgroundImage: AssetImage('assets/profile.jpg',
                //                   ),
                //
                //                   maxRadius: 60,
                //                 ),
                //                 Padding(
                //                   padding: const EdgeInsets.only(left: 10,bottom: 30),
                //                   child: Column(
                //                     crossAxisAlignment: CrossAxisAlignment.start,
                //                     children: [
                //
                //                       Text('James White',
                //                         style: kTextStyle.copyWith(
                //
                //                         ),),
                //                       Text('Football'),
                //                       Text('Experince 17 Years'),
                //                       Row(
                //                         children: [
                //                           Icon(Icons.star,
                //                             color: Colors.yellow,),
                //                           Icon(Icons.star,
                //                             color: Colors.yellow,),
                //                           Icon(Icons.star,
                //                             color: Colors.yellow,),
                //                           Icon(Icons.star,
                //                             color: Colors.yellow,),
                //
                //
                //                         ],
                //                       )
                //                     ],
                //
                //                   ),
                //                 )
                //               ],
                //             ),
                //           ),
                //           Padding(
                //             padding: const EdgeInsets.only(right: 270,top: 20,
                //                 bottom:5),
                //             child: Text('Bio',style: kTextStyle),
                //           ),
                //           Padding(
                //             padding: const EdgeInsets.symmetric(horizontal: 20),
                //             child: Text('The UEFA Champions League (abbreviated as UCL) is an annual '
                //                 'club football competition organised by the Union of European'
                //                 ' Football Associations (UEFA) and contested by top-division'
                //
                //                 'club competition in European football, played by the national'
                //                 ' league champions (and, for some nations, one o'
                //                 'r more runners-up) of their national associations.'),
                //           ),
                //           Padding(
                //             padding: const EdgeInsets.symmetric(horizontal: 0),
                //             child: Text(
                //               'Find Your TRAINER',
                //               style: TextStyle(color: Colors.white),
                //             ),
                //           ),
                //           Padding(
                //             padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 5),
                //             child: Material(
                //               color: Colors.red,
                //               borderRadius: BorderRadius.circular(26),
                //               child: MaterialButton(
                //                 child: Padding(
                //                   padding: const EdgeInsets.symmetric(horizontal: 70),
                //                   child: Text(
                //                     'Profile',
                //                     style: TextStyle(color: Colors.white),
                //                   ),
                //                 ),
                //                 onPressed: (){
                //
                //                 },
                //               ),
                //             ),
                //           ),
                //         ],
                //       ),
                //     ),
                //   ),
                //   Padding(
                //     padding: const EdgeInsets.symmetric(horizontal: 25,vertical: 15),
                //     child: Container(
                //       decoration: kBoxDecoration(),
                //       child: Column(
                //         children: [
                //
                //           Padding(
                //             padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 15),
                //             child: Row(
                //               children: [
                //                 CircleAvatar(
                //
                //                   backgroundImage: AssetImage('assets/profile.jpg',
                //                   ),
                //
                //                   maxRadius: 60,
                //                 ),
                //                 Padding(
                //                   padding: const EdgeInsets.only(left: 10,bottom: 30),
                //                   child: Column(
                //                     crossAxisAlignment: CrossAxisAlignment.start,
                //                     children: [
                //
                //                       Text('James White',
                //                         style: kTextStyle.copyWith(
                //
                //                         ),),
                //                       Text('Football'),
                //                       Text('Experince 17 Years'),
                //                       Row(
                //                         children: [
                //                           Icon(Icons.star,
                //                             color: Colors.yellow,),
                //                           Icon(Icons.star,
                //                             color: Colors.yellow,),
                //                           Icon(Icons.star,
                //                             color: Colors.yellow,),
                //                           Icon(Icons.star,
                //                             color: Colors.yellow,),
                //
                //
                //                         ],
                //                       )
                //                     ],
                //
                //                   ),
                //                 )
                //               ],
                //             ),
                //           ),
                //           Padding(
                //             padding: const EdgeInsets.only(right: 270,top: 20,
                //                 bottom:5),
                //             child: Text('Bio',style: kTextStyle),
                //           ),
                //           Padding(
                //             padding: const EdgeInsets.symmetric(horizontal: 20),
                //             child: Text('The UEFA Champions League (abbreviated as UCL) is an annual '
                //                 'club football competition organised by the Union of European'
                //                 ' Football Associations (UEFA) and contested by top-division'
                //
                //                 'club competition in European football, played by the national'
                //                 ' league champions (and, for some nations, one o'
                //                 'r more runners-up) of their national associations.'),
                //           ),
                //           Padding(
                //             padding: const EdgeInsets.symmetric(horizontal: 0),
                //             child: Text(
                //               'Find Your TRAINER',
                //               style: TextStyle(color: Colors.white),
                //             ),
                //           ),
                //           Padding(
                //             padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 5),
                //             child: Material(
                //               color: Colors.red,
                //               borderRadius: BorderRadius.circular(26),
                //               child: MaterialButton(
                //                 child: Padding(
                //                   padding: const EdgeInsets.symmetric(horizontal: 70),
                //                   child: Text(
                //                     'Profile',
                //                     style: TextStyle(color: Colors.white),
                //                   ),
                //                 ),
                //                 onPressed: (){
                //
                //                 },
                //               ),
                //             ),
                //           ),
                //         ],
                //       ),
                //     ),
                //   ),









                  // Container(
                  //   child: Column(
                  //     children: [
                  //       Row(
                  //
                  //         crossAxisAlignment: CrossAxisAlignment.center,
                  //
                  //         mainAxisAlignment: MainAxisAlignment.center,
                  //
                  //         children: [
                  //           Image.asset(
                  //             'assets/profile.jpg',
                  //             height: 100,
                  //             width: 100,
                  //           ),
                  //           Image.asset(
                  //             'assets/profile.jpg',
                  //             height: 100,
                  //             width: 100,
                  //           ),
                  //           Image.asset(
                  //             'assets/profile.jpg',
                  //             height: 100,
                  //             width: 100,
                  //           ),
                  //         ],
                  //       ),
                  //       Row(
                  //
                  //         crossAxisAlignment: CrossAxisAlignment.center,
                  //
                  //         mainAxisAlignment: MainAxisAlignment.center,
                  //
                  //         children: [
                  //           Image.asset(
                  //             'assets/profile.jpg',
                  //             height: 100,
                  //             width: 100,
                  //           ),
                  //           Image.asset(
                  //             'assets/profile.jpg',
                  //             height: 100,
                  //             width: 100,
                  //           ),
                  //           Image.asset(
                  //             'assets/profile.jpg',
                  //             height: 100,
                  //             width: 100,
                  //           ),
                  //         ],
                  //       ),
                  //       Row(
                  //
                  //         crossAxisAlignment: CrossAxisAlignment.center,
                  //
                  //         mainAxisAlignment: MainAxisAlignment.center,
                  //
                  //         children: [
                  //           Image.asset(
                  //             'assets/profile.jpg',
                  //             height: 100,
                  //             width: 100,
                  //           ),
                  //           Image.asset(
                  //             'assets/profile.jpg',
                  //             height: 100,
                  //             width: 100,
                  //           ),
                  //           Image.asset(
                  //             'assets/profile.jpg',
                  //             height: 100,
                  //             width: 100,
                  //           ),
                  //         ],
                  //       ),
                  //       Row(
                  //
                  //         crossAxisAlignment: CrossAxisAlignment.center,
                  //
                  //         mainAxisAlignment: MainAxisAlignment.center,
                  //
                  //         children: [
                  //           Image.asset(
                  //             'assets/profile.jpg',
                  //             height: 100,
                  //             width: 100,
                  //           ),
                  //           Image.asset(
                  //             'assets/profile.jpg',
                  //             height: 100,
                  //             width: 100,
                  //           ),
                  //           Image.asset(
                  //             'assets/profile.jpg',
                  //             height: 100,
                  //             width: 100,
                  //           ),
                  //         ],
                  //       ),
                  //       Row(
                  //
                  //         crossAxisAlignment: CrossAxisAlignment.center,
                  //
                  //         mainAxisAlignment: MainAxisAlignment.center,
                  //
                  //         children: [
                  //           Image.asset(
                  //             'assets/profile.jpg',
                  //             height: 100,
                  //             width: 100,
                  //           ),
                  //           Image.asset(
                  //             'assets/profile.jpg',
                  //             height: 100,
                  //             width: 100,
                  //           ),
                  //           Image.asset(
                  //             'assets/profile.jpg',
                  //             height: 100,
                  //             width: 100,
                  //           ),
                  //         ],
                  //       ),
                  //       Row(
                  //
                  //         crossAxisAlignment: CrossAxisAlignment.center,
                  //
                  //         mainAxisAlignment: MainAxisAlignment.center,
                  //
                  //         children: [
                  //           Image.asset(
                  //             'assets/profile.jpg',
                  //             height: 100,
                  //             width: 100,
                  //           ),
                  //           Image.asset(
                  //             'assets/profile.jpg',
                  //             height: 100,
                  //             width: 100,
                  //           ),
                  //           Image.asset(
                  //             'assets/profile.jpg',
                  //             height: 100,
                  //             width: 100,
                  //           ),
                  //         ],
                  //       ),
                  //       Row(
                  //
                  //         crossAxisAlignment: CrossAxisAlignment.center,
                  //
                  //         mainAxisAlignment: MainAxisAlignment.center,
                  //
                  //         children: [
                  //           Image.asset(
                  //             'assets/profile.jpg',
                  //             height: 100,
                  //             width: 100,
                  //           ),
                  //           Image.asset(
                  //             'assets/profile.jpg',
                  //             height: 100,
                  //             width: 100,
                  //           ),
                  //           Image.asset(
                  //             'assets/profile.jpg',
                  //             height: 100,
                  //             width: 100,
                  //           ),
                  //         ],
                  //       ),
                  //       Row(
                  //
                  //         crossAxisAlignment: CrossAxisAlignment.center,
                  //
                  //         mainAxisAlignment: MainAxisAlignment.center,
                  //
                  //         children: [
                  //           Image.asset(
                  //             'assets/profile.jpg',
                  //             height: 100,
                  //             width: 100,
                  //           ),
                  //           Image.asset(
                  //             'assets/profile.jpg',
                  //             height: 100,
                  //             width: 100,
                  //           ),
                  //           Image.asset(
                  //             'assets/profile.jpg',
                  //             height: 100,
                  //             width: 100,
                  //           ),
                  //         ],
                  //       ),
                  //     ],
                  //   ),
                  // )


                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
