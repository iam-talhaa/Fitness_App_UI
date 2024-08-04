import 'package:fitness_app/res/Resources.dart';
import 'package:fitness_app/services/Services.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

// import 'package:loading_animation_widget/loading_animation_widget.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  SplashService splashService = SplashService();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    splashService.Login(context);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: blackColor,
          child: Stack(
            clipBehavior: Clip.none,
            fit: StackFit.loose,
            children: [
              Image(image: AssetImage("Assets/images/s_pic.png")),
              Positioned(
                  left: 45,
                  top: 450,
                  child: Text(
                    'Finding strength in every step of the journey',
                    style: TextStyle(fontSize: 15, color: whiteColor),
                  )),
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(top: 550, right: 0, left: 150),
                  child: Divider(
                    thickness: 4.0,
                  ),
                ),
              ),
              Positioned(
                  left: 150,
                  top: 510,
                  child: GestureDetector(
                    onTap: () {},
                    child: Text('start your Journey',
                        style: GoogleFonts.roboto(
                          color: whiteColor,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        )),
                  )),
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(top: 500, right: 130, left: 0),
                  child: Transform(
                    transform: Matrix4.identity()
                      ..rotateZ(45 * 3.1415927 / 180),
                    child: Divider(
                      thickness: 6.0,
                      color: greyColor,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
