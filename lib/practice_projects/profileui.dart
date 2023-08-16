import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class profile extends StatelessWidget {
  @override
  var itemnames = ['settings'];

  // var icons = ['Icons.settings']
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          //leading: Icon(Icons.arrow_left,color:Colors.black),
          leading: const BackButton(color: Colors.black),
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.verified_user,
                  color: Colors.black,
                )),
            IconButton(
                onPressed: () {},
                icon: const FaIcon(FontAwesomeIcons.circleUser,
                    color: Colors.black)),
            IconButton(
                onPressed: () {},
                icon: const FaIcon(FontAwesomeIcons.moon, color: Colors.black))
          ],
          elevation: 0,
          backgroundColor: Colors.transparent,
        ),
        body: Center(
            child: Column(
          children: [
            Container(
              child: const CircleAvatar(
                radius: 80,
                backgroundImage: NetworkImage(
                    "https://images.unsplash.com/photo-1691379635079-9f438036ea58?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwyMHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60"),
              ),
            ),
            Row(
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
            Container(
                child: const ListTile(
              title: Center(
                  child: Text("ALTHAF K S", style: TextStyle(fontSize: 40))),
              hoverColor: Colors.greenAccent,
              subtitle: Center(
                  child: Text(
                "@althafks404",
              )),
            )),
            Container(
                height: 30,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const FaIcon(
                    FontAwesomeIcons.pen,
                    size: 20,
                    color: Colors.black,
                  ),
                )),
            Container(
                height: 80,
                child: const Center(
                    child: Text(
                  "Flutter App Developer and Open Source Contributer",
                  style: TextStyle(fontSize: 25),
                ))),
/*
          Scrollbar(
              thumbVisibility: true,
              child: ListView.builder(itemBuilder: (context,indext){
                return Card(
                  child: ListTile(
                    title:Text("Settings"),
                    trailing:FaIcon(FontAwesomeIcons.arrowRight),
                    leading:FaIcon(FontAwesomeIcons.gears),
                  ),
                );
              },itemCount: 10,)
*/
            SizedBox(height: 8),
            Expanded(
                child: ListView(children: [
              Container(
                  decoration: BoxDecoration(
                      border: Border.all(width: 5.0, color: Colors.white),
                      borderRadius: BorderRadius.circular(30)),
                  child: ListTile(
                    title: Text("settings"),
                    leading: Icon(Icons.settings),
                    trailing: FaIcon(FontAwesomeIcons.arrowRight),
                  )),
              SizedBox(height: 8),
              Container(
                  child: const Card(
                      elevation: 30,
                      child: ListTile(
                        title: Text("Accout Info"),
                        leading: Icon(Icons.info_rounded),
                        trailing: FaIcon(FontAwesomeIcons.arrowRight),
                      ))),
              SizedBox(height: 8),
              Container(
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(20)),
                  child: const Card(
                      elevation: 30,
                      child: ListTile(
                          title: Text("Accout protection"),
                          leading: Icon(Icons.wifi_protected_setup),
                          trailing: FaIcon(FontAwesomeIcons.arrowRight)))),
              SizedBox(height: 8),
              Container(
                  child: const Card(
                      elevation: 30,
                      child: ListTile(
                          title: Text("Privacy"),
                          leading: Icon(Icons.privacy_tip_rounded),
                          trailing: FaIcon(FontAwesomeIcons.arrowRight)))),
              SizedBox(height: 8),
              Container(
                  child: const Card(
                      elevation: 30,
                      child: ListTile(
                          title: Text("Sing out"),
                          leading: Icon(Icons.arrow_circle_left),
                          trailing: FaIcon(FontAwesomeIcons.arrowRight)))),
              SizedBox(height: 8),
              Container(
                  child: const Card(
                      elevation: 30,
                      child: ListTile(
                          title: Text("Sing out"),
                          leading: Icon(Icons.arrow_circle_left),
                          trailing: FaIcon(FontAwesomeIcons.arrowRight)))),
              SizedBox(height: 8),
              Container(
                  child: const Card(
                      elevation: 30,
                      child: ListTile(
                          title: Text("Sing out"),
                          leading: Icon(Icons.arrow_circle_left),
                          trailing: FaIcon(FontAwesomeIcons.arrowRight)))),
              SizedBox(height: 8),
              Container(
                  child: const Card(
                      elevation: 30,
                      child: ListTile(
                          title: Text("Sing out"),
                          leading: Icon(Icons.arrow_circle_left),
                          trailing: FaIcon(FontAwesomeIcons.arrowRight)))),
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
