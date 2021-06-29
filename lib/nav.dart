import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:line_icons/line_icons.dart';
import 'package:memeapp/constants/AppTheme.dart';
import 'package:memeapp/constants/drawer.dart';

import 'package:memeapp/screens/anotherPage.dart';
import 'package:memeapp/screens/categories.dart';

import 'package:memeapp/screens/home.dart';


class NavPage extends StatefulWidget {
  @override
  _NavPageState createState() => _NavPageState();
}

class _NavPageState extends State<NavPage> {
  int bottomSelectedIndex = 0;

  List<BottomNavigationBarItem> buildBottomNavBarItems() {
    return [
      BottomNavigationBarItem(
          icon: Icon(
            LineIcons.home,
            color: Colors.black54,
          ),
          label: 'home'),
      BottomNavigationBarItem(
          icon: Icon(
            LineIcons.hourglassEnd,
            color: Colors.black54,
          ),
          label: 'categories'),
      BottomNavigationBarItem(
        icon: Icon(
          LineIcons.drawPolygon,
          color: Colors.black54,
        ),
        label: 'memes',
      ),
    ];
  }

  PageController pageController = PageController(
    initialPage: 0,
    keepPage: true,
  );

  Widget buildPageView() {
    return PageView(
      physics: NeverScrollableScrollPhysics(),
      controller: pageController,
      onPageChanged: (index) {
        pageChanged(index);
      },
      children: <Widget>[
        HomePage(),
        CategoryList(),
        FeatureAnother(),
      ],
    );
  }

  @override
  void initState() {
    super.initState();
  }

  void pageChanged(int index) {
    setState(() {
      bottomSelectedIndex = index;
    });
  }

  void bottomTapped(int index) {
    setState(() {
      bottomSelectedIndex = index;
      pageController.animateToPage(index,
          duration: Duration(milliseconds: 500), curve: Curves.ease);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawer(),
      backgroundColor: Colors.white,
      appBar: AppBar(
        // leading: Container(),
        // leading: Icon(LineIcons.hamburger),
        title: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'MayMay',
              style: TextStyle(
                  color: Colors.black54,
                  fontWeight: FontWeight.w300,
                  fontSize: 30),
            )),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: buildPageView(),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.cyan,
        selectedIconTheme: IconThemeData(color: Colors.black, size: 35),
        selectedLabelStyle:
            TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        unselectedItemColor: Colors.black54,
        currentIndex: bottomSelectedIndex,
        backgroundColor: AppTheme.offWhite,
        onTap: (index) {
          bottomTapped(index);
        },
        items: buildBottomNavBarItems(),
      ),
    );
  }
}
