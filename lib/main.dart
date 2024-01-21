import 'package:flutter/material.dart';
import 'package:pro/navbar.dart';
import 'package:pro/second_screen.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyPro(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyPro extends StatefulWidget {
  const MyPro({super.key});

  @override
  State<MyPro> createState() => _MyProState();
}

class _MyProState extends State<MyPro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/1095.webp'),
            fit: BoxFit.cover,
          ),
        ),
        child:Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height*0.05,
              ),
              Image.asset(
                'assets/Aspenaspen_logo_text_img.png',
                width: MediaQuery.of(context).size.width*0.85,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height*0.4,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Plan your",
                    style: TextStyle(fontSize: 24 ,fontWeight: FontWeight.w400 , color: Colors.white),
                    textAlign: TextAlign.start,
                  ),
                  const Text(
                    "Luxurious",
                    textAlign: TextAlign.start,
                    style: TextStyle(color: Colors.white , fontSize: 40 ,fontWeight: FontWeight.w500 ),
                  ),
                  const Text(
                    "Vacation",
                    textAlign: TextAlign.start,
                    style: TextStyle(color: Colors.white , fontSize: 40 ,fontWeight: FontWeight.w500 ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width*0.9,
                    height: 52,
                    child: ElevatedButton(onPressed: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (_)=>const Second1()));
                    },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromRGBO(23, 111, 242, 1),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16), // Adjust the radius as needed
                        ),

                    ),
                      child: const Text("Explore" , style: TextStyle(fontSize: 16)) ,
                  ),
                  )],
              )
            ],
          ),
        ),
      ),
    );
  }
}

