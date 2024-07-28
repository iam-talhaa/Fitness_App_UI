import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OnboardScreen extends StatefulWidget {
  const OnboardScreen({super.key});

  @override
  State<OnboardScreen> createState() => _OnboardScreenState();
}

class _OnboardScreenState extends State<OnboardScreen> {
  List<String> subHeading = [
    "Finding strength in every step of the journey ",
    "Create a workout plan",
    "To give you a better experience"
  ];
  List<String> mainHeading = [
    'Meet your Coach',
    'to stay fit',
    'Pushing limits\nsurpassing boundaries'
  ];

  List<String> MyPics = [
    'Assets/images/b1.png',
    'Assets/images/b2.png',
    'Assets/images/b3.png'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView.builder(
            itemCount: 3,
            itemBuilder: (BuildContext context, index) {
              print(index);
              return Container(
                height: MediaQuery.of(context).size.height * 1,
                width: MediaQuery.of(context).size.width * 1,
                decoration:
                    BoxDecoration(color: Color.fromARGB(255, 129, 127, 127)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 50,
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 1 / 2,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(MyPics[index].toString()))),
                    ),
                    Text(
                      subHeading[index].toString(),
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      mainHeading[index].toString(),
                      style: GoogleFonts.abyssinicaSil(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Container(
                              height: 10,
                              width: 28,
                              decoration: BoxDecoration(
                                  color:
                                      index == 0 ? Colors.black : Colors.white,
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Container(
                              height: 10,
                              width: 28,
                              decoration: BoxDecoration(
                                  color:
                                      index == 1 ? Colors.black : Colors.white,
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Container(
                              height: 10,
                              width: 28,
                              decoration: BoxDecoration(
                                  color:
                                      index == 2 ? Colors.black : Colors.white,
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              );
            }));
  }
}
