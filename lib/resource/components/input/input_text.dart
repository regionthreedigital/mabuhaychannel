import 'package:flutter/material.dart';
import 'package:mabuhay/resource/textstyle/inter/inter_normal.dart';

import '../../styles/colors.dart';

class InputText extends StatefulWidget {
  InputText({
    super.key,
    this.textEditingController,
    this.hint = "",
    this.height = 50,
    this.width = 250,
  });
  TextEditingController? textEditingController;
  String hint;
  double height;
  double width;
  @override
  State<InputText> createState() => _InputTextState();
}

class _InputTextState extends State<InputText> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: gray04, // Set the border color here
          width: 1, // Set the border width
        ),
      ),
      height: widget.height,
      width: widget.width,
      child: TextFormField(
        controller: widget.textEditingController,
        cursorColor: foundationGreenD2,
        style: InterNormal.gray04.h6,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.only(
            left: 15,
            top: 2,
            bottom: 5,
          ),
          border: UnderlineInputBorder(
            borderRadius: BorderRadius.circular(50),
            borderSide: BorderSide.none,
          ),
          hintText: widget.hint,
          filled: true,
          fillColor: white,
          hintStyle: InterNormal.gray04.h6,
        ),
      ),
    );
  }
}
