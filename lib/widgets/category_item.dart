import 'package:flutter/material.dart';
import 'package:meals_app/models/category.dart';
import 'package:meals_app/pages/categories_meals_page.dart';
import 'package:meals_app/pages/categories_page.dart';

class CategoryItem extends StatelessWidget {
  final Category category;
  const CategoryItem({Key key, this.category}) : super(key: key);

  void _onTapCategory(BuildContext context) {
    Navigator.pushNamed(
      context,
      '/category-meals',
      arguments: category,
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => _onTapCategory(context),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        child: Container(
          padding: const EdgeInsets.all(16),
          child: Text(category.title),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: <Color>[
                category.color.withOpacity(0.7),
                category.color,
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
        ),
      ),
    );
  }
}
