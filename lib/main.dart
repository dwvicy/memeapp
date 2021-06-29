import 'package:flutter/material.dart';
import 'package:memeapp/nav.dart';
import 'package:memeapp/screens/someOtherFeature.dart';
import 'package:memeapp/screens/feature.dart';
import 'package:memeapp/screens/home.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: { //Adding the routes to different pages
        '/': (context) => NavPage(),
        '/addMeme': (context) => AddMeme(),
        '/home': (context) => HomePage(),
        '/feature':(context) => FeaturePage()
      },
      theme: ThemeData(fontFamily: 'Poppins',
      appBarTheme: 
      AppBarTheme(iconTheme: 
          IconThemeData(color: Colors.black54, size: 30))
    ));
  }
}
