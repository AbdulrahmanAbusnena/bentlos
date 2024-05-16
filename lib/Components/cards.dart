import 'package:flutter/material.dart';
import 'package:bentlos/modules/product.dart';
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
        color: Colors.white70,
        child: Container(
          child: SizedBox(
            height: 200,
            width: 190,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  CircleAvatar(
                    //  backgroundImage:AssetImage(widget.products.imagepath),

                    radius: 60,
                    child: Image.asset(
                      widget.products.imagepath,
                      height: 350,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(widget.products.name,
                          style: GoogleFonts.montserrat(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          )),
                    ],
                  ),
                  const Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(widget.products.price,
                          style: GoogleFonts.montserrat(
                            fontWeight: FontWeight.bold,
                            fontSize: 13,
                            color: Colors.black,
                          ))
                    ],
                  ),
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
      ),
    );
  }
}
