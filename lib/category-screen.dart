import 'package:flutter/material.dart';
import './category-item.dart';
import './dummy_data.dart';

class CategoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DeliMeals'),
      ),
      body: GridView(
          children: [
            ...DUMMY_CATEGORIES.map((cat) {
              return CategoryItem(
                color: cat.color,
                title: cat.title,
              );
            }).toList()
          ],
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
          )),
    );
  }
}