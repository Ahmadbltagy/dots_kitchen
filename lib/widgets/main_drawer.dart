import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
  Widget buildListTile(IconData icon, String title) {
    return ListTile(
      leading: Icon(
        icon,
        size: 23,
      ),
      title: Text(
        title,
        style: TextStyle(
          fontSize: 22,
          color: Colors.black,
        ),
      ),
      onTap: () {},
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Color(0xff0f3460),
          height: 120,
          width: double.infinity,
          padding: EdgeInsets.all(20),
          alignment: Alignment.centerLeft,
          child: Text(
            "Cooking Up!",
            style: TextStyle(
                fontWeight: FontWeight.w900, fontSize: 30, color: Colors.white),
          ),
        ),
        SizedBox(height: 50),
        buildListTile(Icons.restaurant, 'Meal'),
        buildListTile(Icons.settings, 'Settings'),
      ],
    );
  }
}
