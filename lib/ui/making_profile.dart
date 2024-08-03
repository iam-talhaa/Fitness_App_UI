// import 'package:fitness_app/ui/SplashScreen.dart';
// ignore_for_file: unused_label

import 'package:fitness_app/ui/Profile_screen.dart';
import 'package:fitness_app/ui/workout_plan.dart';
import 'package:flutter/material.dart';

class MakingProfile extends StatefulWidget {
  const MakingProfile({super.key});

  @override
  State<MakingProfile> createState() => _MakingProfileState();
}

class _MakingProfileState extends State<MakingProfile> {
  @override
  Widget build(BuildContext context) {
    // Get the screen width and height
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        height: screenHeight * 600,
        width: screenHeight * 300,
        decoration: const BoxDecoration(
          color: Color.fromRGBO(0, 0, 0, 1),
        ),
        child: Stack(children: [
          Positioned(
            top: screenHeight * .87,
            child: Container(
              height: screenHeight * .15,
              width: screenWidth * .2,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Color.fromARGB(255, 85, 81, 78),
              ),
            ),
          ),
          // Adjusted position and rotation of Dividers
          Padding(
            padding: EdgeInsets.only(
              left: screenWidth * 0.1,
            ),
            child: Transform(
              transform: Matrix4.identity()..rotateZ(45 * 3.1415927 / 60),
              child: Divider(
                thickness: 6.0,
                color: Colors.white,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: screenWidth * 0.15,
            ),
            child: Transform(
              transform: Matrix4.identity()..rotateZ(45 * 3.1415927 / 60),
              child: Divider(
                thickness: 6.0,
                color: Colors.white,
              ),
            ),
          ),
          Positioned(
            left: screenWidth * 0.5,
            top: screenHeight * 0.01,
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hello Sofia..,',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  Text(
                    'Good Morning',
                    style: TextStyle(color: Colors.white, fontSize: 10),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: screenWidth * 0.8,
            top: screenHeight * 0.01,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) => Profile_screen()));
                },
                child: CircleAvatar(
                  backgroundImage: AssetImage(
                    'Assets/images/p3.png',
                  ),
                  radius: 30, // Adjust radius as needed
                ),
              ),
            ),
          ),

          Positioned(
            bottom: screenHeight * .8,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Today Workout Plan',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
          ),
          Positioned(
            left: screenWidth * .65,
            bottom: screenHeight * .72,
            child: Text(
              'Wed 24 Jan',
              style: TextStyle(
                color: Color.fromARGB(255, 206, 187, 17),
                fontSize: 16,
              ),
            ),
          ),
          Positioned(
            bottom: screenHeight * .35,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const WorkoutPlan(),
                    ),
                  );
                },
                child: Container(
                  height: screenHeight * .50,
                  width: screenWidth * .900,
                  child: Image.asset('Assets/images/pq.png'),
                ),
              ),
            ),
          ),
          Positioned(
            left: screenWidth * .78,
            bottom: screenHeight * .44,
            child: Text(
              'See All',
              style: TextStyle(
                color: Color.fromARGB(255, 206, 187, 17),
                fontSize: 16,
              ),
            ),
          ),
          Positioned(
            bottom: screenHeight * .34,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Workout Categories',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),
              ),
            ),
          ),
          Positioned(
            bottom: screenHeight * 0.017,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Learn the Basics',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
          ),
          Positioned(
            left: screenWidth * .5,
            bottom: screenHeight * .12,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                ' Hard workout',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: screenWidth * .92,
              top: screenHeight * .98,
            ),
            child: Transform(
              transform: Matrix4.identity()..rotateZ(45 * 3.1415927 / 60),
              child: Divider(
                indent: 0,
                thickness: 6.0,
                color: Colors.white,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: screenWidth * .92,
              top: screenHeight * .93,
            ),
            child: Transform(
              transform: Matrix4.identity()..rotateZ(45 * 3.1415927 / 60),
              child: Divider(
                thickness: 6.0,
                color: Colors.white,
              ),
            ),
          ),

          Positioned(
            top: screenHeight * .6,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: screenHeight * .4,
                width: screenWidth * .4,
                child: Image.asset('Assets/images/Frame 3.png'),
              ),
            ),
          ),
          Positioned(
            left: screenWidth * .5,
            top: screenHeight * .49,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: screenHeight * .4,
                width: screenWidth * .4,
                child: Image.asset('Assets/images/Frame 4.png'),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
