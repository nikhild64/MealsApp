import 'package:flutter/material.dart';

import 'category-screen.dart';
import 'favourites.dart';
import 'main_drawer_screen.dart';

class TabScreens extends StatefulWidget {
  @override
  _TabScreensState createState() => _TabScreensState();
}

class _TabScreensState extends State<TabScreens> {
  List<Widget> _pages = [
    CategoryScreen(),
    FavouriteScreen(),
  ];
  int _selectedIndex = 0;

  void _selectPage(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MainDrawer(),
      appBar: AppBar(
        title: Text('Meals'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (index) {
          _selectPage(index);
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.category), label: 'Category'),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), label: 'Favourites'),
        ],
      ),
      body: _pages[_selectedIndex],
    );
  }
}

/* 
return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: Text('Meals'),
            bottom: TabBar(
              tabs: [
                Tab(
                  icon: Icon(Icons.category),
                ),
                Tab(
                  icon: Icon(Icons.favorite),
                )
              ],
            ),
          ),
          body: TabBarView(
            children: [
              CategoryScreen(),
              FavouriteScreen(),
            ],
          ),
        )); */
