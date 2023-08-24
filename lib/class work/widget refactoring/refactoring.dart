import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(
    home: Refractoring(),
  ));
}

class Refractoring extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Refractoring'),
      ),
      body: GridView.builder(
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemBuilder: (context, index) {
            return MyRefractoringWidget(
              rimage: Image.asset('assets/fruits/apple.png'),
              label: Text(
                'Apple',
                style: GoogleFonts.dancingScript(
                    fontSize: 30, color: Colors.green),
              ),
              bgcolor: Colors.black,
            );
          }),
    );
  }
}

class MyRefractoringWidget extends StatelessWidget {
  final Color? bgcolor;
  final Image? rimage;
  VoidCallback? onClick;
  Widget? label;
  Widget? ricon;

  MyRefractoringWidget(
      {this.bgcolor, required this.rimage, this.label, this.onClick});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: bgcolor,
      child: Center(
        child: ListTile(
          title: label,
          leading: rimage,
          onTap: onClick,
          trailing: ricon,
        ),
      ),
    );
  }
}
