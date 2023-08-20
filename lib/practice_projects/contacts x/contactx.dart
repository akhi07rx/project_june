import 'package:flutter/material.dart';
import 'contact_details_page.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: ContacEx(),
  ));
}

class ContacEx extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("CONTACTS"),
        backgroundColor: const Color(0xFF8c95fd),
      ),
      body: ListView(
        children: [
          Card(
            child: ListTile(
              title: const Text("Miles Morales"),
              subtitle: const Text("+81 07050144356"),
              trailing: const Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Icon(
                    Icons.message,
                    color: Color(0xFFFFB084),
                  ),
                  SizedBox(width: 12.0),
                  Icon(
                    Icons.phone,
                    color: Color(0xFF4685FF),
                  ),
                ],
              ),
              leading: const CircleAvatar(
                backgroundImage:
                    NetworkImage("https://i.imgur.com/tpKeLin.jpg"),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ContactDetailsPage(
                      name: "Miles Morales",
                      phoneNumber: "+81 07050144356",
                      imageURL: "https://i.imgur.com/tpKeLin.jpg",
                    ),
                  ),
                );
              },
            ),
          ),
          Card(
            child: ListTile(
              title: const Text("Megumi Fushiguro"),
              subtitle: const Text("+81 07050148958"),
              trailing: const Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Icon(
                    Icons.message,
                    color: Color(0xFFFFB084),
                  ),
                  SizedBox(width: 12.0),
                  Icon(
                    Icons.phone,
                    color: Color.fromARGB(255, 2, 108, 255),
                  ),
                ],
              ),
              leading: const CircleAvatar(
                  backgroundImage:
                      NetworkImage("https://i.imgur.com/ja6PGNp.jpg")),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ContactDetailsPage(
                            name: "Megumi Fushiguro",
                            phoneNumber: "+81 07050148958",
                            imageURL: "https://i.imgur.com/ja6PGNp.jpg")));
              },
            ),
          ),
        ],
      ),
    );
  }
}
