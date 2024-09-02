import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      decoration: BoxDecoration(color: Color(0xFF212325), boxShadow: [
        BoxShadow(
          spreadRadius: 1,
          blurRadius: 8,
        )
      ]),
      child: NavigationBar(
        height: 50,
        indicatorColor: Color(0xFFE57734),
        backgroundColor: Color(0xFF212325),
        destinations: [
          NavigationDestination(
              icon: Icon(
                Icons.home,
                color: Colors.white,
                size: 30,
              ),
              label: ''),
          NavigationDestination(
            icon: Icon(
              Icons.favorite,
              color: Colors.white,
              size: 30,
            ),
            label: '',
          ),
          NavigationDestination(
            icon: Badge(
              child: Icon(
                Icons.notifications_sharp,
                color: Colors.white,
                size: 30,
              ),
            ),
            label: '',
          ),
          NavigationDestination(
              icon: Icon(
                Icons.person,
                color: Colors.white,
                size: 30,
              ),
              label: ''),
        ],
      ),
    );
  }
}
