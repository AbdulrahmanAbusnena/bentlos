import 'package:flutter/material.dart';
import 'package:bentlos/modules/product.dart';

class CardHome extends StatefulWidget {
  const CardHome({super.key, required this.products});
  final Products products;

  @override
  State<CardHome> createState() => CardHomeState();
}

class CardHomeState extends State<CardHome> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      height: 210,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          boxShadow: const [
            BoxShadow(
                color: Colors.grey,
                spreadRadius: 10,
                blurRadius: 3,
                offset: Offset(0, 3)),
          ]),
      child: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 9),
      ),
    );
  }
}
