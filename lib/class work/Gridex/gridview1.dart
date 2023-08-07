import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: GridView1(),
  ));
}

class GridView1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My GridView"),
      ),
      body: GridView(
        gridDelegate:
            // const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 60),
        children: List.generate(
            15,
            (index) => const Card(
                  color: Colors.amber,
                  child: Center(
                    child: Icon(Icons.ac_unit_rounded),
                  ),
                )),
      ),
    );
  }
}
