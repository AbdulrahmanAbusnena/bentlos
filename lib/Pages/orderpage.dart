// import 'package:bentlos/Components/bigbutton.dart';
import 'package:bentlos/Components/AddButton.dart';
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
      backgroundColor: Color.fromRGBO(231, 223, 154, 1),
      appBar: AppBar(
        title: Text("bentlos",
            style: GoogleFonts.montserrat(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            )),
        centerTitle: true,
        backgroundColor: Color.fromRGBO(231, 223, 154, 1),
        //  elevation: 0,
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            widget.products.imagepath,
            height: 17,
            width: 17,
          ),
          DraggableScrollableSheet(
            maxChildSize: .8,
            initialChildSize: .53,
            minChildSize: .53,
            builder: (context, scrollController) => ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Container(
                color: Colors.white60,
                child: Column(
                  children: [
                    const SizedBox(
                      width: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          widget.products.name,
                          style: GoogleFonts.montserrat(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    const Spacer(),
                    Row(
                      children: [
                        const SizedBox(
                          width: 20,
                        ),
                        Text(
                          widget.products.price,
                          style: GoogleFonts.montserrat(
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                            color: Colors.black,
                          ),
                        ),
                        const Spacer(
                          flex: 12,
                        ),
                        AddButton(onPressed: addToCart),
                        const SizedBox(
                          height: 5,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                      ],
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
