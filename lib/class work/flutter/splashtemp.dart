import 'dart:async';
import 'package:flutter/material.dart';
import 'package:project_june1/class%20work/flutter/login.dart';
// import 'package:project_june1/class%20work/flutter/stateful%20login%20with%20validation.dart';
// import 'package:flutter_proj_1/login.dart';
// import 'package:flutter_proj_1/statefull%20loginpage%20with%20validation.dart';

void main() {
  runApp(MaterialApp(
    home: Splashtemp(),
  ));
}

class Splashtemp extends StatefulWidget {
  //Splashtemp is initially immutable
  @override
  State<Splashtemp> createState() =>
      _SplashtempState(); //createState() will  create a mutable state for Splashtemp
}

class _SplashtempState extends State<Splashtemp> {
  @override
  void initState() {
    //what will happen when the app or page is first launched
    Timer(Duration(seconds: 1), () {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => LoginPage()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset("assets/icons/ut.jpg"),
      ),
    );
  }
}
