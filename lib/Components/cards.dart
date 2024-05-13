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
    // Gesture Dector to the direct to the orderpage
    return GestureDetector(
      onTap: widget.onTap,
      // The Card
      child: Card(
        //     elevation: 50,
        shadowColor: Colors.grey,
        color: Colors.transparent,
        child: SizedBox(
          height: 80,
          width: 200,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage(widget.products.imagepath),
                  radius: 50,
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Text(
                    widget.products.name,
                    style: GoogleFonts.montserrat(
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.start,
                  ),

                  const Spacer(
                    flex: 15,
                  ),
                  Text(widget.products.price,
                      style: GoogleFonts.montserrat(
                        fontSize: 12,
                        fontWeight: FontWeight.w300,
                        color: Colors.white,
                      )), // title ), // Price
                ]),
                const SizedBox(
                  height: 25,
                ),
                /*   Text(widget.products.description,
                    style: GoogleFonts.montserrat(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: text_color,
                    )), // title,), // description
                    */
              ],
            ),
          ),
        ),
      ),
    );
  }
}
