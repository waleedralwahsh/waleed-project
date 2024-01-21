import 'package:flutter/material.dart';
import 'package:pro/screens/q1.dart';
import 'package:pro/screens/q2.dart';
import 'package:pro/screens/q3.dart';
import 'package:pro/screens/q4.dart';
import 'package:pro/screens/q5.dart';


void main() {
  runApp(const MaterialApp(
    home: Second(),
  ));
}

class LocationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return
      SingleChildScrollView(
        child: Column(children: [
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Poupler",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
              TextButton(
                onPressed: () {
                },
                child: const Text(
                  "see all",
                  style: TextStyle(fontSize: 15),
                ),
              ),
            ],
          ),
          Pic(),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Recommended",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
              TextButton(
                onPressed: () {
                },
                child: const Text(
                  "see all",
                  style: TextStyle(fontSize: 15),
                ),
              ),
            ],
          ),
          Pic(),
        ],),
      );
  }
}

class HotelsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        "Hotels Screen",
        style: TextStyle(fontSize: 24),
      ),
    );
  }
}

class AdventureScreen extends StatelessWidget {
  const AdventureScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        "Adventure Screen",
        style: TextStyle(fontSize: 24),
      ),
    );
  }
}
class Adventure1Screen extends StatelessWidget {
  const Adventure1Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        "Adventure Screen",
        style: TextStyle(fontSize: 24),
      ),
    );
  }
}

class FoodScreen extends StatelessWidget {
  const FoodScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        "Food Screen",
        style: TextStyle(fontSize: 24),
      ),
    );
  }
}



class Second extends StatefulWidget {
  const Second({Key? key}) : super(key: key);

  @override
  _SecondState createState() => _SecondState();
}

class _SecondState extends State<Second> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 40),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.9,
            child: const Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Explore",
                      style: TextStyle(
                          fontSize: 19, fontWeight: FontWeight.w500),
                      textAlign: TextAlign.start,
                    ),
                    Text(
                      "Aspen",
                      style: TextStyle(
                          fontSize: 30, fontWeight: FontWeight.w500),
                      textAlign: TextAlign.start,
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.9,
            child: const TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                filled: true,
                fillColor: Color.fromRGBO(240, 240, 241, 1.0),
                hintText: 'Enter text',
                border: InputBorder.none,
              ),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                TextButton(
                  onPressed: () {
                    setState(() {
                      selectedIndex = 0; // Location
                    });
                  },
                  child: const Text("Location"),
                ),
                TextButton(
                  onPressed: () {
                    setState(() {
                      selectedIndex = 1; // Hotels
                    });
                  },
                  child: const Text("Hotels"),
                ),
                TextButton(
                  onPressed: () {
                    setState(() {
                      selectedIndex = 2; // Hotels
                    });
                  },
                  child: const Text("Food"),
                ),
                TextButton(
                  onPressed: () {
                    setState(() {
                      selectedIndex = 3; // Hotels
                    });
                  },
                  child: const Text("Adventure"),
                ),
                TextButton(
                  onPressed: () {
                    setState(() {
                      selectedIndex = 4; // Hotels
                    });
                  },
                  child: const Text("Adventure"),
                ),
              ],
            ),
          ),
          Expanded(
            child: IndexedStack(
              index: selectedIndex,
              children: [
                LocationScreen(),
                HotelsScreen(),
                const FoodScreen(),
                const AdventureScreen(),
                const Adventure1Screen(),

              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Pic extends StatelessWidget {

  var bannerIma1 = [
    "assets/360_F_357557850_rVwrVHmyYQeLPJn2ldfGbhPTgqWplL1S.jpg",
    "assets/1095.webp",
    "assets/cairo-city-egypt-2020.jpg",
    "assets/download.jpg",
    "assets/roman-ruins-amman-jordan-407d5b729ba7.jpg",
  ];


  final view = const [
    q1(),
    q2(),
    q3(),
    q4(),
    q5(),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 240,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: bannerIma1.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => view[index]),
                );
              },
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.4,
                  child: Stack(
                    children: [
                      Positioned.fill(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            bannerIma1[index],
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 8,
                        left: 8,
                        right: 8,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(24),
                                color: const Color.fromRGBO(77, 86, 82, 1),
                              ),
                              padding: const EdgeInsets.only(
                                  top: 4, bottom: 4, left: 12, right: 12),
                              child: const Text(
                                "Alley Palace",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 6),
                              width: 60,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(24),
                                color: const Color.fromRGBO(77, 86, 82, 1),
                              ),
                              padding: const EdgeInsets.only(
                                  top: 1.53, bottom: 1.53, left: 3.3, right: 3.3),
                              child: const Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Icon(Icons.star, color: Colors.amberAccent),
                                  SizedBox(width: 4),
                                  Text(
                                    "4.3",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),

                    ],

                  ),
                ),

              ),
            ),
          );
        },
      ),
    );
  }
}

class m {
  Widget view;

  m({required this.view});
}
