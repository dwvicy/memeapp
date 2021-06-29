import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icon.dart';
import 'package:memeapp/constants/AppTheme.dart';
import 'package:memeapp/screens/feature.dart';

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

List<Widget> names = [
  Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: AppTheme.lightYellow)),
  Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: AppTheme.ellowPinky)),
  Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppTheme.pinky)),
];

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
       body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Padding(
            //   padding: const EdgeInsets.all(8.0),
            //   child: Text('check out your maymays'),
            // ),
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    child: Padding(
                      padding: EdgeInsets.only(top: 15),
                      child: CarouselSlider(
                  options: CarouselOptions(
                      aspectRatio: 1,
                      enlargeCenterPage: true,
                      enableInfiniteScroll: false,
                      initialPage: 2,
                      autoPlay: true,
                  ),
                  items: names,
                ),
                    ))),])),

                    floatingActionButton: FloatingActionButton.extended(
                      onPressed: () => Navigator.pushNamed(context, '/feature'),
                      icon: LineIcon.plus(size: 30,), 
                      label: Text('Add Meme', 
                      style: TextStyle(fontSize: 20, 
                      fontWeight: FontWeight.w700, 
                      color: Colors.white),), ),
    );
  }
}