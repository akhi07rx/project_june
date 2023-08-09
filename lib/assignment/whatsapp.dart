import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: ListView(),
  ));
}

class ListView extends StatelessWidget {
  var name = [
    'Gojo',
    'Geto',
    'Nobara',
    'Maki',
    'Yuuji',
    'Sukuna',
    'Toji',
    'Utahime',
    'Chousou',
    'Esou'
  ];
  var image = [
    'assets/pfp/gojo.png',
    'assets/pfp/geto.png',
    'assets/pfp/nobara.png',
    'assets/pfp/maki.png',
    'assets/pfp/yuuji.png',
    'assets/pfp/sukuna.png',
    'assets/pfp/toji.png',
    'assets/pfp/utahime.png',
    'assets/pfp/chousou.png',
    'assets/pfp/esou.png'
  ];
  var time = [
    '1:10 pm',
    '3:16 pm',
    '1:56 pm',
    '8:10 am',
    '6:59 am',
    '7:10 pm',
    '9:10 am',
    '2:30 pm',
    '4:45 pm',
    '5:21 am',
  ];
  var msg = [
    'sticker',
    'long time no see',
    'suii',
    'hei',
    'mone',
    'sugalle',
    'how is openheimer',
    'are u bzy',
    'when is your next trip to usa',
    'mere desh vaasiyom'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.teal,
          actions: [
            const Icon(Icons.camera_alt_outlined),
            const SizedBox(
              width: 20,
            ),
            const Icon(Icons.search),
            const SizedBox(
              width: 20,
            ),
            PopupMenuButton(itemBuilder: (context) {
              return [
                const PopupMenuItem(child: Text('New Group')),
                const PopupMenuItem(child: Text('New Broadcast')),
                const PopupMenuItem(child: Text('Linked devices')),
                const PopupMenuItem(child: Text('Stared messages')),
                const PopupMenuItem(child: Text('Payment')),
                const PopupMenuItem(child: Text('Settings'))
              ];
            })
          ],
          title: const Text('WhatsApp')),
      body: ListView(
        children: List.generate(
            10,
            (index) => Card(
                  child: ListTile(
                    title: Text(name[index]),
                    subtitle: Text(msg[index]),
                    trailing: Wrap(direction: Axis.vertical, children: [
                      Text(time[index]),
                      const SizedBox(
                        height: 10,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 30),
                        child: CircleAvatar(
                            minRadius: 2,
                            maxRadius: 10,
                            backgroundColor: Colors.teal,
                            child: Text('2')),
                      )
                    ]),
                    leading: CircleAvatar(
                      backgroundImage: AssetImage(image[index]),
                    ),
                  ),
                )),
      ),
    );
  }
}
