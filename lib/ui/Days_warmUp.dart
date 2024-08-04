import 'package:fitness_app/ui/Workout_time.dart';
import 'package:fitness_app/ui/making_profile.dart';
import 'package:fitness_app/widgets/C_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class Days_warmUp extends StatefulWidget {
  const Days_warmUp({super.key});

  @override
  State<Days_warmUp> createState() => _Days_warmUpState();
}

class _Days_warmUpState extends State<Days_warmUp> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(
                      Icons.arrow_back_sharp,
                      color: Colors.white,
                    )),
                IconButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (BuildContext context) => MakingProfile()));
                    },
                    icon: const Icon(
                      Icons.home,
                      color: Colors.white,
                    ))
              ],
            ),
            Text(
              'Day 01-Warm Up',
              style: GoogleFonts.markoOne(fontSize: 20, color: Colors.white),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              'Warming up promotes the flow of synovial\nfluid around joints,which can improve \nlubrication and freedom of movement',
              style: GoogleFonts.marcellus(fontSize: 15, color: Colors.white),
            ),
            const SizedBox(
              height: 10,
            ),
            C_button(name: "350 cal", B_color: Color(0xffDA2BEA), ontap: () {}),
            const SizedBox(
              height: 10,
            ),
            const Image(height: 350, image: AssetImage('Assets/images/d1.png')),
            const SizedBox(
              height: 10,
            ),
            C_button(
                name: "Start",
                B_color: const Color(0xffDA2BEA),
                ontap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext Context) => Workout_time()));
                }),
          ],
        ),
      ),
    );
  }
}
