import 'package:bentlos/Components/listile.dart';
import 'package:bentlos/Components/cards.dart';
import 'package:bentlos/modules/product.dart';
import 'package:flutter/material.dart';
import 'package:bentlos/modules/shop.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'orderpage.dart';

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
        backgroundColor: const Color.fromRGBO(231, 223, 154, 1),
        drawer: const Drawer(),
        appBar: AppBar(
          title: Text(
            'Home',
            style: GoogleFonts.montserrat(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.w800,
            ),
          ),
          centerTitle: true,
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
            const Divider(
              color: Colors.black,
              //    thickness: 12,
              //    indent: 30,
              //      endIndent: 30,
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: value.shop.length,
                  itemBuilder: (context, index) {
                    Products individualProducts = value.shop[index];
                    return Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Listile(
                        products: individualProducts,
                        onPressed: () => getOrder(individualProducts),
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
