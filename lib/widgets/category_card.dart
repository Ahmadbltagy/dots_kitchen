import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  final String id;
  final String title;
  final Color colr;

  CategoryCard(this.id, this.title, this.colr);

  void selectedCat(BuildContext ctx) {
    Navigator.of(ctx)
        .pushNamed('/categories-meal', arguments: {'id': id, 'title': title});
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectedCat(context),
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              colr.withOpacity(0.7),
              colr,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Center(
          child: Text(
            title,
            style: Theme.of(context).textTheme.bodyText1,
          ),
        ),
      ),
    );
  }
}
