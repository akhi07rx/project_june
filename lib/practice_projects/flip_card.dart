import 'package:flutter/material.dart';
import 'package:flip_card/flip_card.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flipcard'),
      ),
      body: FlipCard(
        fill: Fill
            .fillBack, // Fill the back side of the card to make in the same size as the front.
        direction: FlipDirection.HORIZONTAL, // default
        front: Padding(
          padding: const EdgeInsets.all(0.0),
          child: Center(
            child: SizedBox(
              child: Image.asset('assets/pfp/gojo.png'),
              width: 800,
              height: 500,
            ),
          ),
        ),
        back: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: SizedBox(
              child: Image.asset('assets/pfp/chousou.png'),
              width: 800,
              height: 500,
            ),
          ),
        ),
      ),
    );
  }
}
