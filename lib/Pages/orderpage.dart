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
      backgroundColor:
          const Color.fromARGB(255, 5, 37, 64), // background color for the app
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: true,
            backgroundColor: const Color.fromARGB(
                255, 5, 37, 64), // background color for the sliver app bar
            floating: true,
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                widget.products.name,
                style: GoogleFonts.montserrat(
                  fontSize: 14,
                  fontWeight: FontWeight.w800,
                  color: Colors.white54,
                ),
              ), // Product's Title/Name
              centerTitle: true,
              background: Image.asset(widget.products.imagepath,
                  height: 55), // Product's Image
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              childCount: 1,
              (context, index) => Column(
                children: [
                  Text(widget.products.name), // .Product's Title/Name
                  const SizedBox(
                    height: 50,
                  ),
                  Text(widget.products.description), // product's description
                  const SizedBox(
                    height: 100,
                  ),
                  IntrinsicHeight(
                    child: Row(
                      children: [
                        const SizedBox(
                          width: 50,
                        ),
                        Text(widget.products.price), // product's price

                        const Spacer(), // spacer used for spacing the widgets currectly
                        const VerticalDivider(
                          color: Colors.black,
                          thickness: 1,
                          indent: 5,
                          endIndent: 0,
                          width: 20,
                        ),

                        BigButton(onPressed: addToCart), // add to cart button
                        const SizedBox(width: 10),
                        const SizedBox(
                          height: 10,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
