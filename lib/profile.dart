import 'dart:html';

import 'package:flutter/material.dart';
import 'package:pushnotification/profile_1_screen.dart';
import 'Details.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:flutter/rendering.dart';

const ktextHeadlineStyle = TextStyle(fontWeight: FontWeight.bold, fontSize: 20);
const ktextSubHeadlineStyle = TextStyle(fontSize: 15, fontWeight: FontWeight.bold);
const kTapTextStyle = TextStyle(color: Colors.white, fontSize: 20);

 const kHeadingStyle = TextStyle(fontSize: 20, fontWeight: FontWeight.bold, );

const kSubHeadingStyle = TextStyle( fontWeight: FontWeight.bold, );


const kSmallHeadingStyle = TextStyle(  fontSize: 15,fontWeight: FontWeight.bold, );



class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile>
    with SingleTickerProviderStateMixin
    // with SingleTickerProviderStateMixin
{


  TabController _controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = new TabController(length: 4, vsync: this);
  }

  // TabController _controller;
  //
  // @override
  // void initState() {
  // super.initState();
  // _controller = new TabController(length: 4, vsync: this);
  // }

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[350],
        title: Text(''),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 10),
            child: Container(
              decoration: kBoxDecoration(),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset('assets/profile.jpg',
                  height: 300,
                  width: 100000,),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Column(

                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                      Text('James White',
                        style: kHeadingStyle,),
                      Text('atiqrehman@gmail.com', style: kSubHeadingStyle,),

                      Text('Football trainee', style: kSubHeadingStyle,),

                      Text('Three years of experince', style: kSubHeadingStyle,),

                      SizedBox(
                        height: 20,
                      ),


                      Text('Location', style: kSmallHeadingStyle),

                      Text('gullberg no 4', style: kSubHeadingStyle),


                      Text('Training Type', style: kSmallHeadingStyle),

                      Text('In Preson', style: kSubHeadingStyle),


                      SizedBox(
                        height: 10,
                      ),

                      Text('Social Meida', style: kSubHeadingStyle),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        children: [
                          SocialMediaIcon(
                            icon: Icon(FontAwesomeIcons.twitter),
                          ),
                          SocialMediaIcon(
                            icon: Icon(FontAwesomeIcons.youtube),
                          ),
                          SocialMediaIcon(
                            icon: Icon(FontAwesomeIcons.facebook),
                          ),
                          SocialMediaIcon(
                            icon: Icon(FontAwesomeIcons.instagram),
                          ),

                        ],
                      ),

                      SizedBox(
                        height: 25,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 120),
                        child: EditBottons(
                          onPressed: (){},
                        ),
                      ),


                      ],
                    ),
                  ),



                ],
              ),
            ),
          ),
          Container(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                  child: Container(
                    child:  TabBar(
                      isScrollable: true,
                        indicatorColor: Colors.yellow,
                      indicatorWeight: 10.0,
                      indicator: BoxDecoration(
                        color: Colors.red,),
                      controller: _controller,
                      tabs: [
                        new Tab(
                          child: Text('Bio', style:  kTapTextStyle),

                        ),
                        new Tab(
                          child: Text('Training location', style:  kTapTextStyle),

                        ),
                        new Tab(
                          child: Text('Review', style:  kTapTextStyle),

                        ),
                        new Tab(
                          child: Text('Reviewed ', style:  kTapTextStyle),

                        ),
                      ],


                    ),
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height + 300,
                  width: MediaQuery.of(context).size.width,
                  child:  TabBarView(
                    controller: _controller,
                    children: [
                      Card(
                        child:
                        Column(
                          children: [
                            Text('White james',style: ktextHeadlineStyle),


                          ],
                        ),
                      )
                    ],
                  ),
                ),

              ],
            ),
          ),
        ],
      ),
    ));
  }
}
