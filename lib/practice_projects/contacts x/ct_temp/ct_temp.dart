import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: ContacX10(),
  ));
}

class ContacX10 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("CONTACTS"),
        backgroundColor: const Color(0xFF8c95fd),
      ),
      body: ListView(
        children: const [
          Card(
            child: ListTile(
              title: Text("Miles Morales"),
              subtitle: Text("+81 07050144356"),
              trailing: Row(
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
              leading: CircleAvatar(
                backgroundImage:
                    NetworkImage("https://i.imgur.com/tpKeLin.jpg"),
              ),
            ),
          ),
          Card(
            child: ListTile(
              title: Text("Megumi Fushiguro"),
              subtitle: Text("+81 07050148958"),
              trailing: Row(
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
              leading: CircleAvatar(
                backgroundImage:
                    NetworkImage("https://i.imgur.com/ja6PGNp.jpg"),
              ),
            ),
          ),
          Card(
            child: ListTile(
              title: Text("Megumi Fushiguro"),
              subtitle: Text("+81 07050148958"),
              trailing: Row(
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
              leading: CircleAvatar(
                backgroundImage:
                    NetworkImage("https://i.imgur.com/ja6PGNp.jpg"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
