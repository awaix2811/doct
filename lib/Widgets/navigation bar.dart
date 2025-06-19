import 'package:flutter/material.dart';

import '../User_Pannel/Home_Screen.dart';
import '../User_Pannel/Profile Screen.dart';
import '../User_Pannel/message screen.dart';

class AnimatedBottomNavBar extends StatefulWidget {
  @override
  _AnimatedBottomNavBarState createState() => _AnimatedBottomNavBarState();
}

class _AnimatedBottomNavBarState extends State<AnimatedBottomNavBar> {
  int _selectedIndex = 0;

  // List of items for the bottom navigation bar
  final List<Map<String, dynamic>> _navItems = [
    {'icon': Icons.home, 'label': 'Home', 'screen': HomeScreen()},
    {'icon': Icons.message, 'label': 'Messages', 'screen': MessageScreen()},
    {'icon': Icons.bookmark, 'label': 'Booking', 'screen': ()},
    {'icon': Icons.person, 'label': 'Profile', 'screen': ProfileScreen()},
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    // Navigate to the selected screen
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => _navItems[index]['screen'],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 20,
            blurRadius: 30,
            offset: Offset(0, -2),
          ),
        ],
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: List.generate(_navItems.length, (index) {
          return GestureDetector(
            onTap: () => _onItemTapped(index),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  _navItems[index]['icon'],
                  color: _selectedIndex == index ? Colors.green : Colors.grey,
                  size: 28,
                ),
                SizedBox(height: 5),
                Text(
                  _navItems[index]['label'],
                  style: TextStyle(
                    color: _selectedIndex == index ? Colors.green : Colors.grey,
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          );
        }),
      ),
    );
  }
}