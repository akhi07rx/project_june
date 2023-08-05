import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: ListView_Separated(),
  ));
}

class ListView_Separated extends StatelessWidget {
  var months = [
    "January",
    "February",
    "March",
    "April",
    "May",
    "June",
    "July",
    "August",
    "September",
    "October",
    "November",
    "December"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ListView_Separated"),
      ),
      body: ListView.separated(
          itemBuilder: (context, index) {
            return Card(
              child: Text(months[index]),
            );
          },
          separatorBuilder: (context, index) {
            if (index % 4 == 0) {
              return const Card(
                color: Colors.red,
                child: Text("Advertisement"),
              );
            } else {
              return const SizedBox();
            }
          },
          itemCount: 12),
    );
  }
}
