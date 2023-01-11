// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, sort_child_properties_last, unused_import

import 'package:flutter/material.dart';
import '../../screen/category_meals.dart';

class CatetegoryItem extends StatelessWidget {
  // const CatetegoryItem({super.key});

  final String id;
  final String title;
  final Color color;

  const CatetegoryItem(
    this.id,
    this.title,
    this.color,
  );

  void selectCategory(BuildContext ctx) {
    Navigator.of(ctx) //.push(
        .pushNamed(
      CategoryMeals.routeName,
      arguments: {
        'id': id,
        'title': title,
      },
    );
    // MaterialPageRoute(
    //builder: (_) => return CategoryMeals();
    // builder: (_) {
    //   return CategoryMeals(id, title);
    // },
    // ),
    // );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      //GestureDetector
      onTap: (() => selectCategory(context)),
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        padding: const EdgeInsets.all(15),
        child: Text(
          title,
          style: Theme.of(context).textTheme.subtitle1, //title
        ),
        // color: color,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              color.withOpacity(0.7),
              color,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}
