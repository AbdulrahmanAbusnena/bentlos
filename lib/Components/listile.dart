import 'package:flutter/material.dart';
import 'package:bentlos/modules/product.dart';

class Listile extends StatefulWidget {
  Products products;
  Listile({super.key, required this.products});

  @override
  State<Listile> createState() => _ListileState();
}

class _ListileState extends State<Listile> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(widget.products.name),
      leading: Image.asset(widget.products.imagepath),
      trailing: Icon(Icons.arrow_forward_ios),
    ); // Products Name
  }
}
