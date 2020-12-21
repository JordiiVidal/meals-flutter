import 'package:flutter/material.dart';
import 'package:meals_app/pages/categories_meals_page.dart';
import 'package:meals_app/pages/categories_page.dart';
import 'package:meals_app/pages/meal_detail_page.dart';
import 'package:meals_app/pages/tabs_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
        accentColor: Colors.black,
        canvasColor: Color.fromRGBO(255, 254, 229, 1),
        fontFamily: 'Raleway',
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/',
      routes: {
        '/': (_) => TabsPage(),
        '/category-meals': (_) => CategoriesMealsPage(),
        '/meal': (_) => MealDetailPage(),
      },
      onUnknownRoute: (settings) {
        return MaterialPageRoute(builder: (ctx) => CategoriesPage());

        ///ERROR PAGE
      },
    );
  }
}
