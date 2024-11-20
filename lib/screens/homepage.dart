import 'package:flutter/material.dart';
import 'package:music_player/colors_config.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  TextEditingController _searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      // appBar: AppBar(
      //   title: Text("Gate Raho",style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold),),
      // ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Container(
            child: ListView(
              children: [
                SizedBox(
                  height: 25,
                ),
                Row(
                  children: [
                    Text(
                      "Gate Raho",
                      style: TextStyle(
                          color: ColorsConfig.mainColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 25),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Text("Hey,",
                    style: TextStyle(fontSize: 25, color: Colors.grey)),
                Text(
                  "Good Morning",
                  style: TextStyle(fontSize: 37, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Expanded(
                        child: Container(
                      decoration: BoxDecoration(
                        color: const Color(0xFF292929), // Background color
                        borderRadius:
                            BorderRadius.circular(10), // Border radius
                      ),
                      child: TextField(
                        controller: _searchController,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                        decoration: const InputDecoration(
                          hintText: "Search Song",
                          hintStyle: TextStyle(color: Colors.grey),
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 16, vertical: 12), // Add padding
                        ),
                      ),
                    )),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: ColorsConfig.mainColor,
                          borderRadius: BorderRadius.circular(10)),
                      height: 48,
                      width: 48,
                      child: Center(child: Icon(Icons.search)),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Playlist",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    // scrollDirection: Axis.horizontal,
                    children: [1, 2, 3, 4, 5.67].map((ele) {
                      return Padding(
                        padding: const EdgeInsets.only(right: 20.0),
                        child: Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  // color: Colors.white,
                                  ),
                              height: 120,
                              width: 120,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(15),
                                child: Image.network(
                                    "https://www.listenspotify.com/uploaded_files/Thf_1632422187.jpeg"),
                              ),
                            ),
                            Container(
                                width: 120,
                                child: Text(
                                  "Playlist Name ${ele}",
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                ))
                          ],
                        ),
                      );
                    }).toList(),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Songs",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  child: Column(
                    // scrollDirection: Axis.horizontal,
                    children: [1, 2, 3, 4, 5.67].map((ele) {
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 20.0),
                        child: ListTile(
                          tileColor:ColorsConfig.secondaryColor,// Background color of the tile
                          leading: ClipRRect(
                            borderRadius: BorderRadius.circular(
                                8), // Rounded corners for the image
                            child: Image.network(
                              'https://www.listenspotify.com/uploaded_files/Thf_1632422187.jpeg', // Replace with your song's image URL
                              width: 50,
                              height: 50,
                              fit: BoxFit
                                  .cover, // Ensures the image covers the space
                            ),
                          ),
                          title: Text(
                            'Song Title', // Replace with song title
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          subtitle: Text(
                            'Artist Name', // Replace with artist's name
                            style: TextStyle(
                              color: Colors.grey[700],
                              fontSize: 14,
                            ),
                          ),
                          trailing: IconButton(
                            icon: Icon(Icons.play_arrow),
                            color: ColorsConfig.mainColor, // Play button color
                            onPressed: () {
                              // Add your play button functionality here
                            },
                          ),
                          // contentPadding: EdgeInsets.symmetric(
                          //     horizontal: 16,
                          //     vertical: 8), // Padding around tile content
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                                10), // Rounded corners for the tile
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
