import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomeS(),
  ));
}

class HomeS extends StatelessWidget {
  var images = [
    "https://imgur.com/WSvzowD",
    "https://charts-static.billboard.com/img/2022/09/jordan-davis-wxd-nextthingyouknow-98j-344x344.jpg",
    "https://charts-static.billboard.com/img/2023/08/grupofrontera-an1-elamordesuvida-d7l-344x344.jpg",
    "https://charts-static.billboard.com/img/2023/06/bizarrap-rsm-bzrpmusicsessionsvol55-lz4-344x344.jpg",
    "https://charts-static.billboard.com/img/2022/10/taylor-swift-824-karma-5at-344x344.jpg",
    "https://charts-static.billboard.com/img/2023/03/toosii-h46-favoritesong-tzc-180x180.jpg",
    "https://charts-static.billboard.com/img/2023/06/noah-kahan-k6d-dialdrunk-onl-344x344.jpg",
    "https://charts-static.billboard.com/img/2023/04/eslabon-armado-4py-ellabailasola-2jo-344x344.jpg",
    "https://charts-static.billboard.com/img/2023/02/luke-combs-9dm-loveyouanyway-p54-344x344.jpg",
    "https://charts-static.billboard.com/img/2022/10/justin-moore-zy0-youmewhiskey-w8x-344x344.jpg",
    "https://charts-static.billboard.com/img/2023/02/ynglvcas-zen-labebe-68j-344x344.jpg",
    "https://charts-static.billboard.com/img/2023/04/davidkushner-mih-daylight-0lt-344x344.jpg",
    "https://charts-static.billboard.com/img/2014/11/taylor-swift-824-blankspace-3be-344x344.jpg",
    "https://www.billboard.com/wp-content/uploads/2023/07/mary-j-blige-my-life-1994-billboard-1240.jpg?w=1024",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: Colors.black,
              floating: true,
              pinned: true,
              elevation: 0,
              centerTitle: true,
              title: Text(
                "Playlist",
                style: GoogleFonts.satisfy(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.pinkAccent,
                ),
              ),
              bottom: PreferredSize(
                preferredSize: const Size.fromHeight(70),
                child: Container(
                  color: Colors.black,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: TextField(
                    cursorColor: Colors.white10,
                    style: const TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      hintText: "Search...",
                      hintStyle: const TextStyle(color: Colors.pinkAccent),
                      suffixIcon: const Icon(
                        Icons.search,
                        color: Colors.pinkAccent,
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: const BorderSide(color: Colors.white10)),
                    ),
                  ),
                ),
              ),
            ),
            SliverGrid(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 15,
                mainAxisSpacing: 15,
              ),
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                          image: NetworkImage(images[index]),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  );
                },
                childCount: images.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
