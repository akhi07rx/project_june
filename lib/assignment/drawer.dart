import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    //theme: new ThemeData(canvasColor: Colors.redAccent),
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
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              // stops: [
              //   0.1,
              //   0.4,
              //   0.6,
              //   0.3,
              //   0.1,
              //   0.4,
              //   0.2,
              //   0.9,
              // ],
              colors: [
                Color(0xff1f005c),
                Color(0xff5b0060),
                Color(0xff870160),
                Color(0xffac255e),
                Color(0xffca485c),
                Color(0xffe16b5c),
                Color(0xfff39060),
                Color(0xffffb56b),

                // Colors.yellow,
                // Colors.red,
                // Colors.indigo,
                // Colors.teal,
              ],
            ),
          ), //color: Colors.amber,
          child: ListView(
            children: const [
              UserAccountsDrawerHeader(
                decoration: BoxDecoration(
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

                    // Colors.yellow,
                    // Colors.red,
                    // Colors.indigo,
                    // Colors.teal,
                  ],
                )),
                // decoration: BoxDecoration(
                //     image: DecorationImage(
                //         fit: BoxFit.cover,
                //         image:
                //             NetworkImage("https://i.imgur.com/1CzkZqK.png"))),
                accountName: Text("Sundar Pichai"),
                accountEmail: Text("sundarpichai@gmail.com"),
                currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://akm-img-a-in.tosshub.com/businesstoday/images/assets/202302/0-5-sixteen_nine.jpg?size=948:533")),
                // otherAccountsPictures: [
                //   CircleAvatar(
                //     backgroundImage:
                //         NetworkImage("https://i.imgur.com/QaBhKZL.jpg"),
                //   ),
                //   CircleAvatar(
                //     backgroundImage:
                //         NetworkImage("https://i.imgur.com/9bX3VFk.jpg"),
                //   )
                // ],
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
                leading: Icon(
                  Icons.space_dashboard_outlined,
                  color: Colors.white,
                ),
                title: Text(
                  "Leads",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.leak_add_outlined,
                  color: Colors.white,
                ),
                title: Text(
                  "Clients",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.person_add_alt_1_sharp,
                  color: Colors.white,
                ),
                title: Text(
                  "Projects",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.subject_sharp,
                  color: Colors.white,
                ),
                title: Text(
                  "Patients",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.payments_rounded,
                  color: Colors.white,
                ),
                title: Text(
                  "Payments",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.person,
                  color: Colors.white,
                ),
                title: Text(
                  "users",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.code_off_sharp,
                  color: Colors.white,
                ),
                title: Text(
                  "Library",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}




//               ListTile(
//                 leading: Icon(Icons.person),
//                 title: Text('Users'),
//               ),
//               ListTile(
//                 leading: Icon(Icons.code_off_sharp),
//                 title: Text('Library'),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }