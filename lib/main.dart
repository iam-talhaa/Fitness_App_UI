import 'package:fitness_app/ui/making_profile.dart';
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
      home: WorkoutPlan(),
    );
  }
}
