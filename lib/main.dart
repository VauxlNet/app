import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const VauxlApp());
}

class VauxlApp extends StatelessWidget {
  const VauxlApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Vauxl',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF6200EE), // Vauxl Purple
          brightness: Brightness.dark,
        ),
        useMaterial3: true,
        textTheme: GoogleFonts.interTextTheme(
          Theme.of(context).textTheme,
        ).apply(
          bodyColor: Colors.white,
          displayColor: Colors.white,
        ),
      ),
      home: const LandingPage(),
    );
  }
}

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.shield_moon_rounded,
              size: 80,
              color: Colors.white,
            ),
            const SizedBox(height: 24),
            Text(
              'Welcome to Vauxl',
              style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),
            const SizedBox(height: 16),
            const Text(
              'Secure. Private. Limitless.',
              style: TextStyle(color: Colors.grey),
            ),
            const SizedBox(height: 48),
            FilledButton(
              onPressed: () {
                // TODO: Initialize Rust Core
              },
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                child: Text('Get Started'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
