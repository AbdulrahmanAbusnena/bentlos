import 'package:flutter/material.dart';
import 'package:bentlos/Design/themes.dart';
import 'package:google_fonts/google_fonts.dart';

class BigButton extends StatefulWidget {
  final void Function()? onPressed;
  const BigButton({super.key, required this.onPressed});

  @override
  State<BigButton> createState() => BigButtonState();
}

class BigButtonState extends State<BigButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: bigbuttontheme,
      onPressed: widget.onPressed,
      child: Text(
        'Add to Cart',
        style: GoogleFonts.montserrat(
          fontSize: 15,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}
