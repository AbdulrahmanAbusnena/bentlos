import 'package:bentlos/Components/bigbutton.dart';
import 'package:flutter/material.dart';
import 'package:bentlos/modules/product.dart';
import 'package:bentlos/modules/shop.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class OrderPage extends StatefulWidget {
  // me defining the products
  final Products products;
  const OrderPage({super.key, required this.products});

  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  // This is the add to cart
  void addToCart() {
    Provider.of<EApp>(context, listen: false).addToCart(widget.products);
    Navigator.pop(context);
    showDialog(
        context: context,
        builder: ((context) => const AlertDialog(
              title: Text('Succefully added to cart'),
            )));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 141, 190, 230),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            widget.products.imagepath,
            height: 17,
          ),
          DraggableScrollableSheet(
            maxChildSize: .8,
            initialChildSize: .53,
            minChildSize: .53,
            builder: (context, scrollController) => ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Container(
                color: Colors.white70,
                child: Column(
                  children: [
                    Text(
                      widget.products.name,
                      style: GoogleFonts.montserrat(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
