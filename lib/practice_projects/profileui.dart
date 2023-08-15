import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: ProfileUi(),
  ));
}

class ProfileUi extends StatelessWidget {
  ProfileUi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Color(0xFFFFFFFF),
          //elevation: 0,
          leading: Icon(
            Icons.arrow_circle_left_sharp,
            color: Colors.black,
          )),
    );
  }
}
