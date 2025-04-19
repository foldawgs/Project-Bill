import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:split_bill/styles/app_colors.dart';
import 'package:split_bill/pages/landing_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Split Bill',
      theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme(),
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primaryColor),
        useMaterial3: true,
      ),
      home: const LandingPage(),
    );
  }
}
