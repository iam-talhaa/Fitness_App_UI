import 'package:fitness_app/ui/making_profile.dart';
import 'package:fitness_app/ui/start_workout.dart';
import 'package:fitness_app/widgets/C_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

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
          height: HeightofScreen * 1,
          width: WidthofScreen * 1,
          color: Colors.black,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 200,
                    width: double.infinity,
                    child: Image.asset('Assets/images/pq5.png'),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: Text(
                      'Day  01-Warm  Up',
                      style: GoogleFonts.markoOne(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 20),
                    child: Text(
                      'Warming up promotes the flow of synovial fluid around joints,which can improve lubrication and freedom of movement',
                      style: GoogleFonts.marcellus(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        child: C_button(
                            name: '60 min',
                            B_color: Color(0xffCA1ED9),
                            ontap: () {}),
                      ),
                      C_button(
                          name: '60 min',
                          B_color: Color(0xffCA1ED9),
                          ontap: () {})
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    height: 120,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Color(0xff1B1919),
                    ),
                    child: Row(
                      children: [
                        Image(image: AssetImage('Assets/images/pq4.png')),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Simple Warm Up \nExercises',
                                style: GoogleFonts.manjari(
                                    color: Colors.white, fontSize: 24)),
                            Text(
                              '30min',
                              style: GoogleFonts.manuale(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                  color: Color(0xffC5BE2C)),
                            )
                          ],
                        ),
                        Icon(
                          Icons.arrow_circle_down,
                          size: 25,
                          color: Colors.white,
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 35,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 100),
                    child: Container(
                      height: 39,
                      width: 150,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color(0xff1B1919)),
                      child: Center(
                        child: Text(
                          ' Workout',
                          style: GoogleFonts.manuale(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 24),
                        ),
                      ),
                    ),
                  ),
                  Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Color(0xff1B1919)))
                ]),
          )),
    );
  }
}
