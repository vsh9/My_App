import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class loginscreen extends StatefulWidget {
  //get the data from previous screen
  const loginscreen({super.key});

  @override
  State<loginscreen> createState() => _loginscreenState();
}

class _loginscreenState extends State<loginscreen> {
  //init to trigger function
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: const Color.fromRGBO(24, 30, 6, 0.996),
        centerTitle: true,
        title: Text(
          "<My Portfolio>",
          style: GoogleFonts.merriweather(
            fontSize: 17,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: const Padding(
          padding: EdgeInsets.only(left: 20),
          child: Icon(
            Icons.auto_awesome,
            color: Colors.white,
            size: 30,
          ),
        ),
        actions: const [
          Padding(
              padding: EdgeInsets.only(right: 20),
              child: Icon(
                Icons.arrow_forward_ios,
                color: Colors.white,
                size: 25,
            ),
          ),
        ],
      ),
      body: const SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ProfileCard(),
            Padding(
              padding: const EdgeInsets.only(left: 8),
              child: Column(
                children: [
                  SizedBox(height: 5),
                  Text(
                    "About Me",
                    style: TextStyle(
                      fontWeight: FontWeight.w800
                    ),
                  ),
                  SizedBox(height: 5),
                  Text("I am a motivated 2nd-year Computer Science Engineering student with a strong interest in leveraging coding for creative problem-solving.I have a fervent passion for Backend development and Machine Learning, seeking to apply acquired skills to real-world challenges.Known for a collaborative and approachable nature, excelling as a team playe and communicator."),
                  SizedBox(height: 5),
                  Text(
                    "Skills",
                    style: TextStyle(
                    fontWeight: FontWeight.w800,
                    ),
                    ),
                  SizedBox(height: 5),
                  Text("Programming:Python,Java,C,MySQL,HTML,CSS,JS"),
                  Text("Operating Systems: Windows"),
                  Text("Non-Technical: Product Management, Problem-solving, Communication skills,Leadership"),
                  Text("Creative Skills: Piano, Tennis, Taekwondo"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ProfileCard extends StatelessWidget {
  const ProfileCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(colors:
        [
          Color.fromRGBO(30, 77, 43,0.8),
          Color.fromRGBO(101, 187, 84, 0.898),
          
        ]
        )
      ),
      child: SizedBox(
        height: 250,
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
                height: 200,
                width: 200,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset(
                    "assets/vsh.jpg",
                    fit: BoxFit.scaleDown,
                  ),
                )),
            AnimatedTextKit(
              animatedTexts: [
                TypewriterAnimatedText(
                  'V Shree Harshitha',
                  textStyle: const TextStyle(
                      fontSize: 22.0,
                      fontWeight: FontWeight.bold,),
                  speed: const Duration(milliseconds: 5000),
                ),
              ],
              totalRepeatCount: 4,
              pause: const Duration(milliseconds: 500),
              displayFullTextOnTap: true,
              stopPauseOnTap: true,
            )
          ],
        ),
      ),
    );
  }
}
