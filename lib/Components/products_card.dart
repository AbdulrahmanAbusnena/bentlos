import 'package:flutter/material.dart';
import 'package:bentlos/modules/product.dart';

class CardHome extends StatefulWidget {
  const CardHome({
    super.key,
    required this.products,
  });
  final Products products;

  @override
  State<CardHome> createState() => CardHomeState();
}

class CardHomeState extends State<CardHome> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 50,
      shadowColor: Colors.grey,
      color: Colors.white60,
      child: SizedBox(
        height: 100,
        width: 200,
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: [],
          ),
        ),
      ),
    );
  }
}
