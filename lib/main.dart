import 'package:flutter/material.dart';
import 'package:portfolio/pages/about_me.dart';
import 'package:portfolio/pages/contact_me.dart';
import 'package:portfolio/pages/education.dart';
import 'package:portfolio/pages/loading_page.dart';
import 'package:portfolio/pages/projects.dart';
import 'package:portfolio/pages/skills.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const LoadingPage(),
      routes: {
        '/loadingscreen': (context) => const LoadingPage(),
        '/aboutme': (context) => const AboutMe(),
        '/education': (context) => const Education(),
        '/myskills': (context) => const MySkills(),
        '/projects': (context) => const MyProjects(),
        '/contactme': (context) => const ContactMe(),
      },
    );
  }
}
