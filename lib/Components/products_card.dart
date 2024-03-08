import 'package:flutter/material.dart';
import 'package:bentlos/modules/product.dart';

// ignore: must_be_immutable
class CardHome extends StatefulWidget {
  CardHome({
    super.key,
    required this.products,
    required this.onTap,
  });

  final Products products;
  void Function()? onTap;

  @override
  State<CardHome> createState() => _CardHomeState();
}

class _CardHomeState extends State<CardHome> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Card(
        elevation: 50,
        shadowColor: Colors.grey,
        color: Colors.white60,
        child: SizedBox(
          height: 100,
          width: 200,
          child: Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
              children: [
                Center(
                  child: CircleAvatar(
                    backgroundImage: AssetImage(widget.products.imagepath),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Row(children: [
                  Text(widget.products.name), // title
                  const SizedBox(width: 20),
                  Text(widget.products.price), // Price
                ]),
                const SizedBox(
                  height: 25,
                ),
                Text(widget.products.description), // description
              ],
            ),
          ),
        ),
      ),
    );
  }
}
