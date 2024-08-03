import 'package:fitness_app/res/Resources.dart';
import 'package:fitness_app/widgets/C_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GoalPage extends StatefulWidget {
  const GoalPage({super.key});

  @override
  State<GoalPage> createState() => _GoalPageState();
}

class _GoalPageState extends State<GoalPage> {
  List<String> goals = [
    "Lose Weight",
    "Gain Weight",
    "Git Fitter",
    "Learn Basic",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blackColor,
      body: Column(
        children: [
          Image(image: AssetImage("Assets/images/p21.png")),
          Center(
            child: Text(
              'What’s your weight?',
              style: GoogleFonts.literata(
                  color: whiteColor, fontWeight: FontWeight.bold, fontSize: 24),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Container(
            height: 70,
            width: 200,
            decoration:
                BoxDecoration(border: Border.all(width: 2, color: yellowColor)),
            child: ListView.builder(
                itemCount: goals.length,
                itemBuilder: (BuildContext context, index) {
                  return Center(
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 6),
                      child: Text(
                        goals[index].toString(),
                        style: TextStyle(
                            color: whiteColor,
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  );
                }),
          ),
          SizedBox(
            height: 70,
          ),
          C_button(name: "Next", B_color: pinkColor, ontap: () {})
        ],
      ),
    );
  }
}
