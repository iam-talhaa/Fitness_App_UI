import 'package:analog_clock/analog_clock.dart';
import 'package:fitness_app/res/Resources.dart';
import 'package:flutter/material.dart';
import 'package:simple_count_down_timer/simple_count_down_timer.dart' as timer;

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        AnalogClock(
          decoration: BoxDecoration(
              border: Border.all(width: 2.0, color: Colors.black),
              color: Colors.transparent,
              shape: BoxShape.circle),
          width: 150.0,
          isLive: true,
          hourHandColor: Colors.black,
          minuteHandColor: Colors.black,
          showSecondHand: false,
          numberColor: Colors.black87,
          showNumbers: true,
          showAllNumbers: false,
          textScaleFactor: 1.4,
          showTicks: false,
          showDigitalClock: false,
          datetime: DateTime(2019, 1, 1, 9, 12, 15),
        )
      ],
    ));
  }
}
