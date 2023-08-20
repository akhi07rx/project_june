import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: ContacX(),
  ));
}

class ContacX extends StatelessWidget {
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
        ],
      ),
    );
  }
}
