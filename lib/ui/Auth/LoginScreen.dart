import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        clipBehavior: Clip.none,
        fit: StackFit.loose,
        children: [
          Image(
              width: MediaQuery.of(context).size.width * 1 / 3,
              image: AssetImage('Assets/images/L1.png')),
          Positioned(
            top: 5,
            left: 129,
            child: Container(
              child: Image(
                  width: MediaQuery.of(context).size.width * 1 / 3,
                  image: AssetImage('Assets/images/L2.png')),
            ),
          ),
          Positioned(
            top: -50,
            left: 250,
            child: Image(
                width: MediaQuery.of(context).size.width * 1 / 3,
                image: AssetImage('Assets/images/L3.png')),
          ),
          Positioned(
            left: 130,
            top: 280,
            child: Text(
              'Welcome \n Back',
              style: GoogleFonts.abyssinicaSil(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  color: Colors.white),
            ),
          ),
          Positioned(
            left: 20,
            top: 400,
            child: Container(
              height: 200,
              width: 300,
              // color: Colors.amber,
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                        hintText: "Email",
                        hintStyle: TextStyle(color: Colors.white),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white))),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        hintText: "Password",
                        hintStyle: TextStyle(color: Colors.white),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white))),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
