import 'package:flutter/material.dart';

import 'main_drawer_screen.dart';

class FilterScreen extends StatelessWidget {
  static const routeNames = '/filters';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MainDrawer(),
      appBar: AppBar(
        title: Text('Apply Filters'),
      ),
      body: Center(
        child: Text('Apply Filters'),
      ),
    );
  }
}
