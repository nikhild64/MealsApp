import 'package:flutter/material.dart';
import 'package:meals_app/screens/meal_screen.dart';
import 'screens/category-screen.dart';
import 'screens/meal_category_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DeliMeals',
      theme: ThemeData(
          primarySwatch: Colors.pink,
          accentColor: Colors.amber,
          canvasColor: Color.fromRGBO(255, 254, 229, 1),
          fontFamily: 'Raleway',
          textTheme: ThemeData.light().copyWith().textTheme.copyWith(
                  headline6: TextStyle(
                fontSize: 20,
                fontFamily: 'RobotoCondensed',
              ))),
      initialRoute: '/',
      routes: {
        '/': (ctx) => CategoryScreen(),
        MealCategotyScreen.routeName: (ctx) => MealCategotyScreen(),
        MealScreen.routeName: (ctx) => MealScreen()
      },
    );
  }
}
