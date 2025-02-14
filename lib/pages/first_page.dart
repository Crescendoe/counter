import 'package:flutter/material.dart';
import 'package:counter/pages/home_page.dart';
import 'package:counter/pages/settings_page.dart';
import 'package:counter/pages/profile_page.dart';

class FirstPage extends StatefulWidget {
  FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  //Keeps track of the selected index
  int _selectedIndex = 0;

  // method that updates the selected index
  void _navigateBottomBar(int index) {
  setState(() {
    _selectedIndex = index;
  });
}

  //List of pages
  final List _pages = [
    HomePage(),

    ProfilePage(),

    SettingsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("1st Page")),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _navigateBottomBar,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "Settings",
          ),
        ],
      ),
    );
  }
}