import 'package:bentlos/Components/navbar.dart';
import 'package:bentlos/Pages/cartpage.dart';
import 'package:bentlos/Pages/homepage.dart';
import 'package:bentlos/Pages/shopage.dart';
import 'package:flutter/material.dart';

class NavSwitch extends StatefulWidget {
  const NavSwitch({super.key});

  @override
  State<NavSwitch> createState() => _NavSwitchState();
}

class _NavSwitchState extends State<NavSwitch> {
  int _selected_index = 0;
  void navigateBottomBar(int newindex) {
    setState(
      () {
        _selected_index = newindex;
      },
    );
  }

  final List<Widget> _pages = [
    const HomePage(), // Home Page
    const ShopPage(), // shop Page
    const CartPage(), // Cart Page
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavBar(
        onTabChange: (index) => navigateBottomBar(index),
      ),
      body: _pages[_selected_index],
    );
  }
}
