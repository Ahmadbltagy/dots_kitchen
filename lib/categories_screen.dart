import 'package:flutter/material.dart';
import 'category_card.dart';

import './models/dummy_data.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          "dotsKitchen.",
          style: Theme.of(context).textTheme.headline1,
        ),
      ),
      body: Center(
        child: GridView(
          padding: const EdgeInsets.all(15),
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            childAspectRatio: 3 / 2,
            mainAxisSpacing: 20,
            crossAxisSpacing: 20,
          ),
          children: DUMMY_CATEGORIES
              .map(
                (catData) =>
                    CategoryCard(catData.id, catData.title, catData.color),
              )
              .toList(),
        ),
      ),
    );
  }
}
