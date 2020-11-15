import 'package:flutter/material.dart';
import '../widgets/category-item.dart';
import '../dummy_data.dart';

class CategoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: EdgeInsets.all(15),
      children: [
        ...DUMMY_CATEGORIES.map((cat) {
          return CategoryItem(
            id: cat.id,
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
      ),
    );
  }
}
