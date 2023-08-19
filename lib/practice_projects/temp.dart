import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isDark = false;

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = ThemeData(
        useMaterial3: true,
        brightness: isDark ? Brightness.dark : Brightness.light);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MusicX(
        onBrightnessChange: (bool value) {
          setState(() {
            isDark = value;
          });
        },
      ),
      theme: themeData,
    );
  }
}

class MusicX extends StatelessWidget {
  final ValueChanged<bool> onBrightnessChange;

  const MusicX({Key? key, required this.onBrightnessChange}) : super(key: key);

  final images = [
    "https://i.imgur.com/Tyn93iK.jpg",
    "https://i.imgur.com/MpurR5l.jpg",
    "https://i.imgur.com/aSRBBTu.jpg",
    "https://i.imgur.com/eOAL4zU.jpg",
    "https://i.imgur.com/AoNomEG.jpg",
    "https://i.imgur.com/e1zb5xk.jpg",
    "https://i.imgur.com/JyiYl9s.jpg",
    "https://i.imgur.com/W8sKhiG.jpg",
    "https://i.imgur.com/W8sKhiG.jpg",
    "https://i.imgur.com/SfTzgWU.jpg",
    "https://i.imgur.com/znJrg1f.jpg",
    "https://i.imgur.com/Xtp6EY3.jpg",
    "https://i.imgur.com/xyBsHdH.jpg",
    "https://i.imgur.com/lEibvsA.jpg",
    "https://i.imgur.com/SfbNPmx.jpg",
    "https://i.imgur.com/7EUEeCI.jpg",
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
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueAccent,
                ),
              ),
              bottom: PreferredSize(
                preferredSize: const Size.fromHeight(70),
                child: Container(
                  color: Colors.black,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: SearchAnchor(
                    builder:
                        (BuildContext context, SearchController controller) {
                      return SearchBar(
                        controller: controller,
                        padding: const MaterialStatePropertyAll<EdgeInsets>(
                            EdgeInsets.symmetric(horizontal: 16.0)),
                        onTap: () {
                          controller.openView();
                        },
                        onChanged: (_) {
                          controller.openView();
                        },
                        leading: const Icon(Icons.search),
                        trailing: <Widget>[
                          Tooltip(
                            message: 'Change brightness mode',
                            child: IconButton(
                              onPressed: () {
                                onBrightnessChange(
                                    !Theme.of(context).brightness.isDark);
                              },
                              icon: const Icon(Icons.wb_sunny_outlined),
                              selectedIcon:
                                  const Icon(Icons.brightness_2_outlined),
                            ),
                          )
                        ],
                      );
                    },
                    suggestionsBuilder:
                        (BuildContext context, SearchController controller) {
                      return List<ListTile>.generate(5, (int index) {
                        final String item = 'item $index';
                        return ListTile(
                          title: Text(item),
                          onTap: () {
                            controller.closeView(item);
                          },
                        );
                      });
                    },
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
