import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: StackEx(),
  ));
}

class StackEx extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Stack Example"),
      ),
      body: Center(
        child: Stack(
          children: [
            Container(
              height: 300,
              width: 500,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          "https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/a44778ea-3457-40e0-8979-b7e3685d23d0/dfph288-3bd7b361-38d3-4d73-905d-cd36ef012f42.png/v1/fit/w_828,h_464,q_70,strp/gojo_satoru_x_mobile_legends_8k_wallpaper_by_newjer53_dfph288-414w-2x.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9MTA3NCIsInBhdGgiOiJcL2ZcL2E0NDc3OGVhLTM0NTctNDBlMC04OTc5LWI3ZTM2ODVkMjNkMFwvZGZwaDI4OC0zYmQ3YjM2MS0zOGQzLTRkNzMtOTA1ZC1jZDM2ZWYwMTJmNDIucG5nIiwid2lkdGgiOiI8PTE5MjAifV1dLCJhdWQiOlsidXJuOnNlcnZpY2U6aW1hZ2Uub3BlcmF0aW9ucyJdfQ.owKC1nlnYRE_vYbc6qX3I-2xeYKqOJjZh--aqiYpffk"
                          //
                          // "https://64.media.tumblr.com/295275baf0fed1403338f3341b4b2ffd/7c806480f72c74de-c8/s540x810/b5299c4d3d1093fa6b23693e0882ea13bffaf0a5.png"
                          ))), // color: Colors.green,
            ),
            Positioned(
              right: 150,
              left: 20,
              bottom: 15,
              child: SizedBox(
                height: 20,
                width: 100,
                child: Text(
                  "SATORU GOJO",
                  style: GoogleFonts.aBeeZee(
                    textStyle: const TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              right: 200,
              left: 20,
              top: 235,
              bottom: 10,
              child: SizedBox(
                height: 50,
                width: 50,
                child: Text(
                  "8089 8964 7890 7836",
                  style: GoogleFonts.aBeeZee(
                    textStyle: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              right: 200,
              left: 30,
              top: 25,
              bottom: 30,
              child: SizedBox(
                height: 50,
                width: 50,
                child: Text(
                  "LIMITLESS",
                  style: GoogleFonts.aBeeZee(
                    textStyle: const TextStyle(
                      color: Colors.white,
                      fontSize: 13,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


// chip "https://static.vecteezy.com/system/resources/previews/011/843/770/original/credit-card-chip-free-vector.jpg"