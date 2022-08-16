import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class CarouselClass extends StatefulWidget {
  const CarouselClass({Key? key}) : super(key: key);

  @override
  State<CarouselClass> createState() => _CarouselClassState();
}

class _CarouselClassState extends State<CarouselClass> {
  List<String> ImageList = [
    "assets/images/2.jpg",
    "assets/images/3.jpg",
    "assets/images/4.jpg",
    "assets/images/5.jpg"
  ];
  int InitialPage = 0;
  CarouselController _controller = CarouselController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Carousel Slider"),
        centerTitle: true,
      ),
      body: Container(
        child: Column(
          children: [
            CarouselSlider(
                carouselController: _controller,
                items: ImageList.map((ImageList) {
                  return Builder(builder: (BuildContext context) {
                    return Container(
                      width: double.infinity,
                      height: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          image: DecorationImage(
                              image: AssetImage(ImageList), fit: BoxFit.cover)),
                    );
                  });
                }).toList(),
                options: CarouselOptions(
                  height: 300.0,
                  autoPlay: true,
                  enlargeCenterPage: true,
                  onPageChanged: (index, reason) {
                    setState(() {
                      InitialPage = index;
                    });
                  },
                )),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: ImageList.asMap().entries.map((ImageList) {
                return InkWell(
                  onTap: () {
                    _controller.jumpToPage(ImageList.key);
                    setState(() {});
                  },
                  child: Container(
                    margin: EdgeInsets.all(12),
                    height: 10,
                    width: 10,
                    decoration: BoxDecoration(
                      shape: InitialPage == ImageList.key
                          ? BoxShape.circle
                          : BoxShape.rectangle,
                      color: InitialPage == ImageList.key
                          ? Colors.blue
                          : Colors.grey,
                    ),
                  ),
                );
              }).toList(),
            )
          ],
        ),
      ),
    );
  }
}
