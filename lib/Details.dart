import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:popup_menu/popup_menu.dart';

import 'login.dart';
import 'office.dart';
const kTextSubHeading = TextStyle(fontSize: 15, fontWeight: FontWeight.bold);


class Details extends StatefulWidget {
  // static String id ='Details';
  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Color(0XFF252C41),
        actions: [
          IconButton(
              icon: Icon(
                Icons.chat,
                color: Colors.red,
              ),
              onPressed: null),
        ],
        leading: IconButton(
            icon: Icon(
              Icons.menu,
              color: Colors.red,
            ),
            onPressed: null),
        centerTitle: true,
        title: Image.asset('assets/y2y_logo.png'),
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Text(
                  "Payment",
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                child: Container(
                  decoration: kBoxDecoration(),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          child: Text(
                            'Payment Email',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 13.0,
                              color: Colors.red,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          color: Colors.grey,
                          child: Text('Akashpunit@fgmail.com'),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          child: Text(
                            'ID',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 13.0,
                              color: Colors.red,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          color: Colors.grey,
                          child: Text('Wh-**********************'),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [

                          Padding(
                            padding: const EdgeInsets.only(right:10),
                            child: Material(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(26.0),
                              child: MaterialButton(

                                child: new Text("UnSubcribe", style: TextStyle(
                                  color: Colors.white,
                                ),),

                                ),
                            ),
                            ),

                          OutlineButton(
                            child: Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: new Text("   Add   "),
                            ),
                            borderSide: BorderSide(
                              color: Colors.black,
                            ),
                            onPressed: () {
                              print("HELLO");
                            },
                            shape: new RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(26.0),
                            ),
                          ),

   ]
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Center(
            child: Text(
              'Paypal Link',
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
            child: Container(
              decoration: kBoxDecoration(),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 20,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: SizedBox(
                        height: 45,
                        child: TextField(
                          decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.grey,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(33.0),
                              )),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Text('Add paypal link to receive payment form trainees'),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Row(
                        children: [
                          Material(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(16.0),
                            child: MaterialButton(

                              child: new Text("Add PayPal Link", style: TextStyle(
                                color: Colors.white,
                              ),),

                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      child: Text('payment Link', style: kTextSubHeading),
                    ),
                    Text(' Http://www.paypalcom/us/home'),
                  ],
                ),
              ),
            ),
          ),
          Center(
            child: Text(
              'History Of Payyment',
              style: TextStyle(
                color: Colors.red,
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
            child: Container(
              decoration: kBoxDecoration(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          '# ID',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 13.0,
                            color: Colors.red,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      color: Colors.grey,
                      child: Text('WWH-*****************'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 80),
                          child: Text(
                            'Subscription',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.red,
                            ),
                          ),
                        ),
// SizedBox(width: 50,),
                        Text(
                          ' Next payment',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.red,
                          ),
                        ),
                      ],
                    )),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        color: Colors.grey,
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 140),
                              child: Text('Dec'),
                            ),
                            Text('TUE-21-2021'),
                          ],
                        )),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => login(),
            ),);
          },
          tooltip: '',
          child: Icon(Icons.add)
          ,
        ),
        bottomNavigationBar: Footer(),

    );
  }
}



BoxDecoration kBoxDecoration() {
  return BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.all(Radius.circular(10)),
    boxShadow: [
      BoxShadow(
        color: Colors.grey.withOpacity(0.9),
        spreadRadius: 9,
        blurRadius: 19,
        offset: Offset(0, 3), // changes position of shadow
      ),
    ],
  );
}


class Footer extends StatefulWidget {

  @override
  _FooterState createState() => _FooterState();
}

class _FooterState extends State<Footer> {
  GlobalKey menuKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    PopupMenu.context = context;
    return Container(
      height: 112,
      width: MediaQuery.of(context).size.width,
      color: AppColors.blackColor,
      padding: const EdgeInsets.all(8.0),

      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

              Column(

                children: [
                  Text("Follow US", style: TextStyle(color: AppColors.whiteColor, fontSize: 12),),
                  InkWell(
                    onTap: (){
                      popupMenu();
                    },
                    child: Row(
                      key: menuKey,
                      children: [
                        Image.asset("assets/twitter.png"),
                        Image.asset("assets/youtube.png"),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Image.asset("assets/facebook.png"),
                      Image.asset("assets/insta.png"),
                    ],
                  ),

                ],
              ),

              Column(
                children: [
                  Icon(Icons.shopping_cart, size: 50, color: AppColors.whiteColor,),
                  Text("Shop", style: TextStyle(color: AppColors.whiteColor, fontSize: 12),),
                ],
              ),

              Column(
                children: [
                  Image.asset("assets/blog.png", height: 50,),
                  Text("Blog", style: TextStyle(color: AppColors.whiteColor, fontSize: 12),),
                ],
              ),

              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("Links", style: TextStyle(color: AppColors.whiteColor, fontSize: 12),),
                  Text("FAQs", style: TextStyle(color: Colors.grey, fontSize: 12),),
                  Text("Privacy", style: TextStyle(color: Colors.grey, fontSize: 12),),
                  Text("Terms of use", style: TextStyle(color: Colors.grey, fontSize: 12),),
                  Text("Contact us", style: TextStyle(color: Colors.grey, fontSize: 12),),
                ],
              ),

            ],
          ),
          SizedBox(height: 10,),
          //   Text(AppStrings.copyRightString, style: TextStyle(color: AppColors.redColor, fontSize: 14),),
        ],
      ),
    );

  }

  void popupMenu() {
    PopupMenu menu = PopupMenu(
      // backgroundColor: Colors.teal,
      // lineColor: Colors.tealAccent,
        maxColumn: 2,
        items: [
          MenuItem(title: 'Twitter', image: Image.asset('assets/twitter.png')),
          MenuItem(title: 'Youtube', image: Image.asset('assets/youtube.png')),
          MenuItem(title: 'Facebook', image: Image.asset('assets/facebook.png')),
          MenuItem(title: 'Instagram', image: Image.asset('assets/insta.png')),
        ],
        onClickMenu: onClickMenu,
        stateChanged: stateChanged,
        onDismiss: onDismiss);
    menu.show(widgetKey: menuKey);
  }

  void stateChanged(bool isShow) {
    print('menu is ${isShow ? 'showing' : 'closed'}');
  }

  void onClickMenu(MenuItemProvider item) {
    print('Click menu -> ${item.menuTitle}');
  }

  void onDismiss() {
    print('Menu is dismiss');
  }
}
class AppColors{
  static const redColor = const Color(0xFFDC3545);
  static const whiteColor = const Color(0xFFFFFFFF);
  static const blackColor = const Color(0xFF252C41);
}