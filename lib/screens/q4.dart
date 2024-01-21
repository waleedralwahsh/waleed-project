import 'package:flutter/material.dart';

class q4 extends StatefulWidget {
  const q4({super.key});

  @override
  State<q4> createState() => _q4State();
}

class _q4State extends State<q4> {
  Color iconColor = Colors.black;
  IconData icons = Icons.favorite_border;
  String currentText = "Aspen is as close as one can get to a storybook alpine town in America. The choose-your-own-adventure possibilities—skiing, hiking, dining shopping and ....";
  String test = "Aspen is as close as one can get to a storybook alpine town in America. The choose-your-own-adventure possibilities—skiing, hiking, dining shopping and ....";
  String test1 = "discovering hidden gems in art galleries, Aspen embraces every visitor with a blend of elegance and adventure. The town's rich history and modern amenities cater to every taste. A stroll through its streets leads to an array of cultural events, from live music performances to art festivals. The town's spirit is infectious, captivating all who venture there. Whether it's the snow-kissed mountains or the warm, inviting atmosphere, Aspen remains an enchanting escape, inviting you to script your own extraordinary tale amidst its scenic beauty and endless possibilities.";

  void toggleText() {
    setState(() {
      currentText =
      currentText == test ? test + test1 : test; // Toggles between Test and Test+Test1
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.45,
                  child: Stack(
                    children: [
                      Positioned.fill(
                        child: Image.asset(
                          "assets/1095.webp",
                          fit: BoxFit.cover,
                        ),
                      ),
                      Positioned(
                        top: 20,
                        left: 8,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              color: Colors.white,
                            ),
                            padding: const EdgeInsets.all(10),
                            child: const Icon(Icons.arrow_back),
                          ),
                        ),
                      ),
                      Positioned(
                        right: 15,
                        bottom: -9,
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              iconColor = (iconColor == Colors.black)
                                  ? Colors.red
                                  : Colors.black;
                              icons = (icons == Icons.favorite_border)
                                  ? Icons.favorite
                                  : Icons.favorite_border;
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(84),
                              color: Colors.white,
                            ),
                            padding: const EdgeInsets.all(5),
                            child: Icon(
                              icons,
                              color: iconColor,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Coeurdes Alpes",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  InkWell(
                    onTap: (){},
                    child: const Text(
                      "Show map",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Colors.blue,
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 5),
              const Row(
                children: [
                  Icon(Icons.star, color: Colors.amber, size: 15),
                  Text(
                    "4.5 (355 Reviews)",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                  )
                ],
              ),
              GestureDetector(
                onTap: toggleText,
                child: Text(
                  currentText,
                  style: const TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                "Facilities",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 10),
              buildFacilitiesSection(),
              const SizedBox(height: 30),
              buildPriceSection(),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildFacilitiesSection() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          buildFacilityTile("1 Heater" , Icons.wifi),
          const SizedBox(width: 10),
          buildFacilityTile("Dinner" , Icons.food_bank),
          const SizedBox(
            width: 10,
          ),
          buildFacilityTile("1 Tub" , Icons.delivery_dining),
          const SizedBox(width: 10),
          buildFacilityTile("Pool" , Icons.pool),

        ],
      ),
    );
  }

  Widget buildFacilityTile(String text  , IconData icn) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: MediaQuery.of(context).size.width * 0.22,
        height: 77,
        decoration: BoxDecoration(
          color: const Color.fromRGBO(23, 111, 242, 0.09),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icn, color: const Color.fromRGBO(184, 184, 184, 1)),
            Text(
              text,
              style: const TextStyle(color: Color.fromRGBO(184, 184, 184, 1)),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildPriceSection() {
    return Row(
      children: [
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Price",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 12,
                color: Color.fromRGBO(35, 35, 35, 1),
              ),
            ),
            Text(
              "\$199",
              style: TextStyle(
                color: Color.fromRGBO(45, 215, 164, 1),
                fontSize: 24,
                fontWeight: FontWeight.w700,
              ),
            )
          ],
        ),
        SizedBox(width: MediaQuery.of(context).size.width * 0.122),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.66,
          height: 56,
          child: ElevatedButton(
            onPressed: () {
              // Handle book now button tap
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.arrow_back_sharp),
                SizedBox(width: MediaQuery.of(context).size.width * 0.04),
                const Text(
                  "Book Now",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                ),
              ],
            ),
            style: ButtonStyle(
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: q4(),
  ));
}
