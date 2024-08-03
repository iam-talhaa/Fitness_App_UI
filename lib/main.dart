import 'package:fitness_app/ui/Goal_screen.dart';
import 'package:fitness_app/ui/information_Screen.dart';

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
      home: GoalPage(),
    );
  }
}
