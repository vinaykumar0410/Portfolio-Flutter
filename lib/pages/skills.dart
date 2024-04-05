import 'package:flutter/material.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:google_fonts/google_fonts.dart';

class MySkills extends StatelessWidget {
  const MySkills({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> myFrontendList = [
      "HTML & CSS",
      "JAVA SCRIPT",
      "BOOTSTRAP",
      "REACT JS",
      "NEXT JS",
      "FLUTTER",
    ];
    List<String> myDataBaseList = [
      "MYSQL",
      "MONGODB",
      "Database 👆🏻",
      "👈🏻 Frontend",
      "Backend 👉🏻"
    ];
    List<String> myBackendList = [
      "JAVA",
      "HIBERNATE",
      "SPRING",
      "SPRING BOOT",
      "NODE JS",
      "EXPRESS JS",
    ];

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        iconTheme: const IconThemeData(color: Colors.white),
        title: Text(
          'SKILLS',
          style: GoogleFonts.cinzel(
            letterSpacing: 2,
            fontWeight: FontWeight.w800,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: CarouselSlider(
        slideTransform: MediaQuery.of(context).size.width > 600
            ? const RotateDownTransform()
            : const CubeTransform(),
        enableAutoSlider: true,
        autoSliderDelay: const Duration(seconds: 20),
        unlimitedMode: true,
        slideIndicator: SequentialFillIndicator(
          padding: const EdgeInsets.only(
            bottom: 20,
          ),
          currentIndicatorColor: Colors.white,
        ),
        children: [
          SkillContainer(
            myColor: Colors.deepPurpleAccent,
            myList: myFrontendList,
          ),
          SkillContainer(
            myColor: Colors.orangeAccent,
            myList: myDataBaseList,
          ),
          SkillContainer(
            myColor: Colors.lightBlueAccent,
            myList: myBackendList,
          ),
        ],
      ),
    );
  }
}

class SkillContainer extends StatefulWidget {
  final Color myColor;
  final List<String> myList;
  const SkillContainer({
    super.key,
    required this.myColor,
    required this.myList,
  });

  @override
  State<SkillContainer> createState() => _SkillContainerState();
}

bool onTapped = false;

class _SkillContainerState extends State<SkillContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: widget.myColor,
      child: ListView.builder(
        itemCount: widget.myList.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                onTapped = !onTapped;
              });
            },
            child: AnimatedContainer(
              height: MediaQuery.of(context).size.width > 600 ? 70 : 80,
              margin: MediaQuery.of(context).size.width > 600
                  ? const EdgeInsets.symmetric(
                      horizontal: 520,
                      vertical: 18,
                    )
                  : const EdgeInsets.all(12),
              duration: const Duration(milliseconds: 2000),
              decoration: BoxDecoration(
                border: Border.all(
                  width: 2, // take 4 while considering below line
                  // color: onTapped ? Colors.white : Colors.black,
                ),
                color: onTapped ? Colors.white : Colors.black,
                borderRadius: BorderRadius.circular(14),
              ),
              child: Center(
                child: Text(
                  widget.myList[index],
                  style: GoogleFonts.kellySlab(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 3,
                    color: onTapped ? Colors.black : Colors.white,
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
