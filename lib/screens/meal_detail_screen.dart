import 'package:flutter/material.dart';

import '../dummy_data.dart';

class MealDetailScreen extends StatelessWidget {
  Widget title(txtTitle, context) {
    return Container(
      margin: EdgeInsets.all(15),
      width: double.infinity,
      child: Text(
        txtTitle,
        style: Theme.of(context).textTheme.bodyText2,
        textAlign: TextAlign.center,
      ),
    );
  }

  Widget buildList(list, context) {
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.grey,
      ),
      height: 200,
      width: double.infinity,
      child: ListView.builder(
        itemCount: list.length,
        itemBuilder: (ctx, index) => Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 10,
          ),
          child: Card(
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Color(0xff0f3460),
                child: Text(
                  '#${index + 1}',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              title: Text(
                '\t\t\t${list[index]}',
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final mealId = ModalRoute.of(context).settings.arguments as String;
    final selectedMeal = DUMMY_MEALS.firstWhere((meal) => meal.id == mealId);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          selectedMeal.title,
          style: Theme.of(context).textTheme.headline1,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
              ),
              height: 300,
              width: double.infinity,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.network(
                  selectedMeal.imageUrl,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            title('Ingredients', context),
            buildList(selectedMeal.ingredients, context),
            title('Steps', context),
            buildList(selectedMeal.steps, context),
          ],
        ),
      ),
    );
  }
}
