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
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return Card(
            child: Container(
              height: 200,
              width: 200,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Image.network(
                  'https://picsum.photos/250?image=$index',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          );
        },
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              child: Image.network('https://picsum.photos/250?image=11',
                  height: 24, width: 24),
              padding: const EdgeInsets.all(12),
            ),
            Container(
              decoration: const BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(12),
                      bottomLeft: Radius.circular(12))),
              child: Text("Student"),
              padding: const EdgeInsets.all(12),
            )
          ],
        ),
      ),
    );
  }
}
