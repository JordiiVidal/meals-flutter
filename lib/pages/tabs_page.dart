import 'package:flutter/material.dart';
import 'package:meals_app/pages/categories_page.dart';
import 'package:meals_app/pages/favorites_page.dart';

class TabsPage extends StatefulWidget {
  const TabsPage({Key key}) : super(key: key);

  @override
  _TabsPageState createState() => _TabsPageState();
}

class _TabsPageState extends State<TabsPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Meals App',
            style: TextStyle(fontFamily: "RobotoCondensed"),
          ),
          bottom: TabBar(
            indicatorColor: Colors.white,
            tabs: <Tab>[
              Tab(
                icon: Icon(Icons.category),
                text: 'Categories',
              ),
              Tab(
                icon: Icon(Icons.favorite),
                text: 'Favorite',
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            CategoriesPage(),
            FavoritesPage(),
          ],
        ),
      ),
    );
  }
}
