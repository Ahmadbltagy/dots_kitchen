import 'package:dots_kitchen/dummy_data.dart';
import 'package:dots_kitchen/widgets/meal_item.dart';
import 'package:flutter/material.dart';

class CatMealScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    final catId = routeArgs['id'];
    final catTitle = routeArgs['title'];
    final catMeals = DUMMY_MEALS.where((meal) {
      return meal.categories.contains(catId);
    }).toList();
    return Scaffold(
      appBar: AppBar(
        title: Text(
          catTitle,
          style: Theme.of(context).textTheme.headline1,
        ),
      ),
      body: ListView.builder(
        itemCount: catMeals.length,
        itemBuilder: (ctx, index) {
          return MealItem(
            title: catMeals[index].title,
            imageUrl: catMeals[index].imageUrl,
            duration: catMeals[index].duration,
            complexity: catMeals[index].complexity,
            affordability: catMeals[index].affordability,
          );
        },
      ),
    );
  }
}
