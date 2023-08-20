import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: contacts_01(),
  ));
}

class contacts_01 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("CONTACTS"),
        backgroundColor: const Color(0xFF8c95fd),
      ),
      body: ListView(
        children: const [
          // Center(
          //     child: Text(
          //   "Select Your Food From the menu!!",
          //   style: GoogleFonts.pacifico(
          //       fontSize: 30, color: Colors.green, fontWeight: FontWeight.bold),
          // )),

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
              title: Text("Gojou Satoru"),
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
                    NetworkImage("https://i.imgur.com/m5B9lWT.jpg"),
              ),
            ),
          ),

          Card(
            child: ListTile(
              title: Text("Getou Suguru"),
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
                    NetworkImage("https://i.imgur.com/QaBhKZL.jpg"),
              ),
            ),
          ),

          Card(
            child: ListTile(
              title: Text("Nobara Kugisaki"),
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
                    //color: Color(0xff65bda0),
                    color: Color(0xFF4685FF),
                  ),
                ],
              ),
              leading: CircleAvatar(
                backgroundImage:
                    NetworkImage("https://i.imgur.com/mEI3PXm.jpg"),
              ),
            ),
          ),

          Card(
            child: ListTile(
              title: Text("Itadori Yuji"),
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
                    NetworkImage("https://i.imgur.com/hOkzJ05.jpg"),
              ),
            ),
          ),

          Card(
            child: ListTile(
              title: Text("Ryomen Sukuna"),
              subtitle: Text("+81 07050167829"),
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
                    NetworkImage("https://i.imgur.com/z1EXggc.jpg"),
              ),
            ),
          ),

          Card(
            child: ListTile(
              title: Text("Toji Fushiguro"),
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
                    NetworkImage("https://i.imgur.com/9bX3VFk.jpg"),
              ),
            ),
          ),

          Card(
            child: ListTile(
              title: Text("Maki Zen'in"),
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
                    NetworkImage("https://i.imgur.com/hSjBmxu.jpg"),
              ),
            ),
          ),

          Card(
            child: ListTile(
              title: Text("Iori Utahime"),
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
                    NetworkImage("https://i.imgur.com/QoudqNs.jpg"),
              ),
            ),
          ),

          Card(
            child: ListTile(
              title: Text("Chousou"),
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
                    NetworkImage("https://i.imgur.com/a2Vpzug.jpg"),
              ),
            ),
          ),

          Card(
            child: ListTile(
              title: Text("Miguel O'Hara"),
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
                    NetworkImage("https://i.imgur.com/vUtb2to.jpg"),
              ),
            ),
          ),

          Card(
            child: ListTile(
              title: Text("Gwen Stacy"),
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
                    NetworkImage("https://i.imgur.com/uw8oL4D.jpg"),
              ),
            ),
          ),

          Card(
            child: ListTile(
              title: Text("Peter Parker (EARTH - 616)"),
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
                    NetworkImage("https://i.imgur.com/jQp9c2z.jpg"),
              ),
            ),
          ),

          Card(
            child: ListTile(
              title: Text("Gwen Stacy (EARTH -21)"),
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
                    NetworkImage("https://i.imgur.com/mgNxqhs.jpg"),
              ),
            ),
          ),

          Card(
            child: ListTile(
              title: Text("MJ (EARTH - 616)"),
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
                    NetworkImage("https://i.imgur.com/Z2hIe42.jpg"),
              ),
            ),
          ),

          Card(
            child: ListTile(
              title: Text("PETER PARKER NOIR"),
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
                    NetworkImage("https://i.imgur.com/IuNA07h.jpg"),
              ),
            ),
          ),

          Card(
            child: ListTile(
              title: Text("Miguel O'Hara (Earth-928)"),
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
                    NetworkImage("https://i.imgur.com/0XpngcM.jpg"),
              ),
            ),
          ),

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
