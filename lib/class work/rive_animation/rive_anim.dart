import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

void main() {
  runApp(MaterialApp(
    home: RiveEx(),
  ));
}

class RiveEx extends StatelessWidget {
  const RiveEx({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: RiveAnimation.network(
          "https://public.rive.app/community/runtime-files/5560-10945-laptop-turns.riv",
          fit: BoxFit.contain,
        ),

        // child: RiveAnimation.asset(
        //   "assets/animation/cat.riv",
        //   fit: BoxFit.contain,
        // ),
      ),
    );
  }
}
