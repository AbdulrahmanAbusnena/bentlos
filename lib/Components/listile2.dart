import 'package:bentlos/modules/product.dart';
import 'package:flutter/material.dart';

class ListTileCart extends StatelessWidget {
  final void Function()? onTap;
  final Products products;
  const ListTileCart({super.key, required this.products, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 11, 54, 90),
        ),
        child: ListTile(
          title: Text(products.name),
          subtitle: Text(products.price),
          leading: Image.asset(products.imagepath),
          trailing: const Icon(
            Icons.delete,
            color: Colors.red,
          ),
        ),
      ),
    );
  }
}
