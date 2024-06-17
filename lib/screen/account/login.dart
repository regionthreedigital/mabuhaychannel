import 'package:flutter/material.dart';
import 'package:mabuhay/resource/textstyle/inter/inter_normal.dart';

import '../../resource/components/button/fill_button.dart';
import '../../resource/components/button/outline_button.dart';
import '../../resource/components/header/common_header.dart';
import '../../resource/components/input/input_text.dart';
import '../../resource/styles/colors.dart';
import '../../resource/textstyle/sfprodisplay/sfprodisplay_bold.dart';
import '../../resource/textstyle/sfprodisplay/sfprodisplay_normal.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final double appBarHeight = AppBar().preferredSize.height;
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: appBarHeight, left: 15, right: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CommonHeader(),
            SizedBox(height: height * .2),
            Text(
              "Sign in",
              style: SFProDisplayBold.foundationGreenD1.h2,
            ),
            const SizedBox(height: 15),
            Text(
              "Over 200+ Pinoy services in our database",
              style: SFProDisplayNormal.gray04.h4,
            ),
            Text(
              "that can help with what you need.",
              style: SFProDisplayNormal.gray04.h4,
            ),
            const SizedBox(height: 20),
            InputText(
              width: double.infinity,
              height: 50,
              textEditingController: emailController,
              hint: "Email",
            ),
            const SizedBox(height: 10),
            InputText(
              width: double.infinity,
              height: 50,
              textEditingController: emailController,
              hint: "Password",
            ),
            const SizedBox(height: 10),
            Text(
              "Forgot your password?",
              style: InterNormal.foundationGreenD2.h5,
            ),
            const Spacer(),
            ButtonFill(
              width: double.infinity,
              text: "Sign In",
              backGroundColor: foundationGreenD2,
            ),
            const SizedBox(height: 10),
            ButtonOutline(
              width: double.infinity,
              text: "Register",
              backGroundColor: foundationGreenD2,
              onClick: () {
                Navigator.pushNamed(context, "/register");
              },
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
