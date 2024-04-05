import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/utilities/drawer.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MyDrawer(),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            iconTheme: const IconThemeData(
              color: Colors.white,
            ),
            backgroundColor: Colors.black,
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                'About Me',
                style: GoogleFonts.cinzel(
                  fontWeight: FontWeight.w500,
                  letterSpacing: 5,
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
              background: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Hey Good to See You Here",
                    style: GoogleFonts.lobster(
                      fontSize: 24,
                      color: Colors.white70,
                      letterSpacing: 2,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "I'm Vinay Kumar",
                    style: GoogleFonts.lobster(
                      fontSize: 24,
                      color: Colors.white,
                      letterSpacing: 2,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Full Stack Developer",
                    style: GoogleFonts.lobster(
                      fontSize: 24,
                      color: Colors.white70,
                      letterSpacing: 2,
                    ),
                  ),
                ],
              ),
            ),
            pinned: true,
          ),
          SliverToBoxAdapter(
            child: Container(
              margin: MediaQuery.of(context).size.width > 600
                  ? const EdgeInsets.symmetric(
                      horizontal: 400,
                      vertical: 30,
                    )
                  : const EdgeInsets.all(16),
              padding: MediaQuery.of(context).size.width > 600
                  ? const EdgeInsets.all(36)
                  : const EdgeInsets.all(18),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14),
                border: Border.all(
                  width: 2,
                ),
              ),
              height: 300,
              child: Text(
                "I am an Electronics and Communication Engineering graduate with proficiency in HTML, CSS, JavaScript, React JS, Flutter for frontend, and Advance Java, Core Python, MySQL, MongoDB for backend.",
                style: GoogleFonts.sansita(
                  fontSize: MediaQuery.of(context).size.width > 600 ? 30 : 24,
                  letterSpacing:
                      MediaQuery.of(context).size.width > 600 ? 3 : 1,
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              margin: MediaQuery.of(context).size.width > 600
                  ? const EdgeInsets.symmetric(
                      horizontal: 400,
                      vertical: 30,
                    )
                  : const EdgeInsets.all(16),
              padding: MediaQuery.of(context).size.width > 600
                  ? const EdgeInsets.all(36)
                  : const EdgeInsets.all(18),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14),
                border: Border.all(
                  width: 2,
                ),
              ),
              height: 300,
              child: Text(
                "Skilled in Bootstrap, Hibernate, Spring, Spring Boot, and have good knowledge on Data Structures and Algorithms with Java. Eager to apply my skills for organizational advancement.",
                style: GoogleFonts.sansita(
                  fontSize: MediaQuery.of(context).size.width > 600 ? 30 : 24,
                  letterSpacing:
                      MediaQuery.of(context).size.width > 600 ? 3 : 1,
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              margin: MediaQuery.of(context).size.width > 600
                  ? const EdgeInsets.symmetric(
                      horizontal: 400,
                      vertical: 30,
                    )
                  : const EdgeInsets.all(16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14),
                border: Border.all(
                  width: 2,
                ),
              ),
              height: 300,
              child: const Column(
                children: [
                  ColumnItem(
                    title: "Leetcode",
                    description: "Solved more than 350+ Problems",
                  ),
                  ColumnItem(
                    title: "GitHub",
                    description: "Published Tech Related Repositories",
                  ),
                  ColumnItem(
                    title: "Projects",
                    description: "Did some basic projects",
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ColumnItem extends StatelessWidget {
  final String title;
  final String description;
  const ColumnItem({super.key, required this.title, required this.description});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 16,
        ),
        Text(
          title,
          style: GoogleFonts.sansita(
            fontSize: 24,
            letterSpacing: 1,
            color: Colors.black,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          description,
          style: GoogleFonts.sansita(
            fontSize: 20,
            letterSpacing: 1,
            color: Colors.black54,
          ),
        ),
      ],
    );
  }
}
