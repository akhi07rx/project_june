import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: true,
    home: CSlider(),
  ));
}

class CSlider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: Colors.transparent,
        title: Center(
          child: Text(
            "JJK x GOJO",
            //style: GoogleFonts.aBeeZee(),
            // style: GoogleFonts.lato(),
            style: GoogleFonts.aBeeZee(), style: TextStyle(color: Colors.black),
          ),
        ),
        bottomOpacity: 0.0,
        elevation: 0.0,
      ),
      body: CarouselSlider(
        items: [
          Container(
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage("https://i.imgur.com/lBPE5Vg.jpg")))),
          Container(
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage("https://i.imgur.com/wNi0uNs.jpg")))),
          Container(
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage("https://i.imgur.com/tKEXSab.jpg")))),
          Container(
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage("https://i.imgur.com/GSnQB2P.jpg")))),
          Container(
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage("https://i.imgur.com/y40XEfJ.jpg")))),
          Container(
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage("https://i.imgur.com/7zT1Qf3.jpg")))),
          Container(
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage("https://i.imgur.com/WSvzowD.jpg")))),
          Container(
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage("https://i.imgur.com/DXDVmou.jpg")))),
        ],
        options: CarouselOptions(
            initialPage: 0,
            //height: 100,
            aspectRatio: 16 / 9,
            viewportFraction: 1,
            enableInfiniteScroll: true,
            autoPlay: true,
            autoPlayInterval: const Duration(seconds: 2),
            autoPlayCurve: Curves.linear,
            //enlargeCenterPage: true,
            enlargeFactor: .3,
            scrollDirection: Axis.horizontal),
      ),
    );
  }
}


//https://imgur.com/a/dizzLck