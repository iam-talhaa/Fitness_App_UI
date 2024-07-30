import 'package:fitness_app/ui/making_profile.dart';
import 'package:fitness_app/ui/start_workout.dart';
import 'package:flutter/material.dart';

class WorkoutPlan extends StatefulWidget {
  const WorkoutPlan({super.key});

  @override
  State<WorkoutPlan> createState() => _WorkoutPlanState();
}

class _WorkoutPlanState extends State<WorkoutPlan> {
  @override
  Widget build(BuildContext context) {
    final HeightofScreen = MediaQuery.of(context).size.height;
    final WidthofScreen = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
          height: HeightofScreen * 300,
          width: WidthofScreen * 1200,
          color: Colors.black,
          child: Stack(children: [
            Positioned(
              top: HeightofScreen * .82,
              right: WidthofScreen * .5,
              child: Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(550),
                  color: Color.fromARGB(255, 29, 28, 28),
                ),
              ),
            ),
            Positioned(
              top: HeightofScreen * .87,
              child: Container(
                height: HeightofScreen * .15,
                width: WidthofScreen * .2,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Color.fromARGB(255, 85, 81, 78),
                ),
              ),
            ),
            Positioned(
              top: HeightofScreen * .87,
              left: WidthofScreen * .37,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const StartWorkout()),
                  );
                },
                child: Container(
                  height: HeightofScreen * .10,
                  width: WidthofScreen * .27,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(29),
                    color: Color.fromARGB(255, 85, 81, 78),
                  ),
                  child: Center(
                    child: Text(
                      'Start Workout',
                      style: TextStyle(fontSize: 17, color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: HeightofScreen * .65,
              left: WidthofScreen * .37,
              child: Container(
                height: HeightofScreen * .03,
                width: WidthofScreen * .15,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(29),
                  color: Color.fromARGB(255, 175, 6, 139),
                ),
                child: Center(
                  child: Text(
                    '350 cal',
                    style: TextStyle(
                        fontSize: 13,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            Positioned(
              top: HeightofScreen * .65,
              left: WidthofScreen * .14,
              child: Container(
                height: HeightofScreen * .03,
                width: WidthofScreen * .15,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(29),
                  color: Color.fromARGB(255, 175, 6, 139),
                ),
                child: Center(
                  child: Text(
                    '60 min',
                    style: TextStyle(
                        fontSize: 13,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: HeightofScreen * .50,
                width: WidthofScreen * 1000,
                child: Image.asset('Assets/images/pq5.png'),
              ),
            ),
            Positioned(
              bottom: HeightofScreen * .46,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Day  01-Warm  Up',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Positioned(
              bottom: HeightofScreen * .34,
              left: WidthofScreen * .13,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Warming up promotes the flow of synovial \n fluid around joints,which can improve \n lubrication and freedom of movement',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 13,
                  ),
                ),
              ),
            ),
            Positioned(
              top: HeightofScreen * .67,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: Row(
                    children: [
                      Container(
                        height: HeightofScreen * .15,
                        width: WidthofScreen * .9,
                        color: Color.fromARGB(255, 85, 81, 78),
                        child: Container(
                          height: HeightofScreen * .20,
                          width: WidthofScreen * .20,
                          child: Align(
                              alignment: Alignment(-1, -1),
                              child: Image.asset('Assets/images/pq4.png')),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: HeightofScreen * .18,
              left: WidthofScreen * .25,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Simple Warm-Up \n Exercise',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: HeightofScreen * .17,
              left: WidthofScreen * .29,
              child: Text(
                '30min',
                style: TextStyle(
                  color: Color.fromARGB(255, 206, 187, 17),
                  fontSize: 16,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: WidthofScreen * .92,
                top: HeightofScreen * .98,
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
                left: WidthofScreen * .92,
                top: HeightofScreen * .93,
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
              left: WidthofScreen * .89,
              bottom: HeightofScreen * .89,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MakingProfile()),
                  );
                },
                child: Container(
                  color: Colors.black,
                  child: Icon(
                    Icons.home_outlined,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Positioned(
              left: WidthofScreen * .08,
              bottom: HeightofScreen * .89,
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  color: Colors.black,
                  child: Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Positioned(
              left: WidthofScreen * .7,
              bottom: HeightofScreen * .19,
              child: Transform.rotate(
                angle: 90 * 3.4 / 65,
                child: Container(
                  color: Colors.black,
                  child: Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  ),
                ),
              ),
            )
          ])),
    );
  }
}
