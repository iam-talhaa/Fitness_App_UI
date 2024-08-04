import 'package:fitness_app/res/Resources.dart';
import 'package:fitness_app/ui/information_Screen.dart';
import 'package:fitness_app/widgets/C_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class IntroductionScreen extends StatefulWidget {
  const IntroductionScreen({super.key});

  @override
  State<IntroductionScreen> createState() => _IntroductionScreenState();
}

class _IntroductionScreenState extends State<IntroductionScreen> {
  int isSelected = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: blackColor,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Text(
                'Tell us About Yourself?',
                style: GoogleFonts.literata(
                    color: whiteColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 24),
              ),
            ),
            Center(
              child: Text(
                'To give you a better experience',
                style: GoogleFonts.lindenHill(color: whiteColor, fontSize: 20),
              ),
            ),
            Center(
                child: GestureDetector(
              onTap: () {
                setState(() {
                  isSelected = 1;
                  print(isSelected);
                });
              },
              child: Container(
                height: 220,
                width: 220,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('Assets/images/profile1.png')),
                    shape: BoxShape.circle,
                    border: Border.all(
                        color: isSelected == 2 ? blackColor : redColor,
                        width: 6)),
              ),
            )),
            Center(
                child: GestureDetector(
              onTap: () {
                setState(() {
                  isSelected = 2;
                });
                print(isSelected);
                print(Color);
              },
              child: Container(
                height: 220,
                width: 220,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('Assets/images/profile2.png')),
                    shape: BoxShape.circle,
                    border: Border.all(
                        color: isSelected == 2 ? redColor : Colors.black,
                        width: 6)),
              ),
            )),
            SizedBox(
              height: 20,
            ),
            C_button(
                name: "Next",
                B_color: blueColor,
                ontap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) => InformationScreen()));
                }),
            Container(
              child: Padding(
                padding: const EdgeInsets.only(right: 130, left: 0),
                child: Transform(
                  transform: Matrix4.identity()..rotateZ(45 * 3.1415927 / 180),
                  child: Divider(
                    thickness: 6.0,
                    color: whiteColor,
                  ),
                ),
              ),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.only(right: 130, left: 0),
                child: Transform(
                  transform: Matrix4.identity()..rotateZ(45 * 3.1415927 / 180),
                  child: Divider(
                    thickness: 6.0,
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
