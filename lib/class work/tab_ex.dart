import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TabEx extends StatelessWidget {
  const TabEx({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Whatsapp"),
          actions: [
            Icon(Icons.search),
            Icon(Icons.camera_alt),
            PopupMenuButton(itemBuilder: (context) {
              return [PopupMenuItem(child: Text("Settings"))];
            })
          ],
          bottom: TabBar(tabs: [
            FaIcon(FontAwesomeIcons.peopleGroup),
            Text("Chat"),
            Text("Status"),
            Text("Call")
          ]),
        ),
      ),
    );
  }
}
