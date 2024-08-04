import 'package:fitness_app/res/Resources.dart';
import 'package:fitness_app/ui/making_profile.dart';
import 'package:fitness_app/widgets/C_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_analog_clock/flutter_analog_clock.dart';
import 'package:flutter_timer_countdown/flutter_timer_countdown.dart';
import 'package:flutter/cupertino.dart';

class Workout_time extends StatefulWidget {
  const Workout_time({super.key});

  @override
  State<Workout_time> createState() => _Workout_timeState();
}

class _Workout_timeState extends State<Workout_time> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: greyColor,
            title: Text(
              'Workout Time',
              style: TextStyle(fontWeight: FontWeight.w500, color: whiteColor),
            ),
            centerTitle: true,
          ),
          backgroundColor: blackColor,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 250,
                    decoration:
                        BoxDecoration(shape: BoxShape.circle, color: greyColor),
                    width: double.infinity,
                    child: Center(
                      child: TimerCountdown(
                        descriptionTextStyle: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: whiteColor),
                        timeTextStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                            color: whiteColor),
                        format: CountDownTimerFormat.hoursMinutesSeconds,
                        endTime: DateTime.now().add(
                          Duration(
                            minutes: 30,
                            seconds: 00,
                          ),
                        ),
                        onEnd: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (BuildContext Context) =>
                                  MakingProfile()));
                        },
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 80, vertical: 30),
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (BuildContext Context) => MakingProfile()));
                  },
                  child: Container(
                    height: 50,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: greyColor),
                    child: Center(
                      child: Text(
                        'Finish ',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                            color: whiteColor),
                      ),
                    ),
                  ),
                ),
              )
            ],
          )),
    );
  }
}
