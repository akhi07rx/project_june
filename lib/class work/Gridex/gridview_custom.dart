import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: GridCustom(),
  ));
}

class GridCustom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GridView.Custom"),
      ),
      body: GridView.custom(
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
          childrenDelegate: SliverChildListDelegate(List.generate(
              12,
              (index) => Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("assets/images/megumi.jpg"))),
                  ),
              Text("Item.1"),
              Text("\$900")))),
    );
  }
}
