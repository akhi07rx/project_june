import 'package:flutter/material.dart';

class DataPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Passing Data between sceens using constructor"),
      ),
      body: Container(
        alignment: Alignment.center,
        height: 250,
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          ElevatedButton(onPressed: () {}, child: Text("To Stateless Page")),
          ElevatedButton(onPressed: () {}, child: Text("To Stateful Page")),
        ]),
      ),
    );
  }
}
