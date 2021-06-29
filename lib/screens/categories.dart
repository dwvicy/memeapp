import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:memeapp/constants/catCard.dart';

List<String> names = [
  'Una banana',
  'An apple a day, keeps doctor away',
  'Bunny loves carrots',
  'Grapes are sweet',
  'Yum Yum Mango'
];

class CategoryList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CategoryCard(),
    );
  }
}
