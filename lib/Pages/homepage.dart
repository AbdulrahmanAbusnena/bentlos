import 'package:flutter/material.dart';
import 'package:bentlos/modules/shop.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<EApp>(
      builder: (context, value, child) => Scaffold(
          backgroundColor: Colors.yellow[400],
          appBar: AppBar(
            title: Text(
              'Home',
              style: GoogleFonts.montserrat(
                color: Colors.white54,
                fontSize: 24,
                fontWeight: FontWeight.w800,
              ),
            ),
            backgroundColor: Colors.yellow[400],
            elevation: 0.0,
          ),
          body: Column(
            children: [
              Row(
                children: [
                  GridView.count(
                    crossAxisCount: 2,
                  )
                ],
              ),
            ],
          )),
    );
  }
}
