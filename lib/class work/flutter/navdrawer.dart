import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Drawer_ex(),
  ));
}

class Drawer_ex extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Profile"),
      ),
      drawer: Drawer(
        child: ListView(
          children: const [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage("https://i.imgur.com/1CzkZqK.png"))),
              accountName: Text("My Name"),
              accountEmail: Text("myname@gmail.com"),
              currentAccountPicture: CircleAvatar(
                  backgroundImage:
                      NetworkImage("https://i.imgur.com/QoudqNs.jpg")),
              otherAccountsPictures: [
                CircleAvatar(
                  backgroundImage:
                      NetworkImage("https://i.imgur.com/QaBhKZL.jpg"),
                ),
                CircleAvatar(
                  backgroundImage:
                      NetworkImage("https://i.imgur.com/9bX3VFk.jpg"),
                )
              ],
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
            ),
            ListTile(
              leading: Icon(Icons.info),
              title: Text("About"),
            ),
          ],
        ),
      ),
    );
  }
}
