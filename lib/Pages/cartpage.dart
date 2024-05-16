import 'package:bentlos/Components/listile2.dart';
import 'package:bentlos/modules/product.dart';
import 'package:bentlos/modules/shop.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => CartPageState();
}

class CartPageState extends State<CartPage> {
  void removeFromCart(Products products) {
    Provider.of<EApp>(context, listen: false).removefromCart(products);
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<EApp>(builder: (context, value, child) {
      return Scaffold(
        backgroundColor: Color.fromRGBO(231, 223, 154, 1),
        appBar: AppBar(
          title: Text('Cart',
              style: GoogleFonts.montserrat(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              )),
          centerTitle: true,
          elevation: 0,
          backgroundColor: Color.fromRGBO(231, 223, 154, 1),
        ),
        body: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: value.cart.length,
                itemBuilder: ((context, index) {
                  Products individualProducts = value.shop[index];
                  return Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: ListTileCart(
                      products: individualProducts,
                      onPressed: () => removeFromCart(individualProducts),
                    ),
                  );
                }),
              ),
            ),
          ],
        ),
      );
    });
  }
}
