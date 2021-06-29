import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:memeapp/constants/AppTheme.dart';

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
          'Categories',
          
          style: TextStyle(color: Colors.black54, fontSize: 20, fontWeight: FontWeight.w700),
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
  
          return Padding(
            padding: const EdgeInsets.all(5.0),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: AppTheme.lightYellow),
              child: ListTile(
                contentPadding: EdgeInsets.all(8),
                isThreeLine: true,
                leading: Padding(
                  padding: EdgeInsets.all(10),
                  child: Icon(LineIcons.fish),
                ),
                title: Text(
                  'MayMay Category',
                  style: Style.productName,
                ),
                subtitle: Text(
                  'Meme Category Desc',
                  style: Style.productDesc,
                ),
                trailing: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(
                    LineIcons.frog,
                    color: Colors.black87,
                    size: 30,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
