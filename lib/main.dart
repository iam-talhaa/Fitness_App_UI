import 'package:fitness_app/ui/Auth/LoginScreen.dart';
import 'package:fitness_app/ui/Goal_screen.dart';
import 'package:fitness_app/ui/SplashScreen.dart';
import 'package:fitness_app/ui/Workout_time.dart';
import 'package:fitness_app/ui/information_Screen.dart';
import 'package:fitness_app/ui/intoroduction_Screen.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(Fitness());
}

class Fitness extends StatefulWidget {
  const Fitness({super.key});

  @override
  State<Fitness> createState() => _FitnessState();
}

class _FitnessState extends State<Fitness> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    );
  }
}
