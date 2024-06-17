import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mabuhay/resource/textstyle/inter/inter_normal.dart';

import '../../resource/components/button/fill_button.dart';
import '../../resource/components/button/outline_button.dart';
import '../../resource/components/header/common_header.dart';
import '../../resource/components/input/input_text.dart';
import '../../resource/styles/colors.dart';
import '../../resource/textstyle/sfprodisplay/sfprodisplay_bold.dart';
import '../../resource/textstyle/sfprodisplay/sfprodisplay_normal.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  TextEditingController emailController = TextEditingController();
  bool _isAgree = false;
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
              "Register",
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
              hint: "Name",
            ),
            const SizedBox(height: 10),
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
            InputText(
              width: double.infinity,
              height: 50,
              textEditingController: emailController,
              hint: "Confirm Password",
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 35,
                  width: 35,
                  child: FittedBox(
                    fit: BoxFit.contain,
                    child: CupertinoSwitch(
                      value: _isAgree,
                      activeColor: foundationGreenD1,
                      onChanged: (bool value) {
                        setState(() {
                          _isAgree = value;
                        });
                      },
                    ),
                  ),
                ),
                const SizedBox(width: 5),
                Text(
                  "I accept ",
                  style: InterNormal.gray04.h5,
                ),
                Text(
                  "Terms of Service",
                  style: InterNormal.foundationGreenD2.h5,
                ),
              ],
            ),
            const Spacer(),
            ButtonFill(
              width: double.infinity,
              text: "Continue",
              backGroundColor: foundationGreenD2,
            ),
            const SizedBox(height: 10),
            ButtonOutline(
              width: double.infinity,
              text: "Back",
              backGroundColor: foundationGreenD2,
              onClick: () {
                Navigator.pop(context);
              },
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
