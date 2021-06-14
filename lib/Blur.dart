import 'dart:ui';

import 'package:flutter/material.dart';

class Copy extends StatefulWidget {
  static String id='Copy';

  @override
  _CopyState createState() => _CopyState();
}

class _CopyState extends State<Copy> {
  double blurImage = 0;
  double blurBox = 0.8;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('app'),
      ),
      body: ListView(
        // physics: BouncingScrollPhysics(),
        padding: EdgeInsets.all(16),
        children: [
          buildBlurredImage(),
          const SizedBox(height: 20),
          Slider(
            value: blurImage,
            max: 30,
            onChanged: (value) => setState(() => blurImage = value),
          ),


        ],
      ),
    );
  }


  Widget buildBlurredImage() =>
      ClipRRect(
        borderRadius: BorderRadius.circular(24),
        child: Stack(
          children: [
            Image.asset(
              'assets/profile.jpg',
              fit: BoxFit.cover,
            ),
            Positioned.fill(
              child: BackdropFilter(
                filter: ImageFilter.blur(
                  sigmaX: blurImage,
                  sigmaY: blurImage,
                ),
                child: Container(color: Colors.black.withOpacity(0.2)),
              ),
            ),
          ],
        ),
      );


}
