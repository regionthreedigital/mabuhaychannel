import 'package:flutter/material.dart';

import '../../resource/components/svg_pic.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    final double appBarHeight = AppBar().preferredSize.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: appBarHeight, left: 15, right: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SvgPic(
                  asset: "assets/icons/common/arrow_left_large.svg",
                  width: 24,
                ),
                SizedBox(
                  width: width * .275,
                ),
                Text(
                  "mabuhay",
                  style: EdmondsansBold.foundationGreenD1.h1,
                )
              ],
            ),
            Text(
              "Sign in",
              style: EdmondsansBold.foundationGreenD1.h3,
            ),
          ],
        ),
      ),
    );
  }
}
