import 'package:fitness_app/ui/Days_warmUp.dart';
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

    return Scaffold(
      body: Container(
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
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(20)),
                  child: Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Positioned(
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.only(right: 100, top: 110),
                  child: Transform(
                    transform: Matrix4.identity()
                      ..rotateZ(-45 * 3.1415927 / 180),
                    child: Divider(
                      thickness: 6.0,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.only(right: 100, top: 130),
                  child: Transform(
                    transform: Matrix4.identity()
                      ..rotateZ(-45 * 3.1415927 / 180),
                    child: Divider(
                      thickness: 6.0,
                      color: Colors.grey,
                    ),
                  ),
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
              top: Shight * .9,
              left: -40,
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
                height: Shight * 0.16,
                width: Swidth * .16,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(550),
                  color: Color.fromARGB(255, 56, 54, 54),
                ),
              ),
            ),
            Positioned(
                top: 200,
                child: Image(image: AssetImage('Assets/images/p10.png'))),
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
              top: 480,
              left: MediaQuery.of(context).size.width * 0.2,
              child: Column(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (BuildContext context) => Days_warmUp()));
                    },
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
                  SizedBox(
                    height: 15,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (BuildContext context) => Days_warmUp()));
                    },
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
                  SizedBox(
                    height: 15,
                  ),
                  Center(
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (BuildContext context) => Days_warmUp()));
                      },
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
                  ),
                ],
              ),
            ),
            Positioned(
              top: 300,
              right: 40,
              child: Container(
                height: Shight * .2,
                width: Swidth * .2,
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
              top: 90,
              right: 60,
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
      ),
    );
  }
}
