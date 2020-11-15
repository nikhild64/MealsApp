import 'package:flutter/material.dart';

class MealScreen extends StatelessWidget {
  static const routeName = '/meal-item';

  @override
  Widget build(BuildContext context) {
    final String id = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar(
        title: Text(id),
      ),
      body: Text(id),
    );
  }
}
