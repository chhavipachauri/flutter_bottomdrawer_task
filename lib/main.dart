import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task_two/task_two.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: GoogleFonts.roboto().fontFamily,
        textTheme: GoogleFonts.robotoTextTheme(),
      ),
      home: TaskTwo(),
    );
  }
}
