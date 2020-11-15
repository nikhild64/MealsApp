import 'package:flutter/material.dart';

class MealCategotyScreen extends StatelessWidget {
  /* final String title;
  final String id;
  MealCategotyScreen({this.id, this.title}); */
  @override
  Widget build(BuildContext context) {
    final routeArgs =
        (ModalRoute.of(context).settings.arguments as Map<String, String>);
    final title = routeArgs['title'];
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Text('Meal category'),
      ),
    );
  }
}
