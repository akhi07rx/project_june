import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: RefraHome(),
  ));
}

class RefraHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("GridView Using Refactoring"),
      ),
      body: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2),
          itemBuilder: (context, index) {
            return NewWidget();
          }),
    );
  }
}

class NewWidget extends StatelessWidget {
  const NewWidget({
    super.key, required AssetImage myimage, required String name, required String price,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(
            "assets/images/pizza.png",
            height: 100,
          ),
          const Text("Donut"),
          const Text("\$ 100"),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.favorite),
                  label: Text('WishList')),
              const SizedBox(
                width: 10,
              ),
              ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.shopping_cart),
                  label: const Text('Buy Now')),
            ],
          )
        ],
      ),
    );
  }
}
