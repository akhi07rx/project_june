import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class profile extends StatelessWidget {
  @override
  var itemnames = ['settings'];

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: const BackButton(color: Colors.black),
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.wallet_membership_rounded,
                  color: Colors.black,
                )),
            // IconButton(
            //     onPressed: () {},
            //     icon: const FaIcon(FontAwesomeIcons.circleUser,
            //         color: Colors.black)),
            // IconButton(
            //     onPressed: () {},
            //     icon: const FaIcon(FontAwesomeIcons.moon, color: Colors.black))
          ],
          elevation: 0,
          backgroundColor: Colors.transparent,
        ),
        body: Center(
            child: Column(
          children: [
            const CircleAvatar(
              radius: 70,
              backgroundImage: NetworkImage("https://i.imgur.com/ja6PGNp.jpg"),
            ),
            Positioned(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Socialmediabutton(Icons.facebook),
                  const SizedBox(width: 30),
                  Socialmediabutton(FontAwesomeIcons.whatsapp),
                  const SizedBox(width: 30),
                  Socialmediabutton(FontAwesomeIcons.instagram),
                  const SizedBox(width: 30),
                  Socialmediabutton(FontAwesomeIcons.discord)
                ],
              ),
            ),
            const ListTile(
              title:
                  Center(child: Text("MEGUMI", style: TextStyle(fontSize: 36))),
              hoverColor: Color.fromARGB(255, 64, 233, 151),
              subtitle: Center(
                  child: Text(
                "@megumichan",
              )),
            ),
            SizedBox(
                height: 30,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const FaIcon(
                    FontAwesomeIcons.pen,
                    size: 20,
                    color: Colors.black,
                  ),
                )),
            const SizedBox(
                height: 80,
                child: Center(
                    child: Text(
                  "Flutter App Developer and Open Source Contributer",
                  style: TextStyle(fontSize: 25),
                ))),
            const SizedBox(height: 8),
            Expanded(
                child: ListView(children: [
              Container(
                  decoration: BoxDecoration(
                      border: Border.all(width: 5.0, color: Colors.white),
                      borderRadius: BorderRadius.circular(30)),
                  child: const ListTile(
                    title: Text("settings"),
                    leading: Icon(Icons.settings),
                    trailing: FaIcon(FontAwesomeIcons.arrowRight),
                  )),
              const SizedBox(height: 8),
            ]))
          ],
        )));
  }
}

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: profile(),
  ));
}

Widget Socialmediabutton(IconData icon) => CircleAvatar(
    radius: 20,
    child: Center(
      child: Icon(icon, size: 10),
    ));
