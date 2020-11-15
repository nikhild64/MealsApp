import 'package:flutter/material.dart';
import '../widgets/meal_item.dart';

import '../dummy_data.dart';

class MealCategotyScreen extends StatelessWidget {
  static const routeName = '/meal-category';
  /* final String title;
  final String id;
  MealCategotyScreen({this.id, this.title}); */
  @override
  Widget build(BuildContext context) {
    final routeArgs =
        (ModalRoute.of(context).settings.arguments as Map<String, String>);
    final title = routeArgs['title'];
    final id = routeArgs['id'];
    final catMeals = DUMMY_MEALS.where((meal) {
      return meal.categories.contains(id);
    }).toList();
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return MealItem(
            id: catMeals[index].id,
            imgUrl: catMeals[index].imageUrl,
            title: catMeals[index].title,
            affordability: catMeals[index].affordability,
            complexity: catMeals[index].complexity,
            duration: catMeals[index].duration,
          );
        },
        itemCount: catMeals.length,
      ),
    );
  }
}
