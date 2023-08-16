import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: ProfileUi(),
  ));
}

class ProfileUi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.menu,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
        ],
        //backgroundColor: const Color(0xFFFFFFFF),
        //elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            //CustomIcons.arrow_back,
            //Icons.arrow_circle_left_sharp,
            color: Colors.black,
          ),
          onPressed: () {},
        ),
      ),
    );
  }
}
