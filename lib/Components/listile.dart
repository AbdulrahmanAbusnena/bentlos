import 'package:bentlos/Design/colors.dart';
import 'package:flutter/material.dart';
import 'package:bentlos/modules/product.dart';

class Listile extends StatelessWidget {
  final Products products;
  final void Function()? onTap;
  const Listile({super.key, required this.products, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: buttons_card_color),
        child: ListTile(
          title: Text(products.name),
          leading: Image.asset(products.imagepath),
          trailing: const Icon(Icons.arrow_forward_ios),
        ),
      ),
    ); // Products Name
  }
}
