import 'package:flutter/material.dart';
import 'package:meals_app/models/meal.dart';

class MealDetailPage extends StatelessWidget {
  const MealDetailPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Meal meal = ModalRoute.of(context).settings.arguments as Meal;
    return Scaffold(
      appBar: AppBar(
        title: Text(meal.title),
      ),
      body: Column(
        children: [],
      ),
    );
  }
}
