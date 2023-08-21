import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
//import 'package:project_june1/class%20work/flutter/splash2.dart';
import 'package:project_june1/class%20work/flutter/splash3.dart';
import 'package:project_june1/class%20work/flutter/stateful%20login%20with%20validation.dart';

void main() {
  runApp(MaterialApp(
    home: IntroScreen(),
  ));
}

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      pages: [
        PageViewModel(
            title: 'First Page',
            body:
                'Introduction screen shows the details of the app and demo of the pages',
            image: IntroImage(
                "https://images.unsplash.com/photo-1673235966910-f2a443bdbaaf?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=464&q=80")),
        PageViewModel(
            title: 'First Page',
            body:
                'Introduction screen shows the details of the app and demo of the pages',
            image: IntroImage(
                "https://images.unsplash.com/photo-1531525645387-7f14be1bdbbd?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=580&q=80")),
        PageViewModel(
            title: 'First Page',
            body:
                'Introduction screen shows the details of the app and demo of the pages',
            image: IntroImage(
                "https://images.unsplash.com/photo-1531525727990-67532cd332c6?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=580&q=80")),
      ],
      onDone: () => Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => Splash3())),
      onSkip: () => Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => Login2())),
      skip: Text('Skip'),
      next: Icon(Icons.arrow_forward_ios_rounded),
      done: Text("Done"),
      dotsDecorator: DotsDecorator(
          size: Size(10, 12),
          color: Colors.grey,
          activeSize: Size(25, 12),
          activeColor: Colors.yellow,
          activeShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20)))),
    );
  }

  Widget IntroImage(String image) {
    return Align(
      alignment: Alignment.center,
      child: Image.network(image),
    );
  }
}
