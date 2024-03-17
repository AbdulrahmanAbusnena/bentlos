import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => CartPageState();
}

class CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 5, 37, 64),
      appBar: AppBar(
        title: Text('Cart',
            style: GoogleFonts.montserrat(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            )),
        centerTitle: true,
        elevation: 0,
        backgroundColor: const Color.fromARGB(255, 5, 37, 64),
      ),
      body: const Column(
        children: [],
      ),
    );
  }
}
