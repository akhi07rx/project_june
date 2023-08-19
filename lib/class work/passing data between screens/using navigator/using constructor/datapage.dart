import 'package:flutter/material.dart';
import 'package:project_june1/class%20work/passing%20data%20between%20screens/using%20navigator/using%20constructor/to_statlesspage.dart';

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
          ElevatedButton(onPressed: () {Navigator.of(context).push(MaterialPageRoute(builder: (context) => StatelessPage()))}, child: Text("To Stateless Page")),
          ElevatedButton(onPressed: () {}, child: Text("To Stateful Page")),
        ]),
      ),
    );
  }
}
