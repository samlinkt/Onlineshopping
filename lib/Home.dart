import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white, body: Column(children: [
      Padding(
        padding: EdgeInsets.only(left: 15 , top: 38),
        child: Container(
          width: 300,
          height: 45,
          decoration: ShapeDecoration(
            color: Color(0xFFF1F2F2),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
          ), child: Row(children: [
          Padding(
            padding: EdgeInsets.only(left: 15, top: 5),
            child: SizedBox(
              width: 18, height: 18, child: Image.asset("asset/a.png"),),
          ), Padding(
            padding: EdgeInsets.only(left: 15, top: 5),
            child: Text(
              'Search Store',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFF7C7C7C),
                fontSize: 14,
                fontFamily: 'Gilroy',
                fontWeight: FontWeight.w600,
                height: 0,
              ),
            ),
          ),
        ],),
        ),
      ), SizedBox(height: 20),
      CarouselSlider.builder(
        itemCount: 3,
        itemBuilder: (BuildContext context, int
        itemIndex, int pageViewIndex) =>
            Container(width: 300, height: 114, color: Color(0xFFF2F3F2),
              child: SizedBox(width: 120, height: 60, child: Padding(
                padding: EdgeInsets.only(left: 5, top: 2),
                child: SizedBox(width: 200,
                    height: 60,
                    child: Image.asset("asset/b.png", fit: BoxFit.cover,)),
              )),
            ), options: CarouselOptions(
        autoPlay: true,
        enlargeCenterPage: true,
        viewportFraction: 1,
        aspectRatio: 2.0,
        initialPage: 2,
      ),
      )
    ],),

    );
  }
}
