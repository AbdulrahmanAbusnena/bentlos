// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:bentlos/Design/themes.dart';
import 'package:google_fonts/google_fonts.dart';

class AddButton extends StatefulWidget {
  final void Function()? onPressed;
  const AddButton({super.key, required this.onPressed});

  @override
  State<AddButton> createState() => BigButtonState();
}

class BigButtonState extends State<AddButton> {
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
