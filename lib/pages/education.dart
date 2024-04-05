import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Education extends StatelessWidget {
  const Education({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        iconTheme: const IconThemeData(color: Colors.white),
        title: Text(
          'EDUCATION',
          style: GoogleFonts.cinzel(
            letterSpacing: 2,
            fontWeight: FontWeight.w800,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Text(
              'Tap For Better Experience',
              style: GoogleFonts.raleway(
                fontSize: MediaQuery.of(context).size.width > 600 ? 22 : 16,
                fontWeight: FontWeight.w800,
                letterSpacing: 2,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const EducationField(
                myInstitute: 'K.S.R.M College of Engineering',
                myBranch: 'ECE',
                myBatch: '2019-2023',
                myCpga: '7.61'),
            const EducationField(
                myInstitute: 'Sri Chaitanya Junior College',
                myBatch: '2017-2019',
                myCpga: '9.15'),
            const EducationField(
                myInstitute: 'Nagarjuna Model School',
                myBatch: '2016-2017',
                myCpga: '9.8'),
          ],
        ),
      ),
    );
  }
}

class EducationField extends StatefulWidget {
  final String myInstitute;
  // ignore: prefer_typing_uninitialized_variables
  final myBranch;
  final String myBatch;
  final String myCpga;

  const EducationField(
      {super.key,
      required this.myInstitute,
      required this.myBatch,
      required this.myCpga,
      this.myBranch});

  @override
  State<EducationField> createState() => _EducationFieldState();
}

bool onTapped = false;

class _EducationFieldState extends State<EducationField> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          onTapped = !onTapped;
        });
      },
      child: AnimatedContainer(
        // curve: Curves.slowMiddle,
        duration: const Duration(milliseconds: 2000),
        height: 300,
        width: double.infinity,
        margin: MediaQuery.of(context).size.width > 600
            ? const EdgeInsets.symmetric(
                horizontal: 400,
                vertical: 30,
              )
            : const EdgeInsets.all(16),
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: onTapped ? Colors.black : Colors.white,
          border: Border.all(
            width: 2,
            color: Colors.black,
          ),
          borderRadius: BorderRadius.circular(18),
        ),
        child: Column(
          mainAxisAlignment:
              onTapped ? MainAxisAlignment.center : MainAxisAlignment.start,
          children: [
            Text(
              'INSTITUTE',
              style: GoogleFonts.exo(
                letterSpacing: 3,
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: onTapped ? Colors.white : Colors.black,
              ),
            ),
            const SizedBox(
              height: 2,
            ),
            Text(
              widget.myInstitute,
              style: GoogleFonts.cinzel(
                fontSize: 15,
                fontWeight: FontWeight.w400,
                letterSpacing: 1,
                color: onTapped ? Colors.white : Colors.black,
              ),
            ),
            if (widget.myBranch != null)
              const SizedBox(
                height: 16,
              ),
            if (widget.myBranch != null)
              Text(
                'BRANCH',
                style: GoogleFonts.exo(
                  letterSpacing: 3,
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: onTapped ? Colors.white : Colors.black,
                ),
              ),
            const SizedBox(
              height: 2,
            ),
            if (widget.myBranch != null)
              Text(
                widget.myBranch,
                style: GoogleFonts.cinzel(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 2,
                  color: onTapped ? Colors.white : Colors.black,
                ),
              ),
            const SizedBox(
              height: 16,
            ),
            Text(
              'BATCH',
              style: GoogleFonts.exo(
                letterSpacing: 3,
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: onTapped ? Colors.white : Colors.black,
              ),
            ),
            const SizedBox(
              height: 2,
            ),
            Text(
              widget.myBatch,
              style: GoogleFonts.cinzel(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                letterSpacing: 2,
                color: onTapped ? Colors.white : Colors.black,
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Text(
              'CGPA',
              style: GoogleFonts.exo(
                letterSpacing: 3,
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: onTapped ? Colors.white : Colors.black,
              ),
            ),
            const SizedBox(
              height: 2,
            ),
            Text(
              widget.myCpga,
              style: GoogleFonts.cinzel(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                letterSpacing: 2,
                color: onTapped ? Colors.white : Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
