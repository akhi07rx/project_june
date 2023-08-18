import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeS extends StatefulWidget {
  const HomeS({Key? key}) : super(key: key);

  @override
  State<HomeS> createState() => _HomeSState();
}

class _HomeSState extends State<HomeS> {
  var images = [

    "https://www.billboard.com/wp-content/uploads/2022/06/beyonce-Lemonade-album-art-billboard-1240.jpg?w=1024",
    "https://www.billboard.com/wp-content/uploads/media/ariana-grande-sweetner-album-art-2018-billboard-1240.jpg?w=1024",
    "https://www.billboard.com/wp-content/uploads/2023/07/Pistol-Annies-Interstate-Gospel-2018-billboard-1240.jpg?w=1024",
    "https://www.billboard.com/wp-content/uploads/2023/07/kate-bush-the-dreaming-cover-1982-billboard-1240.jpg?w=1024",
    "https://www.billboard.com/wp-content/uploads/2023/07/lil-kim-hard-core-1996-billboard-1240.jpg?w=1037",
    "https://www.billboard.com/wp-content/uploads/2023/07/fela-kuti-no-agreement-1977-billboard-1240.jpg?w=1024",
    "https://www.billboard.com/wp-content/uploads/2023/07/roberta-flack-first-take-cover-1969-billboard-1240.jpg?w=1024",
    "https://www.billboard.com/wp-content/uploads/2023/07/carole-king-tapestry-1971-billboard-1240.jpg?w=1240",
    "https://www.billboard.com/wp-content/uploads/media/Lizzo-Cuz-I-Love-You-album-art-2019-billboard-1240_0.jpg?w=1024",
    "https://www.billboard.com/wp-content/uploads/media/tyler-the-creator-igor-album-art-2019-billboard-embed.jpg?w=1024",
    "https://www.billboard.com/wp-content/uploads/2023/07/RM-Indigo-album-art-billboard-1240.jpg?w=1024",
    "https://www.billboard.com/wp-content/uploads/2023/07/prince-dirty-mind-1980-billboard-1240.jpg?w=1024",
    "https://www.billboard.com/wp-content/uploads/2023/07/emmylou-harris-blue-kentucky-girl-1987-billboard-1240.jpg?w=1030",
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
                preferredSize: Size.fromHeight(70),
                child: Container(
                  color: Colors.black,
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: TextField(
                    cursorColor: Colors.white10,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      hintText: "Search...",
                      hintStyle: TextStyle(color: Colors.pinkAccent),
                      suffixIcon: Icon(
                        Icons.search,
                        color: Colors.pinkAccent,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide:BorderSide(color: Colors.white10)
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SliverGrid(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
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
