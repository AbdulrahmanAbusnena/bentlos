import 'package:flutter/material.dart';
import 'package:bentlos/modules/product.dart';
import 'package:bentlos/Design/colors.dart';
import 'package:google_fonts/google_fonts.dart';

class CardHome extends StatefulWidget {
  const CardHome({
    super.key,
    required this.products,
    required this.onTap,
  });

  final Products products;
  final void Function()? onTap;

  @override
  State<CardHome> createState() => _CardHomeState();
}

class _CardHomeState extends State<CardHome> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Card(
        //   elevation: 50,
        shadowColor: Colors.grey,
        color: buttons_card_color,
        child: SizedBox(
          height: 100,
          width: 200,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage(widget.products.imagepath),
                ),

                const SizedBox(
                  height: 50,
                ),
                Row(children: [
                  Text(widget.products.name,
                      style: GoogleFonts.montserrat(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      )), // title
                  const SizedBox(width: 20),
                  Text(widget.products.price,
                      style: GoogleFonts.montserrat(
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                        color: text_color,
                      )), // title ), // Price
                ]),
                const SizedBox(
                  height: 25,
                ),
                Text(widget.products.description,
                    style: GoogleFonts.montserrat(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: text_color,
                    )), // title,), // description
              ],
            ),
          ),
        ),
      ),
    );
  }
}
