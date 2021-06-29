import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:line_icons/line_icons.dart';
import 'package:memeapp/constants/AppTheme.dart';

class CustomDrawer extends StatefulWidget {
  @override
  _CustomDrawerState createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          Container(
            decoration: BoxDecoration(color: AppTheme.pinky),
            child: DrawerHeader(
                child: Center(
              child: Text(
                'MayMay',
                style: TextStyle(
                    fontSize: 30, fontFamily: 'Poppins', color: Colors.white),
              ),
            )),
          ),
          ListTile(
            leading: IconButton(
              icon: Icon(LineIcons.personEnteringBooth),
              onPressed: () {},
            ),
            title: Text(
              'Your Profile',
              style: TextStyle(
                  fontSize: 20, fontFamily: 'Poppins', color: Colors.black54),
            ),
          ),
          ListTile(
            leading: IconButton(
              icon: Icon(Icons.settings),
              onPressed: () {},
            ),
            title: Text(
              'Settings',
              style: TextStyle(
                  fontSize: 20, fontFamily: 'Poppins', color: Colors.black54),
            ),
          ),
          ListTile(
            leading: IconButton(
              icon: Icon(Icons.info_outline_rounded),
              onPressed: () {},
            ),
            title: Text(
              'App Info',
              style: TextStyle(
                  fontSize: 20, fontFamily: 'Poppins', color: Colors.black54),
            ),
          ),
          ListTile(
            leading: IconButton(
              icon: Icon(Icons.feedback),
              onPressed: () {},
            ),
            title: Text(
              'Feedback',
              style: TextStyle(
                  fontSize: 20, fontFamily: 'Poppins', color: Colors.black54),
            ),
          ),
          ListTile(
            leading: IconButton(
              icon: Icon(
                LineIcons.powerOff,
                color: Colors.red,
              ),
              onPressed: () {},
            ),
            title: Text(
              'Logout',
              style: TextStyle(
                fontSize: 20,
                fontFamily: 'Poppins',
                color: Colors.black54,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
