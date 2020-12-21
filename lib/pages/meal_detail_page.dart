import 'package:flutter/material.dart';
import 'package:meals_app/models/meal.dart';

class MealDetailPage extends StatelessWidget {
  const MealDetailPage({Key key}) : super(key: key);

  Widget _buildSectionTitle(String text) => Container(
        padding: const EdgeInsets.symmetric(vertical: 18.0),
        child: Text(
          text,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      );
  Widget _buildContainer(Widget child) => Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey[300], width: 1),
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
                blurRadius: 5,
                color: Colors.grey[200],
                spreadRadius: 2,
                offset: Offset(0, 3))
          ],
        ),
        padding: const EdgeInsets.all(10),
        height: 200,
        width: 320,
        child: child,
      );

  @override
  Widget build(BuildContext context) {
    final Meal meal = ModalRoute.of(context).settings.arguments as Meal;
    return Scaffold(
      appBar: AppBar(
        title: Text(meal.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 300,
              child: Image.network(
                meal.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
            _buildSectionTitle('Ingredients'),
            _buildContainer(
              ListView.builder(
                physics: BouncingScrollPhysics(),
                itemCount: meal.ingredients.length,
                itemBuilder: (ctx, index) => Card(
                  elevation: 2,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(meal.ingredients[index]),
                  ),
                ),
              ),
            ),
            _buildSectionTitle('Steps'),
            _buildContainer(
              ListView.builder(
                physics: BouncingScrollPhysics(),
                itemCount: meal.steps.length,
                itemBuilder: (ctx, index) => Column(
                  children: [
                    ListTile(
                      leading: CircleAvatar(
                        child: Text('${(index + 1)}'),
                      ),
                      title: Text(meal.steps[index]),
                    ),
                    Divider()
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
