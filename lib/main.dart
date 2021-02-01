import 'package:dots_kitchen/categories_screen.dart';
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
          color: Colors.white,
        ),
        textTheme: TextTheme(
          headline1: TextStyle(
            color: Colors.blue,
            fontFamily: 'Quicksand',
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
        ),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
          child: CategoriesScreen(),
        ));
  }
}
