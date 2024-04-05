import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/utilities/button.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactMe extends StatelessWidget {
  const ContactMe({super.key});

  @override
  Widget build(BuildContext context) {
    final myTextController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        iconTheme: const IconThemeData(color: Colors.white),
        title: Text(
          'GET IN TOUCH',
          style: GoogleFonts.cinzel(
            letterSpacing: 2,
            fontWeight: FontWeight.w800,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Contact Links',
                style: GoogleFonts.kellySlab(
                    fontSize: MediaQuery.of(context).size.width > 600 ? 32 : 26,
                    letterSpacing: 3,
                    fontWeight: FontWeight.w800),
              ),
              const SizedBox(
                height: 20,
              ),
              const ExternalLink(
                title: 'LINKEDIN PROFILE',
                uri: 'https://www.linkedin.com/in/vinaykumar0517/',
              ),
              const SizedBox(
                height: 10,
              ),
              const ExternalLink(
                title: 'GITHUB PROFILE',
                uri: 'https://github.com/vinaykumar0410/',
              ),
              const SizedBox(
                height: 10,
              ),
              const ExternalLink(
                title: 'LEETCODE PROFILE',
                uri: 'https://leetcode.com/vinay_0517/',
              ),
              const SizedBox(
                height: 10,
              ),
              const ExternalLink(
                title: 'Drop a Mail',
                uri: 'mailto:vinaykumaryaddulakondu@gmail.com',
              ),
              const SizedBox(
                height: 30,
              ),
              Text(
                'Share Your Thoughts!',
                style: GoogleFonts.kellySlab(
                  fontSize: 18,
                  letterSpacing: 3,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'Need Some Feedback',
                style: GoogleFonts.kellySlab(
                  fontSize: 18,
                  letterSpacing: 3,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'On This App',
                style: GoogleFonts.kellySlab(
                  fontSize: 18,
                  letterSpacing: 3,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                height: 70,
                width: MediaQuery.of(context).size.width > 600
                    ? 340
                    : double.infinity,
                margin: MediaQuery.of(context).size.width > 600
                    ? const EdgeInsets.symmetric(horizontal: 500, vertical: 10)
                    : const EdgeInsets.symmetric(horizontal: 50),
                child: TextFormField(
                  controller: myTextController,
                  style: const TextStyle(
                    color: Colors.black,
                    letterSpacing: 4,
                    fontSize: 22,
                  ),
                  decoration: InputDecoration(
                    focusColor: Colors.grey[200],
                    hintText: 'Feedback',
                    hintStyle: GoogleFonts.kellySlab(
                      fontSize: 20,
                      letterSpacing: 3,
                      fontWeight: FontWeight.w500,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Colors.black,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Colors.black,
                        width: 4,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
              ),
              MyButton(
                myText: 'Submit',
                onTap: () => launchUrl(Uri.parse(
                    'mailto:vinaykumaryaddulakondu@gmail.com?subject=Feedback%20on%20App&body=Dear%20Developer,%0D%0A%0D%0AI%20would%20like%20to%20share%20some%20feedback%20on%20your%20app.%20Here%20are%20my%20thoughts:%0D%0A%0D%0A${myTextController.text}')),
              ),
              const SizedBox(
                height: 30,
              ),
              Text(
                'Thanks For Visiting..',
                style: GoogleFonts.kellySlab(
                    fontSize: 18,
                    letterSpacing: 5,
                    fontWeight: FontWeight.w800),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ExternalLink extends StatelessWidget {
  final String title;
  final String uri;
  const ExternalLink({super.key, required this.title, required this.uri});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => launchUrl(
        Uri.parse(uri),
      ),
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        child: Text(
          title,
          style: GoogleFonts.sansita(
            fontSize: MediaQuery.of(context).size.width > 600 ? 24 : 18,
            letterSpacing: 1,
            fontWeight: FontWeight.w500,
            color: Colors.blue,
          ),
        ),
      ),
    );
  }
}
