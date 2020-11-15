import 'package:flutter/material.dart';
import '../models/meal.dart';
import '../widgets/meal_item.dart';

class MealScreen extends StatelessWidget {
  static const routeName = '/meal-item';

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        (ModalRoute.of(context).settings.arguments as Map<String, Object>);
    final title = routeArgs['title'];

    print(title);
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Text(title),
      ),
    );
  }
}
