import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

void main() {
  runApp(MaterialApp(
    home: Stag_Grid(),
  ));
}

class Stag_Grid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Staggered GridView"),
      ),
      body: SingleChildScrollView(
        child: StaggeredGrid.count(
          crossAxisCount: 4,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          children: [
            StaggeredGridTile.count(
                crossAxisCellCount: 2, //width
                mainAxisCellCount: 2, //height
                child: Container(
                  color: Colors.green,
                  child: const Center(child: Icon(Icons.widgets)),
                )),
            StaggeredGridTile.count(
                crossAxisCellCount: 2, //width
                mainAxisCellCount: 4, //height
                child: Container(
                  color: Colors.orange,
                  child: const Center(child: Icon(Icons.wifi)),
                )),
            StaggeredGridTile.count(
                crossAxisCellCount: 1, //width
                mainAxisCellCount: 2, //height
                child: Container(
                  color: Colors.blue,
                  child: const Center(child: Icon(Icons.map)),
                )),
            StaggeredGridTile.count(
                crossAxisCellCount: 1, //width
                mainAxisCellCount: 1, //height
                child: Container(
                  color: Colors.purple,
                  child: const Center(child: Icon(Icons.bluetooth)),
                )),
            StaggeredGridTile.count(
                crossAxisCellCount: 1, //width
                mainAxisCellCount: 1, //height
                child: Container(
                  color: Colors.pink,
                  child: const Center(child: Icon(Icons.send)),
                )),
            StaggeredGridTile.count(
                crossAxisCellCount: 4, //width
                mainAxisCellCount: 2, //height
                child: Container(
                  color: Colors.red,
                  child: const Center(child: Icon(Icons.radio)),
                )),
          ],
        ),
      ),
    );
  }
}
