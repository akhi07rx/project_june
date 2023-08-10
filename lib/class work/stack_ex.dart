import 'package:flutter/material.dart';

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
                          "https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/a44778ea-3457-40e0-8979-b7e3685d23d0/dfph288-3bd7b361-38d3-4d73-905d-cd36ef012f42.png/v1/fit/w_828,h_464,q_70,strp/gojo_satoru_x_mobile_legends_8k_wallpaper_by_newjer53_dfph288-414w-2x.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9MTA3NCIsInBhdGgiOiJcL2ZcL2E0NDc3OGVhLTM0NTctNDBlMC04OTc5LWI3ZTM2ODVkMjNkMFwvZGZwaDI4OC0zYmQ3YjM2MS0zOGQzLTRkNzMtOTA1ZC1jZDM2ZWYwMTJmNDIucG5nIiwid2lkdGgiOiI8PTE5MjAifV1dLCJhdWQiOlsidXJuOnNlcnZpY2U6aW1hZ2Uub3BlcmF0aW9ucyJdfQ.owKC1nlnYRE_vYbc6qX3I-2xeYKqOJjZh--aqiYpffk"))), // color: Colors.green,
            ),
            const Positioned(
              right: 150,
              left: 20,
              bottom: 15,
              child: SizedBox(
                height: 20,
                width: 100,
                child: Text(
                  "SATORU GOJO",
                  style: TextStyle(color: Colors.white),
                ),
                //color: Colors.red,
              ),
            ),
            const Positioned(
                right: 200,
                left: 30,
                top: 25,
                bottom: 30,
                child: SizedBox(
                  height: 50,
                  width: 50,
                  child: Text(
                    "CROWN",
                    style: TextStyle(color: Colors.white),
                  ),
                )),
            const Positioned(
              left: 10,
              top: 10,
              child: SizedBox(
                height: 50,
                width: 50,
                // color: Colors.yellow,
              ),
            ),
          ],
        ),
      ),
    );
  }
}


// chip "https://static.vecteezy.com/system/resources/previews/011/843/770/original/credit-card-chip-free-vector.jpg"