import 'package:flutter/material.dart';

import '../widgets/main_drawer.dart';
import './favorite_screen.dart';
import './categories_screen.dart';

class TabScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        drawer: Drawer(
          child: MainDrawer(),
        ),
        appBar: AppBar(
          title: Text(
            "Dots Kitchen",
            style: Theme.of(context).textTheme.headline1,
          ),
          centerTitle: true,
          bottom: TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.category),
                text: 'Category',
              ),
              Tab(
                icon: Icon(Icons.favorite),
                text: 'Favorite',
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [CategoriesScreen(), FavScreen()],
        ),
      ),
    );
  }
}
