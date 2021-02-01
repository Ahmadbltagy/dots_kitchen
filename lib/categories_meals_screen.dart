import 'package:flutter/material.dart';

class CatMealScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    final catId = routeArgs['id'];
    final catTitle = routeArgs['title'];
    return Scaffold(
      appBar: AppBar(
        title: Text(
          catTitle,
          style: Theme.of(context).textTheme.headline1,
        ),
      ),
      body: Center(
        child: Text(catId),
      ),
    );
  }
}
