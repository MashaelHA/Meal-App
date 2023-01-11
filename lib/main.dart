// ignore_for_file: prefer_const_constructors, unused_import, avoid_print, unused_field, use_key_in_widget_constructors, unused_local_variable, unused_element

import 'package:flutter/material.dart';
import './widgets/dummy_data.dart';
import './screen/tabs.dart';
import './screen/categories.dart';
import './screen/category_meals.dart';
import './screen/meal_detail.dart';
import './models/meal.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // const MyApp({super.key});

  final List<Meal> _favoriteMeals = [];

  void _toggleFavorit(String mealId) {
    final existingIndex =
        _favoriteMeals.indexWhere((meal) => meal.id == mealId);
    if (existingIndex >= 0) {
      setState() {
        _favoriteMeals.removeAt(existingIndex);
      }
    } else {
      setState() {
        _favoriteMeals.add(DUMMY_MEALS.firstWhere((meal) => meal.id == mealId));
      }
    }
  }

  bool _isMealFavorite(String id) {
    return _favoriteMeals.any((meal) => meal.id == id);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'DeliMeals',
      theme: ThemeData(
          primarySwatch: Colors.purple,
          // ignore: deprecated_member_use
          accentColor: Colors.amber,
          canvasColor: Color.fromRGBO(255, 254, 229, 1),
          fontFamily: 'Raleway',
          textTheme: ThemeData.light().textTheme.copyWith(
              bodyText1: TextStyle(color: Color.fromRGBO(20, 51, 51, 1)),
              bodyText2: TextStyle(color: Color.fromRGBO(20, 51, 51, 1)),
              subtitle1: TextStyle(
                fontFamily: 'RobotoCondensed',
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ))),
      initialRoute: '/',
      routes: {
        '/': (ctx) => Tabs(_favoriteMeals),
        CategoryMeals.routeName: (ctx) => CategoryMeals(),
        MealDetail.routeName: (ctx) =>
            MealDetail(_toggleFavorit, _isMealFavorite),
      }, // pushNamed
      onUnknownRoute: (settings) {
        return MaterialPageRoute(builder: (ctx) => Cateegories());
      },
    );
  }
}
