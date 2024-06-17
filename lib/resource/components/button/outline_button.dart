import 'package:flutter/material.dart';
import 'package:mabuhay/resource/styles/colors.dart';
import 'package:mabuhay/resource/textstyle/inter/inter_normal.dart';

class ButtonOutline extends StatefulWidget {
  ButtonOutline({
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
  State<ButtonOutline> createState() => _ButtonOutlineState();
}

class _ButtonOutlineState extends State<ButtonOutline> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onClick,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(15),
          border: Border.all(
            color: foundationGreenD2, // Set the border color here
            width: 2, // Set the border width
          ),
        ),
        height: widget.height,
        width: widget.width,
        child: Center(
          child: Text(
            widget.text,
            style: InterNormal.foundationGreenD2.h4,
          ),
        ),
      ),
    );
  }
}
