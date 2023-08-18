import 'dart:async';
import 'package:lottie/lottie.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_june1/practice_projects/Musicplayer/HomeS.dart';

class SplashS extends StatefulWidget {
  const SplashS({super.key});

  @override
  State<SplashS> createState() => _SplashSState();
}

class _SplashSState extends State<SplashS> {
  @override
  void initState() {
    Timer(Duration(seconds: 6), () {
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (context) => HomeS()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Lottie.asset("assets/MusicPlus/Animm/animation_llfehwwk.json"),
          AnimatedTextKit(animatedTexts: [
            TyperAnimatedText(
              "Music Plus".toUpperCase(),
              textStyle: GoogleFonts.satisfy(
                textStyle: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Colors.white,
                ),
              ),
              speed: const Duration(milliseconds: 500),
            )
          ])
        ])));
  }
}

void main() {
  runApp(MaterialApp(
    home: SplashS(),
    debugShowCheckedModeBanner: false,
  ));
}
