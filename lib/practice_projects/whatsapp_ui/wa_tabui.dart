import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:project_june1/assignment/contacts/contacts.dart';
import 'package:project_june1/assignment/drawer.dart';
import 'package:project_june1/class%20work/stack_ex.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: TabEx(),
  ));
}

class TabEx extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.teal,
            title: const Text("WhatsApp"),
            actions: [
              const Icon(Icons.search),
              const Icon(Icons.camera_alt),
              PopupMenuButton(itemBuilder: (context) {
                return [const PopupMenuItem(child: Text("Settings"))];
              })
            ],
            bottom: TabBar(
                indicatorSize: TabBarIndicatorSize.label,
                labelPadding: EdgeInsets.zero,
                tabs: [
                  SizedBox(
                      width: MediaQuery.of(context).size.width * .1,
                      child: FaIcon(FontAwesomeIcons.peopleGroup)),
                  SizedBox(
                      width: MediaQuery.of(context).size.width * .3,
                      child: Text("Chat")),
                  SizedBox(
                      width: MediaQuery.of(context).size.width * .3,
                      child: Text("Status")),
                  SizedBox(
                      width: MediaQuery.of(context).size.width * .3,
                      child: Text("Call"))
                ]),
          ),
          body: TabBarView(
            children: [
              StackEx(),
              Drawer_ex(),
              contacts_01(),
            ],
          ),
        ));
  }
}
