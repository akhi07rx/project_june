import 'package:flutter/material.dart';

class SimpleAnimation extends StatefulWidget {
  const SimpleAnimation({super.key});

  @override
  void initState(){
    AnimationController=AnimationController(vsync: vsync)
  }
  State<SimpleAnimation> createState() => _SimpleAnimationState();
}

class _SimpleAnimationState extends State<SimpleAnimation> {
  Animation<double>? animation;
  AnimationController? animationController;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            margin: const EdgeInsets.all(20),
            child: Text(
              "Hello World",
              style: TextStyle(fontSize: animation?.value),
            ),
          ),
          ElevatedButton(
              onPressed: () => zoomIn, child: const Text('Increase Text Size'))
        ],
      ),
    );
  }
}

void zoomIn() {
  AnimationController!.forward();
}
