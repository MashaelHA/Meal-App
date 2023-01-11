// ignore_for_file: use_key_in_widget_constructors, non_constant_identifier_names, prefer_const_constructors_in_immutables, unused_local_variable

import 'package:flutter/material.dart';
import '../widgets/meal_item.dart';
import '../widgets/dummy_data.dart';

class CategoryMeals extends StatelessWidget {
  static const routeName = '/category-meals';

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context)?.settings.arguments as Map<String, String>;
    final CategoryTitle = routeArgs['title'];
    final CategoryId = routeArgs['id'];
    final CategoryMeals = DUMMY_MEALS.where((meal) {
      return meal.categories.contains(CategoryId);
    }).toList();

    // ignore: prefer_const_constructors
    return Scaffold(
      appBar: AppBar(
        title: Text(CategoryTitle!),
      ),
      // ignore: prefer_const_constructors
      body: ListView.builder(
        itemBuilder: (ctx, index) {
          return MealItem(
            id: CategoryMeals[index].id,
            title: CategoryMeals[index].title,
            imageUrl: CategoryMeals[index].imageUrl,
            duration: CategoryMeals[index].duration,
            complexity: CategoryMeals[index].complexity,
            affordability: CategoryMeals[index].affordability,
          );
        },
        itemCount: CategoryMeals.length,
      ),
    );
  }
}
