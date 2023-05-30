import 'package:flutter/material.dart';

class BottomNavBarDemo extends StatefulWidget {
  const BottomNavBarDemo({Key? key}) : super(key: key);

  @override
  State<BottomNavBarDemo> createState() => _BottomNavBarDemoState();
}

class _BottomNavBarDemoState extends State<BottomNavBarDemo> {
  int selected = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
        child: BottomNavigationBar(
          backgroundColor: Colors.white54,
          type: BottomNavigationBarType.fixed,
          currentIndex: selected,
          selectedItemColor: Colors.red,
          unselectedItemColor: Colors.black,
          //backgroundColor: Colors.teal,
          onTap: (value) {
            setState(() {});
            selected = value;
          },
          elevation: 5,
          showSelectedLabels: true,
          showUnselectedLabels: false,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart_outlined),
              label: "Cart",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add_alert_outlined),
              label: "Alert",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outline),
              label: "Profile",
            ),
          ],
        ),
      ),
    );
  }
}
