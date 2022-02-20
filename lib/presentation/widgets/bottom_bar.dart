import 'package:flutter/material.dart';
import 'package:pasabahce/constraints/primary_colors.dart';
import 'package:pasabahce/presentation/screens/categories_screens/category_screen.dart';
import 'package:pasabahce/presentation/screens/favorite_screens/favorites_screen.dart';
import 'package:pasabahce/presentation/screens/home_screens/home_screen.dart';
import 'package:pasabahce/presentation/screens/settings_screens/settings_screen.dart';
import 'package:pasabahce/presentation/screens/shipping_screens/shipping_screen.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _currentIndex = 0;

  final List _screens = const [
    HomeScreen(),
    CategoryScreen(),
    ShippingScreen(),
    FavoritesScreen(),
    SettingsScreen(),
  ];

  void _updateIndex(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: _updateIndex,
        backgroundColor: Colors.white,
        selectedIconTheme: IconThemeData(color: MyColors.brown),
        unselectedIconTheme: const IconThemeData(color: Colors.black),
        selectedFontSize: 0,
        unselectedFontSize: 0,
        items: const [
          BottomNavigationBarItem(
            label: '',
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: Icon(Icons.grid_view),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: Icon(Icons.shopping_bag_outlined),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: Icon(Icons.bookmark_border),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: Icon(Icons.settings),
          ),
        ],
      ),
    );
  }
}
