import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mabuhay/resource/styles/colors.dart';
import 'package:mabuhay/resource/textstyle/edmondsans/edmondsans_bold.dart';
import 'package:mabuhay/resource/textstyle/edmondsans/edmondsans_normal.dart';
import 'package:mabuhay/screen/home/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  //const SplashScreen({super.key});

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  startTimer() async {
    var duration = const Duration(milliseconds: 1500);
    return Timer(duration, route);
  }

  route() {
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const HomePageScreen(),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: foundationGreenD2,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(),
            Center(
              child: Text("mabuhay", style: EdmondsansBold.white.large),
            ),
            const Spacer(),
            Center(
              child: Text(
                "Made with love from Aotearoa.\nCreated by regionthreeditigal.com\nversion 1.0.0",
                textAlign: TextAlign.center,
                style: EdmondsansNormal.white.h5,
              ),
            ),
            const SizedBox(height: 20)
          ],
        ),
      ),
    );
  }
}
