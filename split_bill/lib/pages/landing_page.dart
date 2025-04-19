import 'package:flutter/material.dart';
import 'package:split_bill/styles/app_colors.dart';
import 'package:split_bill/styles/app_fonts.dart';
import 'main_page.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(24),
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [AppColors.gradientTop, AppColors.gradientBottom],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Welcome to the SplitBill Apps!',
              textAlign: TextAlign.center,
              style: AppFonts.heading
            ),
            const SizedBox(height: 40),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.transparent,
                shadowColor: Colors.transparent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const MainPage()),
                );
              },
              child: Ink(
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [Color(0xFF56CCF2), Color(0xFF2F80ED)],
                  ),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                  child: const Text(
                    'Start',
                    style: AppFonts.buttonText,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
