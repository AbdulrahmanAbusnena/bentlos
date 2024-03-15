import 'package:bentlos/Components/listile.dart';
import 'package:bentlos/Components/cards.dart';
import 'package:bentlos/modules/product.dart';
import 'package:flutter/material.dart';
import 'package:bentlos/modules/shop.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'orderpage.dart';
import 'package:bentlos/design/colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
        backgroundColor: background_color,
        appBar: AppBar(
          title: Text(
            'Home',
            style: GoogleFonts.montserrat(
              color: text_color,
              fontSize: 24,
              fontWeight: FontWeight.w800,
            ),
          ),
          centerTitle: true,
          backgroundColor: background_color,
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
            Expanded(
              child: ListView.builder(
                  itemCount: value.shop.length,
                  itemBuilder: (context, index) {
                    Products individualProducts = value.shop[index];
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Listile(
                        products: individualProducts,
                        onTap: () => getOrder(individualProducts),
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
