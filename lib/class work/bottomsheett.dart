import 'package:flutter/material.dart';

class BottomSheett extends StatelessWidget {
  const BottomSheett({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(" Bottom sheet with image on tap"),
      ),
      body: Center(
          child: GestureDetector(
        //we can use inkwell also for preforming events
        onLongPress: () => showSheet(), //{},
        child: Image.asset("assets/images/megumi.jpg"),
      )),
    );
  }
}

void showSheet(BuildContext context) {
  showModalBottomSheet(context: context, builder: (context) {return Container(child: Column(mainAxisSize: MainAxisSize.min,),)});
}
