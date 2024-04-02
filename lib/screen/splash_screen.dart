import 'package:flutter/material.dart';
import 'package:mabuhay/resource/styles/colors.dart';
import 'package:mabuhay/resource/textstyle/edmondsans/edmondsans_bold.dart';
import 'package:mabuhay/resource/textstyle/edmondsans/edmondsans_normal.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

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
                "Made with love from Aotearoa.\nCreated by Regionthree Technologies\nversion 1.0.0",
                textAlign: TextAlign.center,
                style: EdmondsansNormal.white.h6,
              ),
            ),
            const SizedBox(height: 20)
          ],
        ),
      ),
    );
  }
}
