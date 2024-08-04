import 'package:fitness_app/res/Resources.dart';
import 'package:fitness_app/ui/Goal_screen.dart';
import 'package:fitness_app/widgets/C_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InformationScreen extends StatefulWidget {
  const InformationScreen({super.key});

  @override
  State<InformationScreen> createState() => _InformationScreenState();
}

class _InformationScreenState extends State<InformationScreen> {
  TextEditingController _agecontroller = TextEditingController();
  TextEditingController _weightcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Text(
                'How old are you?',
                style: GoogleFonts.literata(
                    color: whiteColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 24),
              ),
            ),
            Center(
              child: Text(
                'It helps to train your body according to\n                              your age  ',
                style: GoogleFonts.lindenHill(color: whiteColor, fontSize: 20),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
              child: TextFormField(
                controller: _agecontroller,
                decoration: InputDecoration(
                    fillColor: Colors.grey,
                    filled: true,
                    hintText: 'Age',
                    hintStyle: TextStyle(color: Colors.black),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: whiteColor))),
              ),
            ),
            Center(
              child: Text(
                'What’s your weight?',
                style: GoogleFonts.literata(
                    color: whiteColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 24),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
              child: TextFormField(
                controller: _weightcontroller,
                decoration: InputDecoration(
                    fillColor: Colors.grey,
                    filled: true,
                    labelStyle: TextStyle(color: blackColor),
                    hintText: 'Weight',
                    hintStyle: TextStyle(color: blackColor),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: whiteColor))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 200),
              child: C_button(
                  name: 'Next',
                  B_color: blueColor,
                  ontap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (BuildContext Context) => GoalPage()));
                  }),
            ),
            SizedBox(
              height: 60,
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Image(
                  fit: BoxFit.fill,
                  height: 220,
                  width: 200,
                  image: AssetImage('Assets/images/p20.png')),
            ),
          ],
        ),
      ),
    );
  }
}
