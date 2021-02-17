import 'package:dots_kitchen/screens/meal_detail_screen.dart';

import 'screens/categories_meals_screen.dart';
import 'screens/categories_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'dotsKitchen',
      theme: ThemeData(
        fontFamily: 'OpenSans',
        appBarTheme: AppBarTheme(
          elevation: 0,
          centerTitle: true,
          color: Color(0xff0f3460),
        ),
        textTheme: TextTheme(
          headline1: TextStyle(
            color: Color(0xffe8e8e8),
            fontFamily: 'Quicksand',
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
          bodyText1: TextStyle(
            fontFamily: 'OpenSans',
            fontWeight: FontWeight.bold,
            fontSize: 20,
            color: Colors.white,
          ),
          bodyText2: TextStyle(
            fontFamily: 'OpenSans',
            fontWeight: FontWeight.bold,
            fontSize: 20,
            color: Colors.black,
          ),
        ),
      ),
      routes: {
        '/': (ctx) => CategoriesScreen(),
        '/categories-meal': (ctx) => CatMealScreen(),
        '/meal-detail': (ctx) => MealDetailScreen(),
      },
    );
  }
}
