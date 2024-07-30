// ignore: duplicate_ignore
// ignore: unused_import
// ignore_for_file: unused_import

import 'package:fitness_app/ui/SplashScreen.dart';
import 'package:fitness_app/ui/making_profile.dart';
import 'package:fitness_app/ui/onboarding_screen/onBoradingScreen.dart';
import 'package:fitness_app/ui/start_workout.dart';
import 'package:fitness_app/ui/workout_plan.dart';
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
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MakingProfile(),
    );
  }
}
