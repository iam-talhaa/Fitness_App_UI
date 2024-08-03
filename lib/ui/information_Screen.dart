import 'package:fitness_app/res/Resources.dart';
import 'package:fitness_app/widgets/C_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InformationScreen extends StatefulWidget {
  const InformationScreen({super.key});

  @override
  State<InformationScreen> createState() => _InformationScreenState();
}

class _InformationScreenState extends State<InformationScreen> {
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
                decoration: InputDecoration(
                    hintText: 'Age',
                    hintStyle: TextStyle(color: whiteColor),
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
                decoration: InputDecoration(
                    hintText: 'Weight',
                    hintStyle: TextStyle(color: whiteColor),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: whiteColor))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 200),
              child: C_button(name: 'Next', B_color: blueColor, ontap: () {}),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Image(
                  fit: BoxFit.fill,
                  height: 220,
                  width: 200,
                  image: AssetImage('Assets/images/p20.png')),
            )
          ],
        ),
      ),
    );
  }
}
