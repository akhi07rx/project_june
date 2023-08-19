import 'package:flutter/material.dart';
import 'package:project_june1/class%20work/passing%20data%20between%20screens/using%20navigator/using%20constructor/to_statlesspage.dart';


void main() {
  runApp(MaterialApp(
    home: DataPage(),
  ));
}

class DataPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Passing data between screens using constructor"),
      ),
      body: Container(
        alignment: Alignment.center,
        height: 200,
        child: Column(
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => StatelessPage(
                          name: "Luminar",
                          location: "Kakkanad",
                          phone: 9947837497)));
                },
                child: Text('To Stateless Page')),
                const SizedBox(height: 20,)
            ElevatedButton(onPressed: () {}, child: Text('To Stateful Page'))
          ],
        ),
      ),
    );
  }
}
