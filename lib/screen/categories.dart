// ignore_for_file: prefer_const_literals_to_create_immutables, sort_child_properties_last, prefer_const_constructors

import 'package:flutter/material.dart';
import '../widgets/dummy_data.dart';
import '../widgets/category_item.dart';

class Cateegories extends StatelessWidget {
  const Cateegories({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView(
      //Scaffold(
      // appBar: AppBar(title: const Text('DeliMeal')),
      //body: GridView(
      padding: const EdgeInsets.all(25),
      children: DUMMY_CATEGORIES
          .map(
            (catData) =>
                CatetegoryItem(catData.id, catData.title, catData.color),
          )
          .toList(),
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
      ),
    );
  }
}
