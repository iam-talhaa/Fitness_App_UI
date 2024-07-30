import 'dart:async';

import 'package:fitness_app/ui/onboarding_screen/onBoradingScreen.dart';
import 'package:flutter/material.dart';

class SplashService {
  void Login(BuildContext context) {
    Timer(
        Duration(seconds: 5),
        () => Navigator.of(context).push(MaterialPageRoute(
            builder: (BuildContext context) => OnboardScreen())));
  }
}
