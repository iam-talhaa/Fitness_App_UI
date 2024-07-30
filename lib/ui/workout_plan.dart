import 'package:fitness_app/ui/making_profile.dart';
import 'package:fitness_app/ui/start_workout.dart';
import 'package:fitness_app/widgets/C_button.dart';
import 'package:flutter/material.dart';
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
                  C_button(
                      name: '60 min', B_color: Color(0xffCA1ED9), ontap: () {})
                ]),
          )),
    );
  }
}
