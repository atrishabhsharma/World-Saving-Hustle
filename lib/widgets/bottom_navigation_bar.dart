import 'package:flutter/material.dart';

class AppBottomNavigation extends StatefulWidget {
  final context;
  AppBottomNavigation({this.context});
  @override
  _AppBottomNavigationState createState() => _AppBottomNavigationState();
}

class _AppBottomNavigationState extends State<AppBottomNavigation> {
  int _currentindex = 1;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Color.fromARGB(255, 37, 37, 37),
      currentIndex: _currentindex,
      items: [
        BottomNavigationBarItem(
          icon: Image.asset(
            "assets/images/icons8-detective-96-7.png",
            width: 48,
            height: 30,
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Image.asset(
            "assets/images/nav2.png",
            width: 48,
            height: 30,
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Image.asset(
            "assets/images/icons8-calendar-500-7.png",
            width: 48,
            height: 30,
          ),
          label: '',
        ),
      ],
      onTap: (index) {
        setState(() {
          _currentindex = index;
          if (_currentindex == 0) {
            Navigator.pushNamed(context, 'findaneventpage');
          } else if (_currentindex == 1) {
            Navigator.pushNamed(context, 'myprofilepage');
          } else {
            Navigator.pushNamed(context, 'registerpage');
          }
        });
      },
    );
  }
}
