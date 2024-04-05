import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyButton extends StatelessWidget {
  final String myText;
  final void Function()? onTap;
  const MyButton({super.key, required this.myText, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        child: Container(
          width:
              MediaQuery.of(context).size.width > 600 ? 340 : double.infinity,
          height: MediaQuery.of(context).size.width > 600 ? 60 : 70,
          margin: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.black,
          ),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  myText,
                  style: GoogleFonts.exo(
                    color: Colors.white70,
                    fontSize: 24,
                    letterSpacing: 5,
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
