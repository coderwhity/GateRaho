import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:music_player/screens/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
          surface: Colors.black,
          onSurface: Colors.black,
        ),
        scaffoldBackgroundColor: Colors.black, // Set scaffold background color
        textTheme: GoogleFonts.latoTextTheme(textTheme).copyWith(
          bodyMedium: GoogleFonts.exo2(textStyle: textTheme.bodyMedium!.copyWith(
            color: Colors.white
          )),
        ),
        useMaterial3: true,
      ),
      home: const Homepage(),
    );
  }
}
