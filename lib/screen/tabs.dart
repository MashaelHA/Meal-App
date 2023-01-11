// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, duplicate_ignore

import 'package:flutter/material.dart';
import '../models/meal.dart';
import './favorites.dart';
import './categories.dart';

class Tabs extends StatelessWidget {

  final List<Meal> favoriteMeals;
  // ignore: use_key_in_widget_constructors
  const Tabs(this.favoriteMeals);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Meals'),
          bottom: TabBar(tabs: <Widget>[
            Tab(
              icon: Icon(Icons.category),
              text: 'Categories',
            ),
            Tab(
              icon: Icon(Icons.star),
              text: 'Favorites',
            ),
          ]),
        ),
        body: TabBarView(children: <Widget>[
          Cateegories(),
          Favorites([]),
        ]),
      ),
    );
  }
}
