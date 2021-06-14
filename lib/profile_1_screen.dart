import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';



const ktextHeadlineStyle = TextStyle(fontWeight: FontWeight.bold, fontSize: 20);
const ktextSubHeadlineStyle = TextStyle(fontSize: 15, fontWeight: FontWeight.bold);
const kTapTextStyle = TextStyle(color: Colors.white, fontSize: 20);

class Profile1Screen extends StatefulWidget {
  static String id = "Profile1Screen";

  @override
  _Profile1ScreenState createState() => _Profile1ScreenState();
}

class _Profile1ScreenState extends State<Profile1Screen>
    with SingleTickerProviderStateMixin {
  TabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = new TabController(length: 4, vsync: this);
  }

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
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                decoration: kBoxDecoration(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height * .3,
                      child: Stack(children: [
                        Align(
                            alignment: Alignment.center,
                            child: Image.asset('assets/profile.jpg')),
                        // Image(image: AssetImage('assets/pic.jpg')),
                        Align(
                            alignment: Alignment.bottomRight,
                            child: Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: Icon(
                                (Icons.edit_off),
                                color: Colors.red,
                              ),
                            ))
                      ]),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("James White", style: ktextHeadlineStyle),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 5),
                            child: Text("nisaricup@gmail.com",
                                style: ktextSubHeadlineStyle),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 5),
                            child: Text("Football Trainer",
                                style: ktextSubHeadlineStyle),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 5),
                            child: Text("3 Years of Experience",
                                style: ktextSubHeadlineStyle),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text("Location",
                              style: ktextSubHeadlineStyle.copyWith(
                                  fontSize: 15, fontWeight: FontWeight.normal)),
                          Text("Ave.14,xxxx,xx, CA",
                              style: ktextSubHeadlineStyle),
                          SizedBox(
                            height: 10,
                          ),
                          Text("Training Type:",
                              style: ktextSubHeadlineStyle.copyWith(
                                  fontSize: 15, fontWeight: FontWeight.normal)),
                          Text("In Person", style: ktextSubHeadlineStyle),
                          SizedBox(
                            height: 30,
                          ),
                          Text("Social Media", style: ktextSubHeadlineStyle),
                          Padding(
                            padding: const EdgeInsets.only(top: 5, bottom: 15),
                            child:Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 5),
                                  child: SocialMediaIcon(

                                    icon: Icon(FontAwesomeIcons.twitter,
                                    ),
                                    onPressed: (){},
                                  ),
                                ),
                                SocialMediaIcon(
                                  icon: Icon(FontAwesomeIcons.youtube),
                                  onPressed: (){},
                                ),
                                SocialMediaIcon(
                                  icon: Icon(FontAwesomeIcons.facebook),
                                  onPressed: (){},
                                ),
                                SocialMediaIcon(
                                  icon: Icon(FontAwesomeIcons.instagram),
                                  onPressed: (){},
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 120),
                            child: EditBottons(
                              onPressed: () {},
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              child: Container(
                decoration: kBoxDecoration(),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Container(
                        color: Color(0XFF252C41),
                        child: TabBar(
                          isScrollable: true,
                          // indicatorSize: TabBarIndicatorSize.label,
                          indicatorColor: Colors.yellow,
                          indicatorWeight: 10.0,
                          indicator: BoxDecoration(color: Colors.red),
                          controller: _controller,
                          tabs: [
                            new Tab(child: Text("Bio", style: kTapTextStyle)),
                            new Tab(
                              child: Text("Training Location",
                                  style: kTapTextStyle),
                            ),
                            new Tab(
                                child: Text("Reviews", style: kTapTextStyle)),
                            new Tab(
                                child: Text("Reviewed", style: kTapTextStyle)),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height + 300,
                      width: MediaQuery.of(context).size.width,
                      child: TabBarView(
                        controller: _controller,
                        children: [
                          new Card(
                              child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "James White",
                                style: ktextHeadlineStyle,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 20),
                                child: Text(
                                  "Football",
                                  style: ktextHeadlineStyle,
                                ),
                              ),
                              Text(
                                "When developing an application, I had the need for a TabBar with buttons as Tabs. After searching around, I didn’t find anything; the default TabBar widget didn’t have that option, therefore, I decided to make it myself.",
                                style: ktextSubHeadlineStyle,
                              ),
                              SizedBox(
                                height: 80,
                              ),
                              Center(
                                  child: EditBottons(
                                onPressed: () {},
                              )),
                            ],
                          )),
                          new Card(
                              child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 10),
                                  child: Text("Enter Your Name"),
                                ),
                                SizedBox(
                                  height: 30,
                                  child: TextField(
                                    decoration: InputDecoration(
                                        filled: true,
                                        fillColor: Color(0XFFE0E0E0),
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(33),
                                        )),
                                  ),
                                ),
                                //SizedBox(height: 20,),
                                Row(
                                  children: [
                                    TextFieldBottumLine(
                                      onChanged: null,
                                      name: "Street Address",
                                    ),
                                    TextFieldBottumLine(
                                      onChanged: null,
                                      name: "City",
                                    ),
                                    TextFieldBottumLine(
                                      onChanged: null,
                                      name: "State",
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    TextFieldBottumLine(
                                      onChanged: null,
                                      name: "Zip Code",
                                    ),
                                    TextFieldBottumLine(
                                      onChanged: null,
                                      name: "City",
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 30,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 240),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Colors.red,
                                      borderRadius: BorderRadius.circular(22),
                                    ),
                                    height: 40,
                                    width: 100,
                                    child: MaterialButton(
                                      onPressed: () {},
                                      child: Text(
                                        "Save",
                                        style: ktextSubHeadlineStyle.copyWith(
                                            color: Colors.white),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  'Location',
                                  style: ktextSubHeadlineStyle,
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                RaisedButton(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(18.0),
                                      side: BorderSide.none),
                                  onPressed: () {},
                                  color: Colors.grey,
                                  elevation: 20,
                                  textColor: Colors.white,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Icon(Icons.location_on),
                                      Text(
                                        'New York NY United States',
                                        style: ktextSubHeadlineStyle.copyWith(
                                            color: Colors.black),
                                      ),
                                      Icon(Icons.delete)
                                    ],
                                  ),
                                ),
                                RaisedButton(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(18.0),
                                      side: BorderSide.none),
                                  onPressed: () {},
                                  color: Colors.grey,
                                  elevation: 20,
                                  textColor: Colors.white,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Icon(Icons.location_on),
                                      Text(
                                        'New York NY United States',
                                        style: ktextSubHeadlineStyle.copyWith(
                                            color: Colors.black),
                                      ),
                                      Icon(Icons.delete)
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 50,
                                ),
                                Center(
                                    child: EditBottons(
                                  onPressed: () {},
                                ))
                              ],
                            ),
                          )),
                          new Card(
                            child: ListView(children: [
                              ListTile(
                                leading: Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage('assets/pic.jpg'),
                                          fit: BoxFit.fill)),
                                ),
                                title: Text("Jane Pin"),
                                subtitle: Text(
                                    'ajfideifheihafdifdf difidhafa dfd af d faf difidhafdhf d f hfiahfdhif  '),
                              ),
                              ListTile(
                                leading: Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage('assets/pic.jpg'),
                                          fit: BoxFit.fill)),
                                ),
                                title: Text("Jane Pin"),
                                subtitle: Text(
                                    'ajfideifheihafdifdf difidhafa dfd af d faf difidhafdhf d f hfiahfdhif  '),
                              ),
                              ListTile(
                                leading: Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage('assets/pic.jpg'),
                                          fit: BoxFit.fill)),
                                ),
                                title: Text("Jane Pin"),
                                subtitle: Text(
                                    ''),
                              ),
                              ListTile(
                                leading: Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage('assets/pic.jpg'),
                                          fit: BoxFit.fill)),
                                ),
                                title: Text("Jane Pin"),
                                subtitle: Text(
                                    'ajfideifheihafdifdf difidhafa dfd af d faf difidhafdhf d f hfiahfdhif  '),
                              ),
                            ]),
                          ),
                          new Card(
                            child: new ListTile(
                              leading: const Icon(Icons.location_on),
                              title: new Text(
                                  'Latitude: 48.09342\nLongitude: 11.23403'),
                              trailing: new IconButton(
                                  icon: const Icon(Icons.my_location),
                                  onPressed: () {}),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  BoxDecoration kBoxDecoration() {
    return BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.all(Radius.circular(10)),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.5),
          spreadRadius: 5,
          blurRadius: 7,
          offset: Offset(0, 3), // changes position of shadow
        ),
      ],
    );
  }
}

class TextFieldBottumLine extends StatelessWidget {
  TextFieldBottumLine({this.onChanged, this.name});

  final Function onChanged;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Text(name),
          Container(
            width: 100,
            child: TextField(
              onChanged: onChanged,
              decoration: InputDecoration(
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.red),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class EditBottons extends StatelessWidget {
  EditBottons({this.onPressed});

  Function onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.circular(22),
      ),
      height: 40,
      width: 100,
      child: MaterialButton(
        onPressed: onPressed,
        child: Row(
          children: [
            Text(
              "EDIT",
              style: ktextSubHeadlineStyle.copyWith(color: Colors.white),
            ),
            SizedBox(
              width: 10,
            ),
            Icon(
              Icons.edit_off,
              color: Colors.white,
            )
          ],
        ),
      ),
    );
  }
}

class SocialMediaIcon extends StatelessWidget {
  SocialMediaIcon({this.onPressed, this.icon});

  final Function onPressed;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 20,
      backgroundColor: Colors.red,
      child: IconButton(
        icon: icon,iconSize: 20,
        onPressed: onPressed,
        color: Colors.white,
      ),
    );
  }
}
