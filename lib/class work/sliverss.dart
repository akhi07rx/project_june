import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Slivers(),
  ));
}

class Slivers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: true,
            pinned: false,
            title: const Text("Sliver AppBar"),
            bottom: AppBar(
              elevation: 0,
              title: Container(
                width: double.infinity,
                height: 40,
                color: Colors.white,
                child: const TextField(
                  decoration: InputDecoration(
                      hintText: "Search Here",
                      prefixIcon: Icon(Icons.search_rounded),
                      suffixIcon: Icon(Icons.camera_alt)),
                ),
              ),
            ),
          )
        ],
      )),
    );
  }
}
