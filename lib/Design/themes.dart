import 'package:flutter/material.dart';

ThemeData darkMode = ThemeData(
  // brightness: Brightness.dark,
  // colorScheme: ColorScheme(),
  useMaterial3: true,
);
// registration view buttons Style
final buttonTheme = ElevatedButton.styleFrom(
  minimumSize: const Size(250, 40),
  elevation: 0.0,
  backgroundColor: const Color.fromARGB(255, 97, 95, 95),
  foregroundColor: Colors.black,
);

final buttonTheme2 = TextButton.styleFrom(
  minimumSize: const Size(250, 40),
  elevation: 0.0,
  foregroundColor: Colors.grey,
);

final buttonTheme3 = ElevatedButton.styleFrom(
  minimumSize: const Size(
    170,
    40,
  ),
  elevation: 0.0,
  foregroundColor: Colors.white70,
  backgroundColor: const Color.fromARGB(255, 97, 95, 95),
);

final buttonTheme4 = ElevatedButton.styleFrom(
  minimumSize: const Size(
    150,
    40,
  ),
  elevation: 0.0,
  foregroundColor: Colors.white70,
  backgroundColor: const Color.fromARGB(255, 97, 95, 95),
);

final bigbuttontheme = ElevatedButton.styleFrom(
  minimumSize: const Size(
    200,
    25,
  ),
  elevation: 50,
  shape: const OvalBorder(eccentricity: BorderSide.strokeAlignOutside),
  foregroundColor: Colors.white70,
  backgroundColor: const Color.fromARGB(255, 97, 95, 95),
  shadowColor: Colors.grey,
  padding: const EdgeInsets.all(25.0),
);
