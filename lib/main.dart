// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
          backgroundColor: Color.fromARGB(255, 251, 251, 251),
          body: Column(
            children: [
              Header(),
              Expanded(
                child: Container(
                  width: double.infinity,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        SearchBox(),
                        Divider(),
                        TopLocations(),
                        Divider(),
                        NearLocations(),
                        Divider(),
                        Suggestions(),
                        Divider(),
                        TopRated()
                      ],
                    ),
                  ),
                ),
              ),
              BottomMenu()
            ],
          )),
    );
  }

  Container TopRated() => Container(
        child: Column(
          children: [
            TittleItem("Top Rated", "View all"),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  LocationItem("assets/images/post6.jpg", "Ronaldo",
                      "Siuuuuuuuu", "₺00.00"),
                  LocationItem(
                      "assets/images/q7.jpg", "Quresmaa", "Skils", "₺00.00"),
                  LocationItem(
                    "assets/images/post4.jpg",
                    "abu",
                    "pahabiçilemez",
                    "₺00.00",
                  ),
                  LocationItem("assets/images/bjk.jpg", "Sampiyon Bjk",
                      "7 km from you", "₺14.00"),
                  LocationItem("assets/images/post6.jpg", "Ronaldo",
                      "Siuuuuuuuu", "₺00.00"),
                  LocationItem(
                    "assets/images/post4.jpg",
                    "abu",
                    "pahabiçilemez",
                    "₺00.00",
                  ),
                ],
              ),
            )
          ],
        ),
      );

  Container Suggestions() => Container(
        child: Column(
          children: [
            TittleItem("Suggestions", "View all"),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  LocationItem("assets/images/post6.jpg", "Ronaldo",
                      "Siuuuuuuuu", "₺00.00"),
                  LocationItem(
                      "assets/images/q7.jpg", "Quresmaa", "Skils", "₺00.00"),
                  LocationItem(
                    "assets/images/post4.jpg",
                    "abu",
                    "pahabiçilemez",
                    "₺00.00",
                  ),
                  LocationItem("assets/images/bjk.jpg", "Sampiyon Bjk",
                      "7 km from you", "₺14.00"),
                  LocationItem("assets/images/post6.jpg", "Ronaldo",
                      "Siuuuuuuuu", "₺00.00"),
                  LocationItem(
                    "assets/images/post4.jpg",
                    "abu",
                    "pahabiçilemez",
                    "₺00.00",
                  ),
                ],
              ),
            )
          ],
        ),
      );

  Widget NearLocations() => Container(
        child: Column(
          children: [
            TittleItem("Near you", "View all"),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  LocationItem("assets/images/bjk.jpg", "Sampiyon Bjk",
                      "7 km from you", "₺14.00"),
                  LocationItem(
                    "assets/images/post4.jpg",
                    "abu",
                    "pahabiçilemez",
                    "₺00.00",
                  ),
                  LocationItem("assets/images/post6.jpg", "Ronaldo",
                      "Siuuuuuuuu", "₺00.00"),
                  LocationItem(
                      "assets/images/q7.jpg", "Quresmaa", "Skils", "₺00.00"),
                ],
              ),
            )
          ],
        ),
      );

  Widget LocationItem(
          String photo, String title, String description, String fiyat) =>
      Container(
        width: 160,
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Color.fromARGB(12, 158, 158, 158)),
          borderRadius: BorderRadius.circular(25),
        ),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(width: 200, photo),
            ),
            SizedBox(
              height: 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                        fontSize: 12,
                        color: const Color.fromARGB(255, 56, 56, 56),
                      ),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.location_on,
                          color: Colors.grey,
                          size: 9,
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Text(
                          description,
                          style: TextStyle(
                            fontSize: 9,
                            color: const Color.fromARGB(255, 56, 56, 56),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Container(
                    padding: EdgeInsets.all(6),
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(236, 125, 87, 1),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Text(
                      fiyat,
                      style: TextStyle(fontSize: 10, color: Colors.white),
                    ))
              ],
            ),
          ],
        ),
      );
  Widget TopLocations() => Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TittleItem("Top Locations ", "View all"),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  StoryItem("assets/images/sirac.jpg", "Sirac"),
                  StoryItem("assets/images/abubakar.jpg", "abubakar"),
                  StoryItem("assets/images/ronaldo.jpg", "ronaldo"),
                  StoryItem("assets/images/profil2.jpg", "kedicik"),
                  StoryItem("assets/images/profil3.jpg", "Massakabaran"),
                  StoryItem("assets/images/profil4.jpg", "isot"),
                  StoryItem("assets/images/sirac.jpg", "Sirac"),
                  StoryItem("assets/images/abubakar.jpg", "abubakar"),
                  StoryItem("assets/images/ronaldo.jpg", "ronaldo"),
                  StoryItem("assets/images/profil2.jpg", "kedicik"),
                  StoryItem("assets/images/profil3.jpg", "Massakabaran"),
                  StoryItem("assets/images/profil4.jpg", "isot"),
                ],
              ),
            )
          ],
        ),
      );

  Widget SearchBox() => Container(
        height: 50,
        margin: EdgeInsets.all(12),
        padding: EdgeInsets.symmetric(horizontal: 14.0),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Color.fromARGB(12, 158, 158, 158)),
          borderRadius: BorderRadius.circular(25),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(
                  Icons.location_on,
                  size: 17,
                  color: Colors.grey,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Istabul , Turkey",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            Icon(
              Icons.tune,
              size: 20,
              color: Color.fromRGBO(236, 125, 87, 1),
            ),
          ],
        ),
      );

  Widget StoryItem(String photo, String name) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(3),
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
                  Color.fromARGB(255, 241, 156, 101),
                  Color.fromARGB(255, 233, 92, 70),
                ]),
                color: Colors.orange,
                shape: BoxShape.circle),
            child: Container(
              padding: const EdgeInsets.all(3.0),
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
              child: CircleAvatar(
                backgroundImage: AssetImage(photo),
                radius: 32,
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            name,
            style: TextStyle(
              color: Color.fromARGB(255, 153, 153, 153),
              fontSize: 13,
            ),
          ),
        ],
      ),
    );
  }

  Padding TittleItem(String tittle, String link) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            tittle,
            style: TextStyle(
              color: Color.fromARGB(255, 56, 56, 56),
              fontSize: 16,
            ),
          ),
          Text(
            link,
            style: TextStyle(
              color: Color.fromARGB(255, 153, 153, 153),
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }

  Widget Header() => Container(
        padding: const EdgeInsets.all(8.0),
        width: double.infinity,
        height: 100,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Welcome , Talha",
                  style: TextStyle(
                    color: Color.fromARGB(255, 153, 153, 153),
                    fontSize: 13,
                  ),
                ),
                Text(
                  "Expolore Istanbul City",
                  style: TextStyle(
                    color: Color.fromARGB(255, 56, 56, 56),
                    fontSize: 17,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white, shape: BoxShape.circle),
                  padding: const EdgeInsets.all(8.0),
                  margin: const EdgeInsets.all(6.0),
                  child: Icon(Icons.sunny,
                      color: Color.fromRGBO(236, 125, 87, 1), size: 18),
                ),
                SizedBox(
                  width: 3,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white, shape: BoxShape.circle),
                  padding: const EdgeInsets.all(8.0),
                  margin: const EdgeInsets.all(6.0),
                  child: Icon(Icons.notifications, size: 18),
                ),
              ],
            ),
          ],
        ),
      );
}

Widget BottomMenu() => Container(
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color.fromRGBO(255, 243, 243, 243),
          width: 1,
        ),
      ),
      height: 70,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          bottommenuitem("Home", Icons.home, true),
          bottommenuitem("Moments", Icons.groups, false),
          HighlightedItem("Book", Icons.maps_ugc),
          bottommenuitem("Chat", Icons.forum, false),
          bottommenuitem("Profile", Icons.person, false),
        ],
      ),
    );

Widget bottommenuitem(String title, IconData icon, bool active) {
  var renk = Color.fromRGBO(174, 174, 178, 1);

  if (active) {
    renk = Color.fromRGBO(43, 43, 43, 1);
  }
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: [
        Icon(
          icon,
          size: 25,
          color: renk,
        ),
        SizedBox(
          height: 3,
        ),
        Text(
          title,
          style: TextStyle(
            fontSize: 10,
            color: renk,
          ),
        ),
      ],
    ),
  );
}

Widget HighlightedItem(String title, IconData icon) {
  var renk = Color.fromRGBO(236, 125, 87, 1);

  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: [
        Icon(
          icon,
          size: 33,
          color: renk,
        ),
        SizedBox(
          height: 3,
        ),
        Text(
          title,
          style: TextStyle(
            fontSize: 10,
            color: renk,
          ),
        ),
      ],
    ),
  );
}
