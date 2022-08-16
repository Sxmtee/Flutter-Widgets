import 'dart:async';

import 'package:flutter/material.dart';
import 'package:widgets/CarouselSlider.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(Duration(seconds: 3), () {
      var route = MaterialPageRoute(builder: (context) => CarouselClass());
      Navigator.push(context, route);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomRight,
              colors: [Color(0xFF4E342E), Color(0xFF3E2723)]),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset(
              "assets/images/3.jpg",
              height: 300,
              width: 300,
            ),
            Text(
              "Travel Plans & Tour",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                fontFamily: "italics",
                color: Colors.white,
              ),
            ),
            CircularProgressIndicator()
          ],
        ),
      ),
    );
  }
}
