import 'package:flutter/material.dart';
import '../widgets/category_card.dart';

import '../dummy_data.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: const EdgeInsets.all(15),
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200,
        childAspectRatio: 3 / 2,
        mainAxisSpacing: 20,
        crossAxisSpacing: 20,
      ),
      children: DUMMY_CATEGORIES
          .map(
            (catData) => CategoryCard(catData.id, catData.title, catData.color),
          )
          .toList(),
    );
  }
}
