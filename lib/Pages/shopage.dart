import 'package:bentlos/Components/cards.dart';
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
              backgroundColor: const Color.fromRGBO(231, 223, 154, 1),
              appBar: AppBar(
                title: Text(
                  'Shop',
                  style: GoogleFonts.montserrat(
                    color: Colors.white54,
                    fontSize: 24,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                backgroundColor: const Color.fromRGBO(231, 223, 154, 1),
                elevation: 0.0,
              ),
              body: Column(
                children: [
                  Expanded(
                    child: ListView.builder(
                        itemCount: value.shop.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          Products individualProducts = value.shop[index];
                          return CardHome(
                            products: individualProducts,
                            onTap: () => getOrder(individualProducts),
                          );
                        }),
                  ),
                ],
              ),
            ));
  }
}
