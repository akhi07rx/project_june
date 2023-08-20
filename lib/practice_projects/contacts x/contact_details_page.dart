import 'package:flutter/material.dart';

class ContactDetailsPage extends StatelessWidget {
  final String name;
  final String phoneNumber;
  final String imageURL;

  const ContactDetailsPage({
    Key? key,
    required this.name,
    required this.phoneNumber,
    required this.imageURL,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(name),
        backgroundColor: const Color(0xFF8c95fd),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50.0,
              backgroundImage: NetworkImage(imageURL),
            ),
            const SizedBox(height: 10.0),
            Text(
              name,
              style:
                  const TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10.0),
            Text(
              phoneNumber,
              style:
                  const TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
