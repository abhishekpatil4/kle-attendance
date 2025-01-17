import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

class AboutDev extends StatelessWidget {
  const AboutDev({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          "About Developer",
          style: GoogleFonts.poppins(
              color: Colors.white, fontWeight: FontWeight.bold),
        ),
        leading: IconButton(
          tooltip: "Back",
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_sharp),
          color: Colors.white,
        ),
        centerTitle: true,
      ),
      body: Container(
        color: Colors.orange,
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: <Widget>[
            // image
            Container(
              margin: const EdgeInsets.only(top: 20),
              width: size.width * 0.65,
              child: const Image(
                image: AssetImage("assets/images/athar.png"),
              ),
            ),
            const Divider(
              color: Colors.white,
              thickness: 1,
              indent: 100,
              endIndent: 100,
            ),
            Text(
              "B.E. Computer Science",
              style: GoogleFonts.poppins(
                color: Colors.white,
                fontSize: 15,
                fontWeight: FontWeight.w400,
                letterSpacing: 2,
              ),
            ),
            const Divider(
              color: Colors.white,
              thickness: 1,
              indent: 100,
              endIndent: 100,
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.only(left: 30, right: 30),
              child: Text(
                "Hi, I'm Athar Mujtaba Wani, a developer who is interested in open source and language semantics.",
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Text(
              "\"I make softwares that work\"",
              style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 30,
            ),
            // const Image(
            //   image: AssetImage("assets/images/sign.png"),
            //   height: 150,
            // ),
            Text("Found a bug?",
                style: GoogleFonts.poppins(color: Colors.white)),
            SizedBox(
              child: IconButton(
                  onPressed: () async {
                    if (await launchUrl(Uri.parse(
                        "mailto:atharwani001@gmail.com?subject=Bug Report&body=Hi Athar, I found a bug in your app."))) {
                      // snackbar
                      true;
                    } else {
                      // snackbar
                      // ignore: use_build_context_synchronously
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text("Couldn't launch mail app"),
                          duration: Duration(seconds: 2),
                        ),
                      );
                    }
                  },
                  tooltip: "Let's kill the bug",
                  icon: const Icon(
                    Icons.bug_report_outlined,
                    color: Colors.white,
                    size: 30,
                    grade: 1,
                  )),
            ),

            // Container(
            //   height: size.height * 0.05,
            //   padding: const EdgeInsets.all(10),
            //   margin: const EdgeInsets.only(left: 50, right: 50),
            //   child: Text(
            //     "atharwani001@gmail.com",
            //     style: GoogleFonts.poppins(
            //       color: Colors.white,
            //       fontSize: 18,
            //       fontWeight: FontWeight.w600,
            //       fontStyle: FontStyle.italic,
            //     ),
            //   ),
            //)
          ],
        ),
      ),
    );
  }
}
