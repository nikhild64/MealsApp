import 'package:flutter/material.dart';

import 'filter_screen.dart';

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Card(
            child: Container(
              padding: EdgeInsets.all(15),
              height: 200 + MediaQuery.of(context).padding.top,
              width: double.infinity,
              alignment: Alignment.centerLeft,
              child: Text(
                'Cooking Up',
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
          ),
          Column(
            children: [
              ListTile(
                leading: Icon(Icons.category),
                title: Text('Meal Category'),
                onTap: () {
                  Navigator.of(context).pushReplacementNamed('/');
                },
              ),
              ListTile(
                onTap: () {
                  Navigator.of(context)
                      .pushReplacementNamed(FilterScreen.routeNames);
                },
                leading: Icon(Icons.filter),
                title: Text('Filters'),
              ),
            ],
          )
        ],
      ),
    );
  }
}
