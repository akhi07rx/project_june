// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

// void main() {
//   runApp(MaterialApp(
//     debugShowCheckedModeBanner: false,
//     home: Musicx(),
//   ));
// }

// class Musicx extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: const Color(0xFF000000),
//       appBar: AppBar(
//         centerTitle: true,
//         backgroundColor: const Color(0xFF000000),
//         //#000000
//         title: Text(
//           'Playlist',
//           style: GoogleFonts.ubuntu(
//             //textStyle: Theme.of(context).textTheme.headline6,
//             fontSize: 30,
//             color: const Color(0xFF6b7dff),
//             //fontWeight: FontWeight.w700,
//             // fontStyle: FontStyle.italic,
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Slivers(),
  ));
}

class Slivers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF000000),
      body: SafeArea(
          child: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: true,
            pinned: false,
            title: const Text('Sliver Appbar'),
            bottom: AppBar(
              centerTitle: true,
              backgroundColor: const Color(0xFF000000),
              elevation: 0,
              title: Container(
                width: double.infinity,
                height: 40,
                color: Colors.white,
                child: const TextField(
                  decoration: InputDecoration(
                      hintText: "Search here",
                      fillColor: Colors.black,
                      prefixIcon: Icon(Icons.search_rounded),
                      suffixIcon: Icon(Icons.camera_alt)),
                ),
              ),
            ),
          ),
          // SliverList(
          //     delegate: SliverChildBuilderDelegate(
          //         (context, index) => Container(
          //               decoration: BoxDecoration(
          //                   borderRadius: BorderRadius.circular(40)),
          //               child: Text('Data $index'),
          //               height: 50,
          //             ),
          //         childCount: 10)),
          SliverGrid(
              delegate:
                  SliverChildBuilderDelegate((context, index) => const Card(
                        child: Center(
                          child: Icon(Icons.ac_unit_rounded),
                        ),
                      )),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4))
        ],
      )),
    );
  }
}
