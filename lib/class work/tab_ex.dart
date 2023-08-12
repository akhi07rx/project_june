import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MaterialApp(
    home: TabEx(),
  ));
}

class TabEx extends StatelessWidget {
  const TabEx({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Whatsapp"),
          actions: [
            const Icon(Icons.search),
            const Icon(Icons.camera_alt),
            PopupMenuButton(itemBuilder: (context) {
              return [const PopupMenuItem(child: Text("Settings"))];
            })
          ],
          bottom: const TabBar(tabs: [
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
