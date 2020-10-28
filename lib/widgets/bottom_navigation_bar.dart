import 'package:flutter/material.dart';

class AppBottomNavigation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Color.fromARGB(255, 37, 37, 37),
      items: [
        new BottomNavigationBarItem(
          icon: Image.asset(
            "assets/images/icons8-detective-96-7.png",
            width: 48,
            height: 30,
          ),
          label: '',
        ),
        new BottomNavigationBarItem(
          icon: Image.asset(
            "assets/images/nav2.png",
            width: 48,
            height: 30,
          ),
          label: '',
        ),
        new BottomNavigationBarItem(
          icon: Image.asset(
            "assets/images/icons8-calendar-500-7.png",
            width: 48,
            height: 30,
          ),
          label: '',
        ),
      ],
    );
  }
}
