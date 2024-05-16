import 'package:bentlos/modules/product.dart';
import 'package:flutter/material.dart';

class ListTileCart extends StatelessWidget {
  final void Function()? onPressed;
  final Products products;
  const ListTileCart(
      {super.key, required this.products, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 11, 54, 90),
        borderRadius: BorderRadius.circular(10),
      ),
      child: ListTile(
        title: Text(products.name),
        subtitle: Text(products.price),
        leading: Image.asset(products.imagepath),
        trailing: IconButton(
          onPressed: onPressed,
          icon: const Icon(
            Icons.delete,
            color: Colors.red,
          ),
        ),
      ),
    );
  }
}
