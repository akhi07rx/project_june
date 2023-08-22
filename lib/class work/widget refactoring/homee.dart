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
        title: const Text('Gridview using Refractoring'),
      ),
      body: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2),
          itemBuilder: (context, index) {
            return const MyWidget();
          }),
    );
  }
}

class MyWidget extends StatelessWidget {
  const MyWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Image.asset(
            "assets/images/pizza.png",
            height: 100,
          ),
          const Text("Pizza"),
          const Text('\$ 100'),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.favorite),
                  label: const Text('Wishlist')),
              const SizedBox(
                width: 20,
              ),
              ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.shopping_cart),
                  label: const Text('Buy Now')),
            ],
          ),
        ],
      ),
    );
  }
}
