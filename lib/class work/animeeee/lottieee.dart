import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

void main() {
  runApp(MaterialApp(
    home: LotAnim(),
  ));
}

class LotAnim extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Lottie"),
      ),
      body: Column(
        children: [
          SizedBox(
              height: 200,
              width: 200,
              child: Lottie.asset("assets/animation/tweet.json")),
          SizedBox(
            height: 200,
            width: 200,
            child: Lottie.network(
                "https://lottie.host/41325ac4-f21e-4b8e-a9dc-90e04c3215c4/EBkNW5cCjw.json"),
          ),
        ],
      ),
    );
  }
}
