import 'package:fitness_app/ui/onboarding_screen/onBoradingScreen.dart';
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
      home: OnboardScreen(),
    );
  }
}
