import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Musicx(),
  ));
}

class Musicx extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF000000),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xFF000000),
        //#000000
        title: Text(
          'Playlist',
          style: GoogleFonts.ubuntu(
            //textStyle: Theme.of(context).textTheme.headline6,
            fontSize: 30,
            color: const Color(0xFF6b7dff),
            //fontWeight: FontWeight.w700,
            // fontStyle: FontStyle.italic,
          ),
        ),
      ),
    );
  }
}
