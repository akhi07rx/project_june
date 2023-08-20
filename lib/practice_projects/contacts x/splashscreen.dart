import 'dart:async';
import 'package:flutter/material.dart';
import 'package:project_june1/practice_projects/contacts%20x/contactx.dart';
//import 'package:project_june1/practice_projects/contacts%20x/ct_temp/ct_temp.dart';
import 'package:rive/rive.dart';

class SplashEx extends StatefulWidget {
  const SplashEx({Key? key}) : super(key: key);

  @override
  State<SplashEx> createState() => _SplashSState();
}

class _SplashSState extends State<SplashEx> {
  @override
  void initState() {
    Timer(const Duration(seconds: 2), () {
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (context) => ContacEx()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        //backgroundColor: Colors.black,
        body: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Expanded(
        //child: RiveAnimation.network(
        //"https://public.rive.app/community/runtime-files/2323-4608-wolvie-v2.riv",
        //"https://public.rive.app/community/runtime-files/5492-10843-geometry-madness.riv",
        child: RiveAnimation.asset(
          "assets/animation/cat.riv",
          fit: BoxFit.contain,
        ),
      ),
    ])));
  }
}

void main() {
  runApp(const MaterialApp(
    home: SplashEx(),
    debugShowCheckedModeBanner: false,
  ));
}
