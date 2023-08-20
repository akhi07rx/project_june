import 'dart:async';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:project_june1/practice_projects/contacts%20x/ct_temp/ct_temp.dart';

class SplashS extends StatefulWidget {
  const SplashS({Key? key}) : super(key: key);

  @override
  State<SplashS> createState() => _SplashSState();
}

class _SplashSState extends State<SplashS> {
  @override
  void initState() {
    Timer(const Duration(seconds: 3), () {
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (context) => ContacX()));
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
          Lottie.asset("assets/animation/tweet.json"),
        ])));
  }
}

void main() {
  runApp(const MaterialApp(
    home: SplashS(),
    debugShowCheckedModeBanner: false,
  ));
}
