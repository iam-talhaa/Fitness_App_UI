import 'package:flutter/material.dart';

class OnboardScreen extends StatefulWidget {
  const OnboardScreen({super.key});

  @override
  State<OnboardScreen> createState() => _OnboardScreenState();
}

class _OnboardScreenState extends State<OnboardScreen> {
  List<String> subHeading = [
    "Finding strength in every step of the journey ",
    "Create a workout plan",
    ""
  ];
  List<String> mainHeading = [
    'Meet your Coach',
    'to stay fit',
    'Pushing limits\nsurpassing boundaries'
  ];

  List<String> MyPics = [
    'Assets/images/P1.png',
    'Assets/images/p2b.png',
    'Assets/images/p3.png'
  ];

  @override
  Widget build(BuildContext context) {
    print('Testing');
    print('Testing');
    return Scaffold(
        body: PageView.builder(
            itemCount: 3,
            itemBuilder: (BuildContext context, index) {
              return Container(
                height: MediaQuery.of(context).size.height * 1,
                width: MediaQuery.of(context).size.width * 1,
                decoration: BoxDecoration(color: Colors.black),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 50,
                    ),
                    Text(
                      subHeading[index].toString(),
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                    Text(
                      mainHeading[index].toString(),
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Color(0xffFFFFFF)),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 1 / 3,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(MyPics[index]))),
                    )
                  ],
                ),
              );
            }));
  }
}
