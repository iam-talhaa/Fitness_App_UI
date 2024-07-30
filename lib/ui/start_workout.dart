import 'package:fitness_app/ui/making_profile.dart';
import 'package:flutter/material.dart';

class StartWorkout extends StatefulWidget {
  const StartWorkout({super.key});

  @override
  State<StartWorkout> createState() => _StartWorkoutState();
}

class _StartWorkoutState extends State<StartWorkout> {
  @override
  Widget build(BuildContext context) {
    final Shight = MediaQuery.of(context).size.height;
    final Swidth = MediaQuery.of(context).size.height;

    return Container(
      height: Shight * .99,
      width: Swidth * .99,
      color: Colors.black,
      child: Stack(
        children: [
          Positioned(
            left: Swidth * .009,
            bottom: Shight * .9,
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                color: Colors.brown,
                child: Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: Swidth * 0.3,
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
              left: Swidth * 0.25,
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
            right: Swidth * .6,
            top: Shight * .79,
            child: Container(
              height: Shight * .2,
              width: Swidth * .2,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(550),
                color: Color.fromARGB(255, 29, 28, 28),
              ),
            ),
          ),
          Positioned(
            top: Shight * .82,
            right: Swidth * .5,
            child: Container(
              height: Shight * .2,
              width: Swidth * .2,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(550),
                color: Color.fromARGB(255, 29, 28, 28),
              ),
            ),
          ),
          Positioned(
            top: Shight * .87,
            child: Container(
              height: Shight * .2,
              width: Swidth * .2,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(550),
                color: Color.fromARGB(255, 85, 81, 78),
              ),
            ),
          ),
          Positioned(
            top: Shight * .0003,
            right: Swidth * .00087,
            child: Container(
              height: Shight * .3,
              width: Swidth * .3,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(550),
                color: Color.fromARGB(255, 29, 28, 28),
              ),
            ),
          ),
          Positioned(
            top: Shight * .0003,
            right: Swidth * .00087,
            child: Container(
              height: Shight * .2,
              width: Swidth * .2,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(550),
                color: Color.fromARGB(255, 56, 54, 54),
              ),
            ),
          ),
          Positioned(
            left: Swidth * .7,
            bottom: Shight * .88,
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MakingProfile()),
                );
              },
              child: Container(
                color: Colors.brown,
                child: Icon(
                  Icons.home_outlined,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Positioned(
            top: Shight * .87,
            left: Swidth * .3,
            child: Container(
              height: Shight * .04,
              width: Swidth * .3,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Color.fromARGB(255, 85, 81, 78),
              ),
              child: Center(
                child: Text(
                  'Skip',
                  style: TextStyle(fontSize: 17, color: Colors.white),
                ),
              ),
            ),
          ),
          Positioned(
            top: Shight * .73,
            left: Swidth * .3,
            child: Container(
              height: Shight * .04,
              width: Swidth * .3,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Color.fromARGB(255, 85, 81, 78),
              ),
              child: Center(
                child: Text(
                  'Take Appointment',
                  style: TextStyle(fontSize: 17, color: Colors.white),
                ),
              ),
            ),
          ),
          Positioned(
            top: Shight * .8,
            left: Swidth * .3,
            child: Container(
              height: Shight * .04,
              width: Swidth * .3,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Color.fromARGB(255, 85, 81, 78),
              ),
              child: Center(
                child: Text(
                  'Cancel',
                  style: TextStyle(fontSize: 17, color: Colors.white),
                ),
              ),
            ),
          ),
          Positioned(
            top: Shight * .52,
            right: Swidth * .56,
            child: Container(
              height: Shight * .2,
              width: Swidth * .2, //Assets/images/pq2.png
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(550),
                color: Color.fromARGB(255, 160, 10, 10),
              ),
              child: CircleAvatar(
                backgroundImage: AssetImage('Assets/images/pq4.png'),
              ),
            ),
          ),
          Positioned(
            top: Shight * .21,
            right: Swidth * .47,
            child: Container(
              height: Shight * .3,
              width: Swidth * .3,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(550),
                color: Color.fromARGB(255, 160, 10, 10),
              ),
              child: CircleAvatar(
                backgroundImage: AssetImage('Assets/images/Frame 3.png'),
              ),
            ),
          ),
          Positioned(
            top: Shight * .4,
            right: Swidth * .1,
            child: Container(
              height: Shight * .3,
              width: Swidth * .3,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(550),
                color: Color.fromARGB(255, 160, 10, 10),
              ),
              child: CircleAvatar(
                backgroundImage: AssetImage('Assets/images/p2b.png'),
              ),
            ),
          ),
          Positioned(
            top: Shight * .2,
            right: Swidth * .2,
            child: Container(
              height: Shight * .2,
              width: Swidth * .2,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5500005),
              ),
              child: CircleAvatar(
                backgroundImage: AssetImage('Assets/images/p1.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
