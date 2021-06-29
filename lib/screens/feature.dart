import 'package:flutter/material.dart';
import 'package:line_icons/line_icon.dart';
import 'package:line_icons/line_icons.dart';

class FeaturePage extends StatefulWidget {
  const FeaturePage({Key? key}) : super(key: key);

  @override
  _FeaturePageState createState() => _FeaturePageState();
}

class _FeaturePageState extends State<FeaturePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
      elevation: 0,
        leading: IconButton(
          icon: LineIcon.arrowLeft(),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text('Add Meme', style: TextStyle(color: Colors.black54, fontSize: 25),),
      ),
      body: Center(child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: MaterialButton(
          height: 50,
          minWidth: 20,
          color: Colors.pink,
          onPressed: () {}, child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(
          LineIcons.upload,
          color: Colors.white,
          size: 24.0,
    ),
        ),
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text('Upload your meme', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25),),
    )
        ],),),
      ),),
    );
  }
}
