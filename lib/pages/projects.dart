import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class MyProjects extends StatefulWidget {
  const MyProjects({super.key});

  @override
  State<MyProjects> createState() => _MyProjectsState();
}

bool onTap = false;

class _MyProjectsState extends State<MyProjects> {
  final List<String> myList = [
    "PORTFOLIO USING REACT JS",
    "TODO LIST APP USING FLUTTER",
    "QUIZ APP USING REACT JS",
    "BOOK STORE APP USING SPRING BOOT",
    "FECTHING API USING REACT JS",
    "PORTFOLIO USING NEXT JS",
    "TODO LIST APP USING REACT JS",
    "GROUP CHAT APP USING MERN STACK",
    "BASIC ROUTING USING REACT JS",
  ];

  final List<Uri> links = [
    Uri.parse('https://vinaykumaryaddulakondu.netlify.app/'),
    Uri.parse('https://todo-flutter.netlify.app/'),
    Uri.parse('https://vinay-quizapp.netlify.app/'),
    Uri.parse('https://github.com/vinaykumar0410/OnlineBookStore'),
    Uri.parse('https://vinay-juicyheaven.netlify.app/'),
    Uri.parse('https://vinaynextjs.netlify.app/'),
    Uri.parse('https://vinay-todolist.netlify.app/'),
    Uri.parse('https://talk2world.netlify.app/'),
    Uri.parse('https://vinay-reactroutes.netlify.app/'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        iconTheme: const IconThemeData(color: Colors.white),
        title: Text(
          'PROJECTS',
          style: GoogleFonts.cinzel(
            letterSpacing: 2,
            fontWeight: FontWeight.w800,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: myList.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                onTap = !onTap;
              });
            },
            child: AnimatedContainer(
              height: 60,
              margin: MediaQuery.of(context).size.width > 600
                  ? const EdgeInsets.symmetric(
                      horizontal: 480,
                      vertical: 10,
                    )
                  : const EdgeInsets.all(15),
              duration: const Duration(milliseconds: 2000),
              decoration: BoxDecoration(
                border: Border.all(width: 2),
                borderRadius: BorderRadius.circular(14),
                color: onTap ? Colors.white : Colors.black,
              ),
              child: Center(
                child: GestureDetector(
                  onTap: () => launchUrl(links[index]),
                  child: MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: Text(
                      myList[index],
                      style: GoogleFonts.sansita(
                        fontSize: 20,
                        color: onTap ? Colors.black : Colors.white,
                        letterSpacing:
                            MediaQuery.of(context).size.width > 600 ? 3 : 1,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
