import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:memeapp/constants/AppTheme.dart';

List<String> names = [
  'Una banana',
  'An apple a day, keeps doctor away',
  'Bunny loves carrots',
  'Grapes are sweet',
  'Yum Yum Mango'
];

List<Icon> icons = [
  Icon(LineIcons.figma),
  Icon(LineIcons.landmark),
  Icon(LineIcons.fish),
  Icon(LineIcons.frog),
  Icon(LineIcons.apple),
];

List<Icon> trailings = [
  Icon(LineIcons.figma),
  Icon(LineIcons.landmark),
  Icon(LineIcons.fish),
  Icon(LineIcons.frog),
  Icon(LineIcons.apple),
];

class CategoryCard extends StatefulWidget {
  @override
  _CategoryCardState createState() => _CategoryCardState();
}

class _CategoryCardState extends State<CategoryCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Category',
          style: TextStyle(
              color: Colors.black54, fontSize: 20, fontWeight: FontWeight.w700),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        // leading: IconButton(
        //   icon: Icon(
        //     Icons.arrow_back_ios_rounded,
        //   ),
        //   onPressed: () {
        //     Navigator.pop(context);
        //   },
        // ),
      ),
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          return CateCard(
            title: names[index],
            icon: icons[index],
            trailing: trailings[index],
          );
        },
      ),
    );
  }
}

class CateCard extends StatelessWidget {
  final String title;
  final Icon icon;
  final Icon trailing;
  const CateCard({Key? key, required this.title, required this.icon, required this.trailing});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, left: 20, right: 20, bottom: 10),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: AppTheme.lightYellow),
        child: ListTile(
          contentPadding: EdgeInsets.all(10),
          isThreeLine: true,
          leading: Padding(
            padding: EdgeInsets.all(10),
            child: icon,
          ),
          title: Text(
            title,
            style: Style.productName,
          ),
          subtitle: Text(
            title,
            style: Style.productDesc,
          ),
          trailing: Padding(
            padding: const EdgeInsets.all(8.0),
            child: trailing
          ),
        ),
      ),
    );
  }
}
