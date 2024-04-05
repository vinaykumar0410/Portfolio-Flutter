import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/utilities/button.dart';

class LoadingPage extends StatefulWidget {
  const LoadingPage({super.key});

  @override
  State<LoadingPage> createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                '👋🏻',
                style: TextStyle(
                  fontSize: 64,
                ),
              ),
              Text(
                'Hello',
                style: GoogleFonts.orbitron(
                  fontSize: 64,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 5,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Text(
                "let's know about me",
                style: GoogleFonts.orbitron(
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 5,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "and",
                style: GoogleFonts.orbitron(
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 5,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "my coding skills",
                style: GoogleFonts.orbitron(
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 5,
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              MyButton(
                myText: "Get Started",
                onTap: () => Navigator.pushNamed(context, '/aboutme'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
