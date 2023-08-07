import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: GrideView3s(),
  ));
}

class GrideView3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("GridView Count"),
      ),
      body: GridView.extent(
        maxCrossAxisExtent: 20,
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
