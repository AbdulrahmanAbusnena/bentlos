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
  backgroundColor: Colors.white,
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
  backgroundColor: Colors.brown,
);

final buttonTheme4 = ElevatedButton.styleFrom(
  minimumSize: const Size(
    150,
    40,
  ),
  elevation: 0.0,
  foregroundColor: Colors.white70,
  backgroundColor: Colors.brown[300],
);
