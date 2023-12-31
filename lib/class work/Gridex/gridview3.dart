import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: GrideView3(),
  ));
}

class GrideView3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("GridView Count"),
      ),
      body: GridView.count(
        crossAxisCount: 3,
        children: List.generate(
            15,
            (index) => const Card(
                  child: Center(
                    child: Text("Hello"),
                  ),
                )),
      ),
    );
  }
}
