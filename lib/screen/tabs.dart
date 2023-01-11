// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, duplicate_ignore

import 'package:flutter/material.dart';
import '../models/meal.dart';
import './favorites.dart';
import './categories.dart';

class Tabs extends StatelessWidget {
  // const Tabs(List<Meal> favoriteMeals, {super.key});
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






// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

// import 'package:flutter/material.dart';

// import '../models/meal.dart';
// import './favorites.dart';
// import './categories.dart';

// class Tabs extends StatefulWidget {
//   // const Tabs({super.key});
//   final List<Meal> favoriteMeals;
//   // ignore: use_key_in_widget_constructors
//    Tabs(this.favoriteMeals);

//   @override
//   State<Tabs> createState() => _TabsState();
// }

// class _TabsState extends State<Tabs> {
//   @override
//   Widget build(BuildContext context) {
//     return DefaultTabController(
//       length: 2,
//       initialIndex: 0,
//       child: Scaffold(
//         appBar: AppBar(
//           title: Text('Meals'),
//           bottom: TabBar(tabs: <Widget>[
//             Tab(
//               icon: Icon(Icons.category),
//               text: 'Categories',
//             ),
//             Tab(
//               icon: Icon(Icons.star),
//               text: 'Favorites',
//             ),
//           ]),
//         ),
//         body: TabBarView(children: <Widget>[
//           Cateegories(),
//           Favorites(),
//         ],),
//       ),
//     );
//   }
// }

// // class Tabs extends StatefulWidget {
// //   // const Tabs(List<Meal> favoriteMeals, {super.key});
// //   final List<Meal> favoriteMeals;
// //   // ignore: use_key_in_widget_constructors
// //   const Tabs(this.favoriteMeals);

// //    @override
// //    _TabsState createState() => _TabsState();
// // }


// // class _Tabs extends State<Tabs> {

// //   @override
// //   Widget build(BuildContext context) {
// //     return DefaultTabController(
// //       length: 2,
// //       initialIndex: 0,
// //       child: Scaffold(
// //         appBar: AppBar(
// //           title: Text('Meals'),
// //           bottom: TabBar(tabs: <Widget>[
// //             Tab(
// //               icon: Icon(Icons.category),
// //               text: 'Categories',
// //             ),
// //             Tab(
// //               icon: Icon(Icons.star),
// //               text: 'Favorites',
// //             ),
// //           ]),
// //         ),
// //         body: TabBarView(children: <Widget>[
// //           Cateegories(),
// //           Favorites(),
// //         ],),
// //       ),
// //     );
// //   }
// // }

