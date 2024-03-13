import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

// ignore: must_be_immutable
class NavBar extends StatelessWidget {
  void Function(int)? onTabChange;
  NavBar({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return GNav(
      onTabChange: (value) => onTabChange!(value),
      mainAxisAlignment: MainAxisAlignment.center,
      backgroundColor: Colors.black,
      activeColor: Colors.black,
      tabActiveBorder: Border.all(color: Colors.white54),
      //  tabBackgroundColor: Colors.grey.shade500,
      color: const Color.fromRGBO(255, 255, 255, 0.541),
      padding: const EdgeInsets.all(16.0),
      gap: 20,
      iconSize: 25,
      tabs: const [
        GButton(icon: Icons.home_rounded, text: 'Home'),
        GButton(icon: Icons.shopping_bag_rounded, text: 'Shop'),
        GButton(
          icon: Icons.shopping_cart_rounded,
          text: 'Cart',
        ),
      ],
    );
  }
}
