import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: shrine(),
  ));
}

class shrine extends StatelessWidget {
  var name = [
    'Vagabond sack',
    'stella',
    'Whitney belt',
    'Garden strand',
    'Strut earrings',
    'Varsity socks'
  ];
  var price = [120, 58, 35, 98, 34, 12];
  var image = [
    'assets/shopping/sack.jpg',
    'assets/shopping/glass.jpg',
    'assets/shopping/belt.png',
    'assets/shopping/chain.jpeg',
    'assets/shopping/earring.jpeg',
    'assets/shopping/socks.jpeg'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.menu),
        title: const Text("SHRINE"),
        backgroundColor: Colors.indigoAccent,
        actions: const [
          Icon(Icons.search),
          SizedBox(
            width: 30,
          ),
          //Icon(Icons.)
        ],
      ),
      body: GridView.custom(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2),
          childrenDelegate: SliverChildListDelegate(List.generate(
              6,
              (index) => Card(
                    child: Center(
                      child: Column(
                        children: [
                          Container(
                            height: 80,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    fit: BoxFit.fitHeight,
                                    image: AssetImage(image[index]))),
                          ),
                          Text(name[index]),
                          Text("\$ ${price[index]}"),
                        ],
                      ),
                    ),
                  )))),
    );
  }
}
