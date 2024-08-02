import 'package:flutter/material.dart';

class Profile_screen extends StatefulWidget {
  const Profile_screen({super.key});

  @override
  State<Profile_screen> createState() => _Profile_screenState();
}

class _Profile_screenState extends State<Profile_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 31, 28, 28),
      body: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            fit: StackFit.loose,
            children: [
              Image(image: AssetImage("Assets/images/pq5.png")),
              Positioned(
                top: 150,
                left: 100,
                child: Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 3),
                      image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage('Assets/images/p1.png')),
                      color: Colors.red,
                      shape: BoxShape.circle),
                ),
              ),
              Positioned(
                top: 310,
                left: 30,
                child: Container(
                  height: 300,
                  width: 300,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.black),
                  child: Column(
                    children: [
                      Text(
                        'Name: TALHA KHAN',
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ],
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
