import 'package:flutter/material.dart';
import 'package:bentlos/Design/themes.dart';
import 'package:google_fonts/google_fonts.dart';

class BigButton extends StatefulWidget {
  const BigButton({super.key});

  @override
  State<BigButton> createState() => BigButtonState();
}

class BigButtonState extends State<BigButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: bigbuttontheme,
      onPressed: () {},
      child: Text(
        'Pay',
        style: GoogleFonts.montserrat(
          fontSize: 15,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}
