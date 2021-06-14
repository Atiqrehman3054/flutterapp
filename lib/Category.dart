import 'package:expandable/expandable.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';


class Category extends StatefulWidget {
  @override
  _CategoryState createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
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
                Text(
                  'Category',
                  style: kTextStyle.copyWith(
                    color: Colors.white,
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



                 Padding(
                   padding: const EdgeInsets.symmetric(horizontal: 30),
                   child: StaggeredGridView.countBuilder(
                    crossAxisCount: 4,
                    itemCount: 18,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (BuildContext context, int index) => new Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.red,
                      ),

                        child: new CircleAvatar(
                          backgroundImage: AssetImage('assets/profile.jpg'),
                          child: new Text('$index'),
                        )),
                    staggeredTileBuilder: (int index) =>
                    new StaggeredTile.count(2, index.isEven ? 2 : 1),
                    mainAxisSpacing: 10.0,
                    crossAxisSpacing: 8.0,
                ),
                 ),








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
    ));
  }
}
