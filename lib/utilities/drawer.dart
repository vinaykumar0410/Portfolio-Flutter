import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/utilities/button.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: SafeArea(
        child: Column(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
              ),
              margin: const EdgeInsets.all(20),
              padding: const EdgeInsets.all(20),
              child: Image.asset(
                'lib/assets/home.jpg',
              ),
            ),
            ListTile(
              splashColor: Colors.black,
              onTap: () => Navigator.pushNamed(context, '/aboutme'),
              title: Center(
                child: Text(
                  'ABOUT ME',
                  style: GoogleFonts.raleway(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    letterSpacing: 3,
                    color: Colors.blueAccent,
                  ),
                ),
              ),
            ),
            ListTile(
              splashColor: Colors.black,
              onTap: () => Navigator.pushNamed(context, '/education'),
              title: Center(
                child: Text(
                  'EDUCATION',
                  style: GoogleFonts.raleway(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    letterSpacing: 3,
                    color: Colors.blueAccent,
                  ),
                ),
              ),
            ),
            ListTile(
              splashColor: Colors.black,
              onTap: () => Navigator.pushNamed(context, '/myskills'),
              title: Center(
                child: Text(
                  'SKILLS',
                  style: GoogleFonts.raleway(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    letterSpacing: 3,
                    color: Colors.blueAccent,
                  ),
                ),
              ),
            ),
            ListTile(
              splashColor: Colors.black,
              onTap: () => Navigator.pushNamed(context, '/projects'),
              title: Center(
                child: Text(
                  'PROJECTS',
                  style: GoogleFonts.raleway(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    letterSpacing: 3,
                    color: Colors.blueAccent,
                  ),
                ),
              ),
            ),
            ListTile(
              splashColor: Colors.black,
              onTap: () => Navigator.pushNamed(context, '/contactme'),
              title: Center(
                child: Text(
                  'GET IN TOUCH',
                  style: GoogleFonts.raleway(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    letterSpacing: 3,
                    color: Colors.blueAccent,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Divider(
              color: Colors.black54,
              indent: 90,
              endIndent: 90,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const SizedBox(height: 20),
                MyButton(
                  myText: "GO BACK",
                  onTap: () => Navigator.pushNamed(context, '/loadingscreen'),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
