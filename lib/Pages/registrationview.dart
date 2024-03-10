import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:bentlos/Design/themes.dart';
import 'package:bentlos/Pages/homepage.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:bentlos/Components/navswticher.dart';

class RegistrationView extends StatefulWidget {
  const RegistrationView({super.key});

  @override
  State<RegistrationView> createState() => _RegistrationViewState();
}

class _RegistrationViewState extends State<RegistrationView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.yellow[400],
        appBar: AppBar(
          backgroundColor: Colors.yellow[400],
          title: Text(
            'Twister',
            style: GoogleFonts.montserrat(
              color: Colors.white54,
              fontSize: 23,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
          leading: const CircleAvatar(
            backgroundImage: AssetImage('assets/abdul.png'),
          ),
          elevation: 0.0,
        ),
        body: Container(
          alignment: const Alignment(0, 0.5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const NavSwitch(),
                    ),
                  );
                },
                child: Animate(
                  effects: [
                    FadeEffect(duration: 1000.ms),
                    ShakeEffect(hz: 100),
                  ],
                  child: Image.asset(
                    'assets/store.png',
                    height: 120,
                    width: 120,
                  ),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              ElevatedButton(
                style: buttonTheme,
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const NavSwitch()));
                },
                child: const Text(
                  'Enter',
                ),
              ),
              const SizedBox(
                height: 35,
              ),
              TextButton(
                style: buttonTheme2,
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  'Exit',
                  style: GoogleFonts.montserrat(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
