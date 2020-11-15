enum Affordability { Affordable, Pricey, Luxurious }
enum Complexity { Simple, Challenging, Hard }

class Meal {
  final String id;
  final List categories;

  final String title;
  final Affordability affordability;
  final Complexity complexity;
  final String imageUrl;
  final int duration;

  final List ingredients;
  final List steps;
  final bool isGlutenFree;
  final bool isVegan;
  final bool isVegetarian;
  final bool isLactoseFree;
  const Meal(
      {this.affordability,
      this.categories,
      this.complexity,
      this.duration,
      this.id,
      this.imageUrl,
      this.ingredients,
      this.isGlutenFree,
      this.isLactoseFree,
      this.isVegan,
      this.isVegetarian,
      this.steps,
      this.title});
}
