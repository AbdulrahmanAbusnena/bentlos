import 'package:flutter/material.dart';
import 'package:bentlos/modules/product.dart';

class Listile extends StatelessWidget {
  final Products products;
  final void Function()? onPressed;
  const Listile({super.key, required this.products, required this.onPressed});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white60,
        borderRadius: BorderRadius.circular(10),
      ),
      child: ListTile(
        title: Text(products.name),
        leading: Image.asset(
          products.imagepath,
        ),
        trailing: IconButton(
            onPressed: onPressed,
            icon: const Icon(
              Icons.arrow_forward_ios,
            )),
      ),
    ); // Products Name
  }
}
