import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    //theme: ThemeData(canvasColor: Colors.redAccent),
    debugShowCheckedModeBanner: false,
    home: Drawer_ex(),
  ));
}

class Drawer_ex extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        title: const Center(
          child: Text(
            "Famous Peoples",
            style: TextStyle(color: Colors.black),
          ),
        ),
        backgroundColor: Colors.transparent,
        bottomOpacity: 0.0,
        elevation: 0.0,
        // backgroundColor: const Color(0xFFFFFFFF),
      ),
      drawer: Drawer(
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Color(0xff1f005c),
                Color(0xff5b0060),
                Color(0xff870160),
                Color(0xffac255e),
                Color(0xffca485c),
                Color(0xffe16b5c),
                Color(0xfff39060),
                Color(0xffffb56b),
              ],
            ),
          ), //color: Colors.amber,
          child: ListView(
            // padding: EdgeInsets.zero,
            children: const [
              DrawerHeader(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CircleAvatar(
                      radius: 40,
                      backgroundImage: NetworkImage(
                        "https://akm-img-a-in.tosshub.com/businesstoday/images/assets/202302/0-5-sixteen_nine.jpg?size=948:533",
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Sundar Pichai\n",
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          "CEO of Alphabet INC",
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.home,
                  color: Colors.white,
                ),
                title: Text(
                  "Home",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              ListTile(
                leading:
                    Icon(Icons.space_dashboard_outlined, color: Colors.white),
                title: Text("Leads", style: TextStyle(color: Colors.white)),
              ),
              ListTile(
                leading: Icon(Icons.leak_add_outlined, color: Colors.white),
                title: Text("Clients", style: TextStyle(color: Colors.white)),
              ),
              ListTile(
                leading:
                    Icon(Icons.person_add_alt_1_sharp, color: Colors.white),
                title: Text("Projects", style: TextStyle(color: Colors.white)),
              ),
              ListTile(
                leading: Icon(Icons.subject_sharp, color: Colors.white),
                title: Text("Patients", style: TextStyle(color: Colors.white)),
              ),
              ListTile(
                leading: Icon(Icons.payments_rounded, color: Colors.white),
                title: Text("Payments", style: TextStyle(color: Colors.white)),
              ),
              ListTile(
                leading: Icon(Icons.person, color: Colors.white),
                title: Text("users", style: TextStyle(color: Colors.white)),
              ),
              ListTile(
                leading: Icon(Icons.code_off_sharp, color: Colors.white),
                title: Text("Library", style: TextStyle(color: Colors.white)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
