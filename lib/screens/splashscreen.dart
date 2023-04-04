import 'dart:async';
import 'package:flutter/material.dart';
import '../resc/color.dart';
import '../resc/textstyle.dart';
import 'homepage.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const MyApp(),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bmiCalcBG,
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 200,
            ),
            Container(
                height: 110,
                width: 110,
                child: Stack(
                  children: [
                    SizedBox(
                        height: 110,
                        width: 110,
                        child: CircularProgressIndicator(
                          color: colorSliderActive,
                        )),
                    Center(
                        child: Icon(
                          Icons.health_and_safety_outlined,
                          size: 80,
                          color: colorPink,
                        )),
                  ],
                )),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "BMI Calculator",
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
            const SizedBox(
              height: 250,
            ),
            Container(
              height: 70,
              width: 250,
              decoration: containDeco,
              child: Center(
                child: Text(
                  "Check your health quickly.",
                  style: TextStyle(fontSize: 15, color: colorWhite),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}