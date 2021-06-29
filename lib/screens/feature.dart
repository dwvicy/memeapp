import 'package:flutter/material.dart';
import 'package:line_icons/line_icon.dart';

class FeaturePage extends StatefulWidget {
  const FeaturePage({Key? key}) : super(key: key);

  @override
  _FeaturePageState createState() => _FeaturePageState();
}

class _FeaturePageState extends State<FeaturePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        leading: IconButton(
          icon: LineIcon.arrowLeft(),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
