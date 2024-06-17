import 'package:flutter/material.dart';
import 'package:mabuhay/resource/styles/colors.dart';
import 'package:mabuhay/resource/textstyle/inter/inter_normal.dart';

class ButtonFill extends StatefulWidget {
  ButtonFill({
    super.key,
    this.backGroundColor = white,
    this.height = 50,
    this.width = 250,
    this.text = "",
    this.onClick,
  });
  Color backGroundColor;
  double width;
  double height;
  String text;
  Function()? onClick;
  @override
  State<ButtonFill> createState() => _ButtonFillState();
}

class _ButtonFillState extends State<ButtonFill> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onClick,
      child: Container(
        decoration: BoxDecoration(
          color: widget.backGroundColor,
          borderRadius: BorderRadius.circular(15),
        ),
        height: widget.height,
        width: widget.width,
        child: Center(
          child: Text(
            widget.text,
            style: InterNormal.white.h4,
          ),
        ),
      ),
    );
  }
}
