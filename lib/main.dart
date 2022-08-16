import 'package:flutter/material.dart';
import 'package:widgets/CarouselSlider.dart';
import 'package:widgets/SplashScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Widgets",
      home: Widgets(),
    );
  }
}

class Widgets extends StatefulWidget {
  const Widgets({Key? key}) : super(key: key);

  @override
  State<Widgets> createState() => _WidgetsState();
}

class _WidgetsState extends State<Widgets> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Colors.grey[350],
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          title: Text("WIDGETS"),
          centerTitle: true,
          leading: Icon(
            Icons.home,
            size: 30.0,
          ),
          actions: [
            Icon(Icons.settings, size: 20.0),
          ],
          elevation: 30.0,
          shadowColor: Colors.cyanAccent,
        ),
        body: SingleChildScrollView(
          child: Container(
              width: size.width,
              padding: EdgeInsets.all(50),
              child: Column(
                children: [
                  Container(
                    width: size.width,
                    child: MaterialButton(
                      shape: StadiumBorder(),
                      onPressed: () {
                        var route = MaterialPageRoute(
                            builder: (context) => CarouselClass());
                        Navigator.push(context, route);
                      },
                      color: Colors.black12,
                      child: Text("Carousel Slider"),
                      textColor: Colors.greenAccent,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    width: size.width,
                    child: MaterialButton(
                      shape: StadiumBorder(),
                      onPressed: () {
                        var route = MaterialPageRoute(
                            builder: (context) => SplashScreen());
                        Navigator.push(context, route);
                      },
                      color: Colors.black12,
                      child: Text("Splash Screen"),
                      textColor: Colors.greenAccent,
                    ),
                  ),
                ],
              )),
        ));
  }
}
