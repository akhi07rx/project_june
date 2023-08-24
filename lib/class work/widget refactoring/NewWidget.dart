import 'package:flutter/material.dart';
//import 'package:flutter_proj_1/widget%20refactoring/NewWidget.dart';
import 'package:project_june1/class%20work/widget%20refactoring/homee.dart';

void main() {
  runApp(MaterialApp(
    home: RefraHome(),
  ));
}

class RefraHome extends StatelessWidget {
  var name = [
    "food1",
    "food2",
    "food3",
    "food4",
    "food5",
    "food6",
    "food7",
  ];
  var image = [
    "assets/images/ham.png",
    "assets/images/pizza.png",
    "assets/images/cake.png",
    "assets/images/salad.png",
    "assets/images/biriyani.jpg",
    "assets/images/ham.png",
    "assets/images/pizza.png"
  ];
  var price = [250, 300, 400, 590, 120, 58, 340];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Gridview using Refractoring'),
      ),
      body: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2),
          itemBuilder: (context, index) {
            return NewWidget(
              myimage: AssetImage(image[index]),
              name: name[index],
              price: '${price[index]}',
            );
          }),
    );
  }
}
