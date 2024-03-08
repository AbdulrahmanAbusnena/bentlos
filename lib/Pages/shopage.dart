import 'package:bentlos/Components/products_card.dart';
import 'package:bentlos/Pages/orderpage.dart';
import 'package:flutter/material.dart';
import 'package:bentlos/modules/shop.dart';
import 'package:bentlos/modules/product.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  getOrder(Products products) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => OrderPage(
          products: products,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<EApp>(
      builder: (context, value, child) => Scaffold(
          backgroundColor: Colors.yellow[400],
          appBar: AppBar(
            title: Text(
              'Shop',
              style: GoogleFonts.montserrat(
                color: Colors.white54,
                fontSize: 24,
                fontWeight: FontWeight.w800,
              ),
            ),
            backgroundColor: Colors.yellow[400],
            elevation: 0.0,
          ),
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                ListView.builder(
                    itemCount: value.shop.length,
                    itemBuilder: (context, index) {
                      Products individualProducts = value.shop[index];
                      return CardHome(
                        products: individualProducts,
                        onTap: () => getOrder(individualProducts),
                      );
                    }),
              ],
            ),
          )),
    );
  }
}
